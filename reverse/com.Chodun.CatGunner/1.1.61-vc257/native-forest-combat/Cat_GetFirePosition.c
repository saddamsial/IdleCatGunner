/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b41b8c, Ghidra VA 02c41b8c. */

undefined1  [16] Cat_GetFirePosition(undefined1 param_1 [16],float param_2,long param_3)

{
  undefined *puVar1;
  uint uVar2;
  long lVar3;
  float fVar4;
  float extraout_s0;
  undefined4 uVar6;
  undefined4 extraout_var;
  undefined8 uVar7;
  undefined8 extraout_var_00;
  undefined1 auVar5 [16];
  
  if ((bRam000000000625c0b8 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e631d8);
    bRam000000000625c0b8 = 1;
  }
  if ((*(long *)(param_3 + 0xf0) == 0) ||
     (lVar3 = *(long *)(*(long *)(param_3 + 0xf0) + 0x18), lVar3 == 0)) {
    Cat_CalcBulletSpawnPos_0x6000765(param_3);
    fVar4 = extraout_s0;
    uVar6 = extraout_var;
    uVar7 = extraout_var_00;
LAB_02c41c60:
    auVar5._4_4_ = uVar6;
    auVar5._0_4_ = fVar4;
    auVar5._8_8_ = uVar7;
    return auVar5;
  }
  uVar2 = Random_Range_0x6000ba7(0,lVar3,0);
  lVar3 = *(long *)(param_3 + 0xf0);
  if (lVar3 != 0) {
    if (*(uint *)(lVar3 + 0x18) <= uVar2) {
                    /* WARNING: Subroutine does not return */
      Throw_Index_Wrapper();
    }
    lVar3 = *(long *)(lVar3 + (long)(int)uVar2 * 8 + 0x20);
    if (lVar3 != 0) {
      fVar4 = (float)Transform_get_position_0x6000f4d(lVar3,0);
      puVar1 = PTR_DAT_05e631d8;
      lVar3 = *(long *)PTR_DAT_05e631d8;
      if (*(int *)(lVar3 + 0xe4) == 0) {
        func_0x029f5bd0();
        lVar3 = *(long *)puVar1;
      }
      fVar4 = fVar4 + ((2.0 - param_2) / *(float *)(*(long *)(lVar3 + 0xb8) + 0x3c)) *
                      *(float *)(*(long *)(lVar3 + 0xb8) + 0x38);
      uVar6 = 0;
      uVar7 = 0;
      goto LAB_02c41c60;
    }
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

