/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2ba98f4, Ghidra VA 02ca98f4. */

int SpeedRun_manager_SweepValue_return(long param_1)

{
  long lVar1;
  ulong uVar2;
  int iVar3;
  double dVar4;
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
  undefined8 uStack_40;
  undefined8 uStack_38;
  
  lVar1 = param_1;
  if ((bRam000000000625c4fc & 1) == 0) {
    lVar1 = func_0x029f5a50(PTR_DAT_05e5d338);
    bRam000000000625c4fc = 1;
  }
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
  uStack_38 = 0;
  uStack_40 = 0;
  SpeedRun_manager_SweepRequiredPower_return(&uStack_50,lVar1,*(undefined4 *)(param_1 + 0x30));
  InfVal_op_Implicit_0x600003f(&uStack_f0,0,0);
  uStack_88 = uStack_e8;
  uStack_90 = uStack_f0;
  uStack_78 = uStack_d8;
  uStack_80 = uStack_e0;
  uVar2 = InfVal_op_LessThanOrEqual_0x6000080(&uStack_50,&uStack_90,0);
  if ((uVar2 & 1) == 0) {
    if (*(int *)(*(long *)PTR_DAT_05e5d338 + 0xe4) == 0) {
      func_0x029f5bd0();
    }
    Gamemanager_Power_SpeedRun_return(&uStack_f0,0);
    uStack_88 = uStack_e8;
    uStack_90 = uStack_f0;
    uStack_78 = uStack_d8;
    uStack_80 = uStack_e0;
    InfVal_op_Implicit_0x600003f(&uStack_110,100,0);
    uStack_a8 = uStack_108;
    uStack_b0 = uStack_110;
    uStack_98 = uStack_f8;
    uStack_a0 = uStack_100;
    InfVal_op_Multiply_0x6000074(&uStack_130,&uStack_90,&uStack_b0,0);
    uStack_c8 = uStack_128;
    uStack_d0 = uStack_130;
    uStack_b8 = uStack_118;
    uStack_c0 = uStack_120;
    InfVal_op_Division_0x6000075(&uStack_150,&uStack_d0,&uStack_50,0);
    uStack_68 = uStack_148;
    uStack_70 = uStack_150;
    uStack_58 = uStack_138;
    uStack_60 = uStack_140;
    InfVal_op_Implicit_0x600003f(&uStack_170,100,0);
    uStack_88 = uStack_168;
    uStack_90 = uStack_170;
    uStack_78 = uStack_158;
    uStack_80 = uStack_160;
    uVar2 = InfVal_op_GreaterThanOrEqual_0x6000081(&uStack_70,&uStack_90,0);
    iVar3 = 100;
    if ((uVar2 & 1) == 0) {
      InfVal_op_Implicit_0x600003f(&uStack_f0,0,0);
      uStack_88 = uStack_e8;
      uStack_90 = uStack_f0;
      uStack_78 = uStack_d8;
      uStack_80 = uStack_e0;
      uVar2 = InfVal_op_LessThanOrEqual_0x6000080(&uStack_70,&uStack_90,0);
      iVar3 = 0;
      if ((uVar2 & 1) == 0) {
        dVar4 = (double)InfVal_op_Explicit_0x600005b(&uStack_70,0);
        if (cRam000000000625ba65 == '\0') {
          func_0x029f5a50(PTR_DAT_05e59000);
          cRam000000000625ba65 = '\x01';
        }
        if (*(int *)(*(long *)PTR_DAT_05e59000 + 0xe4) == 0) {
          func_0x029f5bd0();
        }
        iVar3 = -0x80000000;
        if ((float)(int)dVar4 != INFINITY) {
          iVar3 = (int)dVar4;
        }
      }
    }
  }
  else {
    iVar3 = 100;
  }
  return iVar3;
}

