/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b4ec08, Ghidra VA 02c4ec08. */

void Monster_manager_SweepRequiredPower_return
               (undefined8 *param_1,undefined8 param_2,undefined4 param_3,uint param_4)

{
  int iVar1;
  undefined *puVar2;
  long lVar3;
  float fVar4;
  undefined8 uStack_200;
  undefined8 uStack_1f8;
  undefined8 uStack_1f0;
  undefined8 uStack_1e8;
  undefined8 uStack_1e0;
  undefined8 uStack_1d8;
  undefined8 uStack_1d0;
  undefined8 uStack_1c8;
  undefined8 uStack_1c0;
  undefined8 uStack_1b8;
  undefined8 uStack_1b0;
  undefined8 uStack_1a8;
  undefined8 uStack_1a0;
  undefined8 uStack_198;
  undefined8 uStack_190;
  undefined8 uStack_188;
  undefined8 uStack_180;
  undefined8 uStack_178;
  undefined8 uStack_170;
  undefined8 uStack_168;
  undefined8 uStack_160;
  undefined8 uStack_158;
  undefined8 uStack_150;
  undefined8 uStack_148;
  undefined8 uStack_140;
  undefined8 uStack_138;
  undefined8 uStack_130;
  undefined8 uStack_128;
  undefined8 uStack_120;
  undefined8 uStack_118;
  undefined8 uStack_110;
  undefined8 uStack_108;
  undefined8 uStack_100;
  undefined8 uStack_f8;
  undefined8 uStack_f0;
  undefined8 uStack_e8;
  undefined8 uStack_e0;
  undefined8 uStack_d8;
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
  
  puVar2 = PTR_DAT_05e5dd58;
  if ((bRam000000000625c142 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5dd58);
    bRam000000000625c142 = 1;
  }
  uStack_d8 = 0;
  uStack_e0 = 0;
  uStack_c8 = 0;
  uStack_d0 = 0;
  uStack_b8 = 0;
  uStack_c0 = 0;
  uStack_a8 = 0;
  uStack_b0 = 0;
  uStack_98 = 0;
  uStack_a0 = 0;
  uStack_88 = 0;
  uStack_90 = 0;
  uStack_78 = 0;
  uStack_80 = 0;
  uStack_68 = 0;
  uStack_70 = 0;
  uStack_58 = 0;
  uStack_60 = 0;
  uStack_48 = 0;
  uStack_50 = 0;
  Monster_manager_WaveBaseHealth_Pure_0x6000851(&uStack_80,param_2,param_3);
  InfVal_op_Implicit_0x600003f(&uStack_100,param_4 * 0x28 + 100,0);
  uStack_98 = uStack_f8;
  uStack_a0 = uStack_100;
  uStack_88 = uStack_e8;
  uStack_90 = uStack_f0;
  InfVal_op_Multiply_0x6000074(&uStack_120,&uStack_80,&uStack_a0,0);
  uStack_b8 = uStack_118;
  uStack_c0 = uStack_120;
  uStack_a8 = uStack_108;
  uStack_b0 = uStack_110;
  InfVal_op_Implicit_0x600003f(&uStack_140,100,0);
  uStack_d8 = uStack_138;
  uStack_e0 = uStack_140;
  uStack_c8 = uStack_128;
  uStack_d0 = uStack_130;
  InfVal_op_Division_0x6000075(&uStack_160,&uStack_c0,&uStack_e0,0);
  lVar3 = *(long *)puVar2;
  uStack_58 = uStack_158;
  uStack_60 = uStack_160;
  uStack_48 = uStack_148;
  uStack_50 = uStack_150;
  if (*(int *)(lVar3 + 0xe4) == 0) {
    func_0x029f5bd0();
    lVar3 = *(long *)puVar2;
  }
  lVar3 = *(long *)(*(long *)(lVar3 + 0xb8) + 0x18);
  if (lVar3 != 0) {
    if (param_4 < *(uint *)(lVar3 + 0x18)) {
      fVar4 = *(float *)(lVar3 + (long)(int)param_4 * 4 + 0x20) * 100.0;
      iVar1 = -0x80000000;
      if (fVar4 != INFINITY) {
        iVar1 = (int)fVar4;
      }
      InfVal_op_Implicit_0x600003f(&uStack_180,0x96,0);
      uStack_78 = uStack_178;
      uStack_80 = uStack_180;
      uStack_68 = uStack_168;
      uStack_70 = uStack_170;
      InfVal_op_Multiply_0x6000074(&uStack_1a0,&uStack_60,&uStack_80,0);
      uStack_98 = uStack_198;
      uStack_a0 = uStack_1a0;
      uStack_88 = uStack_188;
      uStack_90 = uStack_190;
      InfVal_op_Implicit_0x600003f(&uStack_1c0,iVar1,0);
      uStack_b8 = uStack_1b8;
      uStack_c0 = uStack_1c0;
      uStack_a8 = uStack_1a8;
      uStack_b0 = uStack_1b0;
      InfVal_op_Division_0x6000075(&uStack_1e0,&uStack_a0,&uStack_c0,0);
      uStack_d8 = uStack_1d8;
      uStack_e0 = uStack_1e0;
      uStack_c8 = uStack_1c8;
      uStack_d0 = uStack_1d0;
      InfVal_ToPrecision_0x6000089(&uStack_200,&uStack_e0,5,0);
      param_1[1] = uStack_1f8;
      *param_1 = uStack_200;
      param_1[3] = uStack_1e8;
      param_1[2] = uStack_1f0;
      return;
    }
                    /* WARNING: Subroutine does not return */
    Throw_Index_Wrapper();
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

