/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b66c64, Ghidra VA 02c66c64. */

void Bullet_HitBlastSniper
               (undefined4 param_1,undefined4 param_2,undefined4 param_3,long param_4,long param_5,
               uint param_6,undefined4 param_7)

{
  undefined *puVar1;
  uint uVar2;
  long lVar3;
  ulong uVar4;
  undefined8 uVar5;
  
  if ((bRam000000000625c251 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5d560);
    func_0x029f5a50(PTR_DAT_05e591c0);
    bRam000000000625c251 = 1;
  }
  if (*(char *)(param_4 + 0xcc) != '\0') {
    Bullet_HitPierce(param_1,param_2,param_3,param_4,param_5,param_6 & 1,param_7);
    return;
  }
  uVar2 = 1;
  *(undefined1 *)(param_4 + 0xcc) = 1;
  if ((param_6 & 1) != 0) {
    if (param_5 == 0) {
LAB_02c66e20:
                    /* WARNING: Subroutine does not return */
      Throw_NullReference_Wrapper();
    }
    lVar3 = func_0x02fe5f2c(param_5,*(undefined8 *)PTR_DAT_05e5d560);
    puVar1 = PTR_DAT_05e591c0;
    if (*(int *)(*(long *)PTR_DAT_05e591c0 + 0xe4) == 0) {
      func_0x029f5bd0(*(long *)PTR_DAT_05e591c0);
    }
    uVar4 = Object_op_Inequality_0x6000ded(lVar3,0,0);
    if ((uVar4 & 1) != 0) {
      if (lVar3 == 0) goto LAB_02c66e20;
      uVar5 = *(undefined8 *)(lVar3 + 0x20);
      if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
        func_0x029f5bd0();
      }
      uVar4 = Object_op_Inequality_0x6000ded(uVar5,0,0);
      if ((uVar4 & 1) != 0) {
        lVar3 = *(long *)(lVar3 + 0x20);
        if (lVar3 == 0) goto LAB_02c66e20;
        if (*(char *)(lVar3 + 0x24) == '\0') {
          uVar2 = InfVal_op_GreaterThanOrEqual_0x6000081(param_4 + 0x28,lVar3 + 0x28,0);
          uVar2 = uVar2 ^ 1;
          goto LAB_02c66d94;
        }
      }
    }
    uVar2 = 1;
  }
LAB_02c66d94:
  Bullet_Explode(param_1,param_2,param_3,param_4);
  if (*(char *)(param_4 + 0xdc) == '\0') {
    *(undefined1 *)(param_4 + 0xdc) = 1;
    Bullet_SpawnFX_0x6000a33(param_1,param_2,param_3,param_4);
  }
  if ((uVar2 & 1) == 0) {
    return;
  }
  Bullet_DieAndWait_0x6000a31(param_4);
  return;
}

