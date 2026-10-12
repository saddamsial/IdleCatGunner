/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b46c8c, Ghidra VA 02c46c8c. */

void Boss_manager_SweepRequiredPower_return
               (undefined8 *param_1,undefined8 param_2,undefined4 param_3)

{
  int iVar1;
  float fVar2;
  double dVar3;
  double dVar4;
  undefined8 uStack_100;
  undefined8 uStack_f8;
  undefined8 uStack_f0;
  undefined8 uStack_e8;
  undefined8 uStack_e0;
  undefined8 uStack_d8;
  undefined8 uStack_d0;
  undefined8 uStack_c8;
  double dStack_c0;
  undefined8 uStack_b8;
  undefined8 uStack_b0;
  undefined8 uStack_a8;
  undefined8 uStack_a0;
  undefined8 uStack_98;
  undefined8 uStack_90;
  undefined8 uStack_88;
  double dStack_80;
  undefined8 uStack_78;
  undefined8 uStack_70;
  undefined8 uStack_68;
  undefined8 uStack_60;
  undefined8 uStack_58;
  undefined8 uStack_50;
  undefined8 uStack_48;
  
  uStack_98 = 0;
  uStack_a0 = 0;
  uStack_88 = 0;
  uStack_90 = 0;
  uStack_78 = 0;
  dStack_80 = 0.0;
  uStack_68 = 0;
  uStack_70 = 0;
  uStack_58 = 0;
  uStack_60 = 0;
  uStack_48 = 0;
  uStack_50 = 0;
  fVar2 = (float)Boss_manager_GameTime_Max_return_0x600079f();
  if (cRam000000000625b95a == '\0') {
    func_0x029f5a50(PTR_DAT_05e59000);
    cRam000000000625b95a = '\x01';
  }
  fVar2 = (fVar2 * 70.0) / 100.0;
  if (*(int *)(*(long *)PTR_DAT_05e59000 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  dVar4 = (double)fVar2;
  dVar3 = (double)func_0x05afb230(dVar4,&dStack_c0);
  if (0.0 <= fVar2) {
    if (dVar3 != 0.5) {
      dVar3 = (double)(long)(dVar4 + 0.5);
      goto LAB_02c46d7c;
    }
    dVar4 = 1.0;
  }
  else {
    if (dVar3 != -0.5) {
      dVar3 = (double)(long)(dVar4 + -0.5);
      goto LAB_02c46d7c;
    }
    dVar4 = -1.0;
  }
  dVar3 = dStack_c0;
  if (((long)dStack_c0 & 1U) != 0) {
    dVar3 = dStack_c0 + dVar4;
  }
LAB_02c46d7c:
  iVar1 = (int)dVar3;
  if (iVar1 < 2) {
    iVar1 = 1;
  }
  if (dVar3 == INFINITY) {
    iVar1 = 1;
  }
  Boss_manager_Health_return_0x60007b3(&uStack_60,param_2,param_3);
  InfVal_op_Implicit_0x600003f(&dStack_c0,iVar1,0);
  uStack_78 = uStack_b8;
  dStack_80 = dStack_c0;
  uStack_68 = uStack_a8;
  uStack_70 = uStack_b0;
  InfVal_op_Division_0x6000075(&uStack_e0,&uStack_60,&dStack_80,0);
  uStack_98 = uStack_d8;
  uStack_a0 = uStack_e0;
  uStack_88 = uStack_c8;
  uStack_90 = uStack_d0;
  InfVal_ToPrecision_0x6000089(&uStack_100,&uStack_a0,5,0);
  param_1[1] = uStack_f8;
  *param_1 = uStack_100;
  param_1[3] = uStack_e8;
  param_1[2] = uStack_f0;
  return;
}

