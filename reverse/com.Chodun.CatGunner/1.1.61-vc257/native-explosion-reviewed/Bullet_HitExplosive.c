/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b66c1c, Ghidra VA 02c66c1c. */

void Bullet_HitExplosive(undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined8 param_4
                        )

{
  Bullet_Explode();
  Bullet_SpawnFX_0x6000a33(param_1,param_2,param_3,param_4);
  Bullet_DieAndWait_0x6000a31(param_4);
  return;
}

