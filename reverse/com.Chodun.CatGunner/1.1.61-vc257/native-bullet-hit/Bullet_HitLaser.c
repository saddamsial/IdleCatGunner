/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b667f4, Ghidra VA 02c667f4. */

void Bullet_HitLaser(undefined4 param_1,undefined4 param_2,undefined4 param_3,long param_4,
                    undefined8 param_5,ulong param_6,undefined4 param_7)

{
  char cVar1;
  undefined8 uVar2;
  undefined8 uStack_90;
  undefined8 uStack_88;
  undefined8 uStack_80;
  undefined8 uStack_78;
  undefined8 uStack_70;
  undefined8 uStack_68;
  undefined8 uStack_60;
  undefined8 uStack_58;
  
  if ((bRam000000000625c24f & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5d338);
    func_0x029f5a50(PTR_DAT_05e639e0);
    func_0x029f5a50(PTR_DAT_05e5d368);
    bRam000000000625c24f = 1;
  }
  if ((param_6 & 1) == 0) {
    Bullet_SpawnFX(param_1,param_2,param_3,param_4);
    Bullet_DieAndWait(param_4);
    return;
  }
  if (*(long *)(param_4 + 0xd0) != 0) {
    func_0x04282ae4(*(long *)(param_4 + 0xd0),param_7,*(undefined8 *)PTR_DAT_05e639e0);
    uStack_68 = *(undefined8 *)(param_4 + 0x30);
    uStack_70 = *(undefined8 *)(param_4 + 0x28);
    uStack_58 = *(undefined8 *)(param_4 + 0x40);
    uStack_60 = *(undefined8 *)(param_4 + 0x38);
    uVar2 = *(undefined8 *)(param_4 + 0x48);
    cVar1 = *(char *)(param_4 + 0x24);
    if (*(int *)(*(long *)PTR_DAT_05e5d338 + 0xe4) == 0) {
      func_0x029f5bd0();
    }
    uStack_88 = uStack_68;
    uStack_90 = uStack_70;
    uStack_78 = uStack_58;
    uStack_80 = uStack_60;
    Gamemanager_Damage_Collider_0x6000085
              (param_1,param_2,param_3,param_5,&uStack_90,uVar2,cVar1 != '\0',0);
    if (*(char *)(param_4 + 0xdc) == '\0') {
      *(undefined1 *)(param_4 + 0xdc) = 1;
      Bullet_SpawnFX(param_1,param_2,param_3,param_4);
    }
    if (**(long **)(*(long *)PTR_DAT_05e5d368 + 0xb8) != 0) {
      if (*(int *)(**(long **)(*(long *)PTR_DAT_05e5d368 + 0xb8) + 0x20) == 5) {
        Bullet_DieAndWait(param_4);
      }
      return;
    }
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

