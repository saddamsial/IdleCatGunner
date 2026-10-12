/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b32ed8, Ghidra VA 02c32ed8. */

void Relic_manager__cctor(void)

{
  undefined *puVar1;
  undefined8 *puVar2;
  long lVar3;
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
  
  puVar1 = PTR_DAT_05e5d4d8;
  if ((bRam000000000625c048 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5d4d8);
    bRam000000000625c048 = 1;
  }
  InfVal_op_Implicit_0x600003f(&uStack_40,100,0);
  puVar2 = *(undefined8 **)(*(long *)puVar1 + 0xb8);
  puVar2[1] = uStack_38;
  *puVar2 = uStack_40;
  puVar2[3] = uStack_28;
  puVar2[2] = uStack_30;
  Managed_WriteBarrier(*(undefined8 *)(*(long *)puVar1 + 0xb8),0);
  InfVal_op_Implicit_0x600003f(&uStack_60,100,0);
  lVar3 = *(long *)puVar1;
  lVar4 = *(long *)(lVar3 + 0xb8);
  *(undefined8 *)(lVar4 + 0x28) = uStack_58;
  *(undefined8 *)(lVar4 + 0x20) = uStack_60;
  *(undefined8 *)(lVar4 + 0x38) = uStack_48;
  *(undefined8 *)(lVar4 + 0x30) = uStack_50;
  Managed_WriteBarrier(*(long *)(lVar3 + 0xb8) + 0x20,0);
  InfVal_op_Implicit_0x600003f(&uStack_80,100,0);
  lVar3 = *(long *)puVar1;
  lVar4 = *(long *)(lVar3 + 0xb8);
  *(undefined8 *)(lVar4 + 0x48) = uStack_78;
  *(undefined8 *)(lVar4 + 0x40) = uStack_80;
  *(undefined8 *)(lVar4 + 0x58) = uStack_68;
  *(undefined8 *)(lVar4 + 0x50) = uStack_70;
  Managed_WriteBarrier(*(long *)(lVar3 + 0xb8) + 0x40,0);
  return;
}

