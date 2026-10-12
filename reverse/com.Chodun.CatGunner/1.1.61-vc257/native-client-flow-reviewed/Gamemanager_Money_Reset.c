/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2a7ec3c, Ghidra VA 02b7ec3c. */

void Gamemanager_Money_Reset(void)

{
  undefined *puVar1;
  long lVar2;
  long lVar3;
  undefined8 uStack_60;
  undefined8 uStack_58;
  undefined8 uStack_50;
  undefined8 uStack_48;
  undefined8 uStack_40;
  undefined8 uStack_38;
  undefined8 uStack_30;
  undefined8 uStack_28;
  
  puVar1 = PTR_DAT_05e5d338;
  if ((bRam000000000625b8b8 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5d338);
    bRam000000000625b8b8 = 1;
  }
  InfVal_op_Implicit_0x600003f(&uStack_40,0,0);
  lVar2 = *(long *)puVar1;
  if (*(int *)(lVar2 + 0xe4) == 0) {
    func_0x029f5bd0();
    lVar2 = *(long *)puVar1;
  }
  lVar3 = *(long *)(lVar2 + 0xb8);
  *(undefined8 *)(lVar3 + 0x38) = uStack_38;
  *(undefined8 *)(lVar3 + 0x30) = uStack_40;
  *(undefined8 *)(lVar3 + 0x48) = uStack_28;
  *(undefined8 *)(lVar3 + 0x40) = uStack_30;
  Managed_WriteBarrier(*(long *)(lVar2 + 0xb8) + 0x30,0);
  InfVal_op_Implicit_0x600003f(&uStack_60,0,0);
  lVar2 = *(long *)puVar1;
  lVar3 = *(long *)(lVar2 + 0xb8);
  *(undefined8 *)(lVar3 + 0x58) = uStack_58;
  *(undefined8 *)(lVar3 + 0x50) = uStack_60;
  *(undefined8 *)(lVar3 + 0x68) = uStack_48;
  *(undefined8 *)(lVar3 + 0x60) = uStack_50;
  Managed_WriteBarrier(*(long *)(lVar2 + 0xb8) + 0x50,0);
  lVar2 = *(long *)(*(long *)(*(long *)puVar1 + 0xb8) + 8);
  if (lVar2 != 0) {
    (**(code **)(lVar2 + 0x18))(*(undefined8 *)(lVar2 + 0x40),*(undefined8 *)(lVar2 + 0x28));
  }
  return;
}

