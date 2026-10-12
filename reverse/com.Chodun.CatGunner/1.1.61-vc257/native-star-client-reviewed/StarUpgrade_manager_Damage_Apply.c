/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b6da2c, Ghidra VA 02c6da2c. */

void StarUpgrade_manager_Damage_Apply(undefined8 *param_1,undefined8 *param_2,uint param_3)

{
  undefined *puVar1;
  long lVar2;
  undefined8 uStack_d0;
  undefined8 uStack_c8;
  undefined8 uStack_c0;
  undefined8 uStack_b8;
  undefined8 uStack_b0;
  undefined8 uStack_a8;
  undefined8 uStack_a0;
  undefined8 uStack_98;
  undefined8 uStack_90;
  undefined8 uStack_88;
  undefined8 uStack_80;
  undefined8 uStack_78;
  undefined8 uStack_70;
  undefined8 uStack_68;
  undefined8 uStack_60;
  undefined8 uStack_58;
  undefined8 uStack_50;
  undefined8 uStack_48;
  undefined8 uStack_40;
  undefined8 uStack_38;
  
  if ((bRam000000000625c2ab & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5e058);
    bRam000000000625c2ab = 1;
  }
  puVar1 = PTR_DAT_05e5e058;
  uStack_68 = 0;
  uStack_70 = 0;
  uStack_58 = 0;
  uStack_60 = 0;
  uStack_48 = 0;
  uStack_50 = 0;
  uStack_38 = 0;
  uStack_40 = 0;
  if ((int)param_3 < 1) {
    uStack_c8 = param_2[1];
    uStack_d0 = *param_2;
    uStack_b8 = param_2[3];
    uStack_c0 = param_2[2];
  }
  else {
    if (*(int *)(*(long *)PTR_DAT_05e5e058 + 0xe4) == 0) {
      func_0x029f5bd0();
    }
    StarUpgrade_manager_EnsureTables();
    lVar2 = *(long *)(*(long *)(*(long *)puVar1 + 0xb8) + 0x20);
    if (lVar2 == 0) {
                    /* WARNING: Subroutine does not return */
      Throw_NullReference_Wrapper();
    }
    if (0x13 < (int)param_3) {
      param_3 = 0x14;
    }
    if (*(uint *)(lVar2 + 0x18) <= param_3) {
                    /* WARNING: Subroutine does not return */
      Throw_Index_Wrapper();
    }
    InfVal_op_Multiply_0x6000074(&uStack_90,param_2,lVar2 + (ulong)param_3 * 0x20 + 0x20,0);
    uStack_48 = uStack_88;
    uStack_50 = uStack_90;
    uStack_38 = uStack_78;
    uStack_40 = uStack_80;
    InfVal_op_Implicit_0x600003f(&uStack_b0,100,0);
    uStack_68 = uStack_a8;
    uStack_70 = uStack_b0;
    uStack_58 = uStack_98;
    uStack_60 = uStack_a0;
    InfVal_op_Division_0x6000075(&uStack_d0,&uStack_50,&uStack_70,0);
  }
  param_1[1] = uStack_c8;
  *param_1 = uStack_d0;
  param_1[3] = uStack_b8;
  param_1[2] = uStack_c0;
  return;
}

