"""Sign a Unity APK with the existing release key and r77 upgrade lineage."""
import argparse
import hashlib
import os
from pathlib import Path
import subprocess


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("input", type=Path)
    parser.add_argument("output", type=Path)
    parser.add_argument("--android-player", type=Path, default=Path(
        "/Applications/Unity/Hub/Editor/6000.4.10f1/PlaybackEngines/AndroidPlayer"))
    args = parser.parse_args()
    if args.input.resolve() == args.output.resolve() or args.output.exists():
        parser.error("Use a new output path; existing artifacts are never overwritten.")
    workspace = Path(__file__).resolve().parents[2]
    signing = workspace / "Build/.local-signing"
    release = signing / "release"
    env = os.environ.copy()
    env["PENGUIN_OLD_SIGNING_PASS"] = (signing / "keystore-password.txt").read_text().strip()
    env["PENGUIN_RELEASE_SIGNING_PASS"] = (release / "store-password.txt").read_text().strip()
    java = args.android_player / "OpenJDK/bin/java"
    jar = args.android_player / "SDK/build-tools/36.0.0/lib/apksigner.jar"
    command = [str(java), "-jar", str(jar), "sign", "--out", str(args.output),
               "--lineage", str(release / "r77-to-release.lineage"),
               "--rotation-min-sdk-version", "28", "--v4-signing-enabled", "false"]
    for index, (key, alias, password_name) in enumerate([
        (signing / "CatGunner-Recovery-Test.jks", "catgunner-recovery-test", "PENGUIN_OLD_SIGNING_PASS"),
        (release / "PenguinExpedition-Release.jks", "penguin-expedition-release", "PENGUIN_RELEASE_SIGNING_PASS"),
    ]):
        if index:
            command.append("--next-signer")
        command.extend(["--ks", str(key), "--ks-key-alias", alias,
                        "--ks-pass", "env:" + password_name,
                        "--key-pass", "env:" + password_name])
    command.append(str(args.input))
    subprocess.run(command, env=env, check=True, capture_output=True)
    verification = subprocess.run(
        [str(java), "-jar", str(jar), "verify", "--verbose", "--print-certs", str(args.output)],
        check=True, capture_output=True, text=True).stdout
    expected = "bc71bbac3671d2372ec61e6103e23e8b86c435e269999baf14d53097f4d37056"
    if expected not in verification or "Verified using v3 scheme (APK Signature Scheme v3): true" not in verification:
        raise RuntimeError("Unexpected release certificate or missing v3 upgrade signature.")
    digest = hashlib.sha256(args.output.read_bytes()).hexdigest()
    args.output.with_suffix(args.output.suffix + ".sha256").write_text(digest + "  " + args.output.name + "\n")
    print("Verified release signature and upgrade lineage; SHA256: " + digest)


if __name__ == "__main__":
    main()
