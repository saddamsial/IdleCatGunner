/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2a7e718, Ghidra VA 02b7e718. */

void Gamemanager_Get_Money_0x6000074(undefined8 *param_1)

{
  undefined *puVar1;
  long lVar2;
  long lVar3;
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
  undefined8 uStack_30;
  undefined8 uStack_28;
  
  puVar1 = PTR_DAT_05e5d338;
  if ((bRam000000000625b8b5 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5d338);
    bRam000000000625b8b5 = 1;
  }
  uStack_38 = param_1[1];
  uStack_40 = *param_1;
  uStack_28 = param_1[3];
  uStack_30 = param_1[2];
  if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  uStack_78 = uStack_38;
  uStack_80 = uStack_40;
  uStack_68 = uStack_28;
  uStack_70 = uStack_30;
  Gamemanager_MoneyValue_return_0x6000073(&uStack_60,&uStack_80);
  param_1[1] = uStack_58;
  *param_1 = uStack_60;
  param_1[3] = uStack_48;
  param_1[2] = uStack_50;
  InfVal_op_Addition_0x6000072(&uStack_a0,*(long *)(*(long *)puVar1 + 0xb8) + 0x30,param_1,0);
  lVar2 = *(long *)puVar1;
  lVar3 = *(long *)(lVar2 + 0xb8);
  *(undefined8 *)(lVar3 + 0x38) = uStack_98;
  *(undefined8 *)(lVar3 + 0x30) = uStack_a0;
  *(undefined8 *)(lVar3 + 0x48) = uStack_88;
  *(undefined8 *)(lVar3 + 0x40) = uStack_90;
  Managed_WriteBarrier(*(long *)(lVar2 + 0xb8) + 0x30,0);
  InfVal_op_Addition_0x6000072(&uStack_c0,*(long *)(*(long *)puVar1 + 0xb8) + 0x50,param_1,0);
  lVar2 = *(long *)puVar1;
  lVar3 = *(long *)(lVar2 + 0xb8);
  *(undefined8 *)(lVar3 + 0x58) = uStack_b8;
  *(undefined8 *)(lVar3 + 0x50) = uStack_c0;
  *(undefined8 *)(lVar3 + 0x68) = uStack_a8;
  *(undefined8 *)(lVar3 + 0x60) = uStack_b0;
  Managed_WriteBarrier(*(long *)(lVar2 + 0xb8) + 0x50,0);
  lVar2 = *(long *)(*(long *)(*(long *)puVar1 + 0xb8) + 8);
  if (lVar2 != 0) {
    (**(code **)(lVar2 + 0x18))(*(undefined8 *)(lVar2 + 0x40),*(undefined8 *)(lVar2 + 0x28));
  }
  return;
}

