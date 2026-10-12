/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b7e5b0, Ghidra VA 02c7e5b0. */

void Pet_manager__cctor(void)

{
  undefined *puVar1;
  undefined8 *puVar2;
  undefined8 uStack_40;
  undefined8 uStack_38;
  undefined8 uStack_30;
  undefined8 uStack_28;
  
  puVar1 = PTR_DAT_05e5d4d0;
  if ((bRam000000000625c33b & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5d4d0);
    bRam000000000625c33b = 1;
  }
  InfVal_op_Implicit_0x600003f(&uStack_40,100,0);
  puVar2 = *(undefined8 **)(*(long *)puVar1 + 0xb8);
  puVar2[1] = uStack_38;
  *puVar2 = uStack_40;
  puVar2[3] = uStack_28;
  puVar2[2] = uStack_30;
  func_0x029f59f4(*(undefined8 *)(*(long *)puVar1 + 0xb8),0);
  *(undefined4 *)(*(long *)(*(long *)puVar1 + 0xb8) + 0x20) = 100;
  return;
}

