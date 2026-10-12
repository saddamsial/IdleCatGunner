/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2a7f11c, Ghidra VA 02b7f11c. */

void Gamemanager_Lose_Money(undefined8 param_1)

{
  undefined *puVar1;
  long lVar2;
  ulong uVar3;
  long lVar4;
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
  undefined8 uStack_30;
  undefined8 uStack_28;
  
  puVar1 = PTR_DAT_05e5d338;
  if ((bRam000000000625b8bd & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5d338);
    bRam000000000625b8bd = 1;
  }
  lVar2 = *(long *)puVar1;
  uStack_38 = 0;
  uStack_40 = 0;
  uStack_28 = 0;
  uStack_30 = 0;
  if (*(int *)(lVar2 + 0xe4) == 0) {
    func_0x029f5bd0();
    lVar2 = *(long *)puVar1;
  }
  InfVal_op_Subtraction_0x6000073(&uStack_60,*(long *)(lVar2 + 0xb8) + 0x30,param_1,0);
  lVar2 = *(long *)puVar1;
  lVar4 = *(long *)(lVar2 + 0xb8);
  *(undefined8 *)(lVar4 + 0x38) = uStack_58;
  *(undefined8 *)(lVar4 + 0x30) = uStack_60;
  *(undefined8 *)(lVar4 + 0x48) = uStack_48;
  *(undefined8 *)(lVar4 + 0x40) = uStack_50;
  Managed_WriteBarrier(*(long *)(lVar2 + 0xb8) + 0x30,0);
  InfVal_op_Implicit_0x600003f(&uStack_80,0,0);
  uStack_38 = uStack_78;
  uStack_40 = uStack_80;
  uStack_28 = uStack_68;
  uStack_30 = uStack_70;
  uVar3 = InfVal_op_LessThan_0x600007e(*(long *)(*(long *)puVar1 + 0xb8) + 0x30,&uStack_40,0);
  if ((uVar3 & 1) != 0) {
    InfVal_op_Implicit_0x600003f(&uStack_60,0,0);
    uStack_38 = uStack_58;
    uStack_40 = uStack_60;
    uStack_28 = uStack_48;
    uStack_30 = uStack_50;
    InfVal_ToPrecision_0x6000089(&uStack_80,&uStack_40,5,0);
    lVar2 = *(long *)puVar1;
    if (*(int *)(lVar2 + 0xe4) == 0) {
      func_0x029f5bd0();
      lVar2 = *(long *)puVar1;
    }
    lVar4 = *(long *)(lVar2 + 0xb8);
    *(undefined8 *)(lVar4 + 0x38) = uStack_78;
    *(undefined8 *)(lVar4 + 0x30) = uStack_80;
    *(undefined8 *)(lVar4 + 0x48) = uStack_68;
    *(undefined8 *)(lVar4 + 0x40) = uStack_70;
    Managed_WriteBarrier(*(long *)(lVar2 + 0xb8) + 0x30,0);
  }
  lVar2 = *(long *)puVar1;
  if (*(int *)(lVar2 + 0xe4) == 0) {
    func_0x029f5bd0();
    lVar2 = *(long *)puVar1;
  }
  lVar2 = *(long *)(*(long *)(lVar2 + 0xb8) + 8);
  if (lVar2 != 0) {
    (**(code **)(lVar2 + 0x18))(*(undefined8 *)(lVar2 + 0x40),*(undefined8 *)(lVar2 + 0x28));
  }
  return;
}

