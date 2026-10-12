/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b91d0c, Ghidra VA 02c91d0c. */

void PlusPack_Inapp_item_OnClick(long param_1)

{
  undefined *puVar1;
  long lVar2;
  ulong uVar3;
  undefined8 uVar4;
  
  if ((bRam000000000625c3fc & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e591c0);
    func_0x029f5a50(PTR_DAT_05e5d920);
    func_0x029f5a50(PTR_DAT_05e63460);
    bRam000000000625c3fc = 1;
  }
  puVar1 = PTR_DAT_05e5d920;
  if (*(char *)(param_1 + 0x40) == '\0') {
    if (*(int *)(*(long *)PTR_DAT_05e5d920 + 0xe4) == 0) {
      func_0x029f5bd0();
    }
    if (cRam000000000625b960 == '\0') {
      func_0x029f5a50(PTR_DAT_05e5d920);
      cRam000000000625b960 = '\x01';
    }
    lVar2 = *(long *)puVar1;
    if (*(int *)(lVar2 + 0xe4) == 0) {
      func_0x029f5bd0();
      lVar2 = *(long *)puVar1;
    }
    uVar4 = **(undefined8 **)(lVar2 + 0xb8);
    if (*(int *)(*(long *)PTR_DAT_05e591c0 + 0xe4) == 0) {
      func_0x029f5bd0(*(long *)PTR_DAT_05e591c0);
    }
    uVar3 = Object_op_Equality_0x6000dec(uVar4,0,0);
    if ((uVar3 & 1) == 0) {
      if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
        func_0x029f5bd0();
      }
      if (cRam000000000625b960 == '\0') {
        func_0x029f5a50(PTR_DAT_05e5d920);
        cRam000000000625b960 = '\x01';
      }
      lVar2 = *(long *)puVar1;
      if (*(int *)(lVar2 + 0xe4) == 0) {
        func_0x029f5bd0();
        lVar2 = *(long *)puVar1;
      }
      if (**(long **)(lVar2 + 0xb8) != 0) {
        uVar4 = 0;
        if (*(char *)(param_1 + 0x24) != '\0') {
          uVar4 = *(undefined8 *)PTR_DAT_05e63460;
        }
        Shop_manager_Purchase_PlusPack_0x6000d6f
                  (**(long **)(lVar2 + 0xb8),*(undefined4 *)(param_1 + 0x20),uVar4);
        return;
      }
                    /* WARNING: Subroutine does not return */
      Throw_NullReference_Wrapper();
    }
  }
  return;
}

