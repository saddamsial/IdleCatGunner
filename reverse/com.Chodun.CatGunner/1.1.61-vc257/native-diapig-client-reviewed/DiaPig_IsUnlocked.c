/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b8c7d0, Ghidra VA 02c8c7d0. */

undefined8 DiaPig_IsUnlocked(void)

{
  undefined *puVar1;
  undefined *puVar2;
  long lVar3;
  ulong uVar4;
  undefined8 uVar5;
  
  puVar2 = PTR_DAT_05e5d920;
  if ((bRam000000000625c3b7 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e591c0);
    func_0x029f5a50(PTR_DAT_05e5d920);
    bRam000000000625c3b7 = 1;
  }
  if (*(int *)(*(long *)puVar2 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  if (cRam000000000625b960 == '\0') {
    func_0x029f5a50(PTR_DAT_05e5d920);
    cRam000000000625b960 = '\x01';
  }
  puVar1 = PTR_DAT_05e591c0;
  lVar3 = *(long *)puVar2;
  if (*(int *)(lVar3 + 0xe4) == 0) {
    func_0x029f5bd0();
    lVar3 = *(long *)puVar2;
  }
  uVar5 = **(undefined8 **)(lVar3 + 0xb8);
  if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
    func_0x029f5bd0(*(long *)puVar1);
  }
  uVar4 = Object_op_Inequality_0x6000ded(uVar5,0,0);
  if ((uVar4 & 1) != 0) {
    if (*(int *)(*(long *)puVar2 + 0xe4) == 0) {
      func_0x029f5bd0();
    }
    if (cRam000000000625b960 == '\0') {
      func_0x029f5a50(PTR_DAT_05e5d920);
      cRam000000000625b960 = '\x01';
    }
    lVar3 = *(long *)puVar2;
    if (*(int *)(lVar3 + 0xe4) == 0) {
      func_0x029f5bd0();
      lVar3 = *(long *)puVar2;
    }
    if (**(long **)(lVar3 + 0xb8) != 0) {
      uVar5 = Shop_manager_is_DiaPig_Unlock_0x6000db5();
      return uVar5;
    }
                    /* WARNING: Subroutine does not return */
    Throw_NullReference_Wrapper();
  }
  return 0;
}

