/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b1491c, Ghidra VA 02c1491c. */

void SaveData__ctor(long param_1)

{
  undefined *puVar1;
  undefined *puVar2;
  undefined *puVar3;
  undefined *puVar4;
  undefined8 uVar5;
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
  
  puVar4 = PTR_DAT_05e62680;
  puVar3 = PTR_DAT_05e62628;
  puVar2 = PTR_DAT_05e5a8a8;
  puVar1 = PTR_DAT_05e5a8a0;
  if ((bRam000000000625beeb & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e62680);
    func_0x029f5a50(PTR_DAT_05e5a8a8);
    func_0x029f5a50(PTR_DAT_05e62628);
    func_0x029f5a50(PTR_DAT_05e5a8a0);
    bRam000000000625beeb = 1;
  }
  InfVal_op_Implicit_0x600003f(&uStack_60,0,0);
  *(undefined8 *)(param_1 + 0x20) = uStack_58;
  *(undefined8 *)(param_1 + 0x18) = uStack_60;
  *(undefined8 *)(param_1 + 0x30) = uStack_48;
  *(undefined8 *)(param_1 + 0x28) = uStack_50;
  func_0x029f59f4(param_1 + 0x18,0);
  InfVal_op_Implicit_0x600003f(&uStack_80,0,0);
  *(undefined8 *)(param_1 + 0x40) = uStack_78;
  *(undefined8 *)(param_1 + 0x38) = uStack_80;
  *(undefined8 *)(param_1 + 0x50) = uStack_68;
  *(undefined8 *)(param_1 + 0x48) = uStack_70;
  func_0x029f59f4(param_1 + 0x38,0);
  InfVal_op_Implicit_0x600003f(&uStack_a0,0,0);
  *(undefined8 *)(param_1 + 0x60) = uStack_98;
  *(undefined8 *)(param_1 + 0x58) = uStack_a0;
  *(undefined8 *)(param_1 + 0x70) = uStack_88;
  *(undefined8 *)(param_1 + 0x68) = uStack_90;
  func_0x029f59f4(param_1 + 0x58,0);
  uVar5 = *(undefined8 *)puVar1;
  *(undefined8 *)(param_1 + 0x160) = 0xffffffffffffffff;
  uVar5 = func_0x029f5cec(uVar5);
  func_0x0452c340(uVar5,*(undefined8 *)puVar2);
  *(undefined8 *)(param_1 + 0x1e0) = uVar5;
  func_0x029f59f4(param_1 + 0x1e0,uVar5);
  uVar5 = func_0x029f5cec(*(undefined8 *)puVar1);
  func_0x0452c340(uVar5,*(undefined8 *)puVar2);
  *(undefined8 *)(param_1 + 0x208) = uVar5;
  func_0x029f59f4(param_1 + 0x208,uVar5);
  uVar5 = func_0x029f5cec(*(undefined8 *)puVar3);
  func_0x044f7180(uVar5,*(undefined8 *)puVar4);
  *(undefined8 *)(param_1 + 0x210) = uVar5;
  func_0x029f59f4(param_1 + 0x210,uVar5);
  uVar5 = func_0x029f5cec(*(undefined8 *)puVar3);
  func_0x044f7180(uVar5,*(undefined8 *)puVar4);
  *(undefined8 *)(param_1 + 0x280) = uVar5;
  func_0x029f59f4(param_1 + 0x280,uVar5);
  *(undefined4 *)(param_1 + 0x2b0) = 0xffffffff;
  *(undefined8 *)(param_1 + 0x3fc) = 0xffffffffffffffff;
  *(undefined4 *)(param_1 + 0x424) = 0xffffffff;
  Object__ctor_0x600100e(param_1,0);
  return;
}

