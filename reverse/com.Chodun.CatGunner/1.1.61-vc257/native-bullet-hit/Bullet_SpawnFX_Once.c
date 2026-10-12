/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b66e24, Ghidra VA 02c66e24. */

void Bullet_SpawnFX_Once(long param_1)

{
  if (*(char *)(param_1 + 0xdc) != '\0') {
    return;
  }
  *(undefined1 *)(param_1 + 0xdc) = 1;
  Bullet_SpawnFX();
  return;
}

