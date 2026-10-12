/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b61ebc, Ghidra VA 02c61ebc. */

void Fish_Item_OnPointerClick(long param_1)

{
  undefined *puVar1;
  undefined *puVar2;
  ulong uVar3;
  long lVar4;
  undefined8 uVar5;
  
  if ((bRam000000000625c229 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5dd38);
    func_0x029f5a50(PTR_DAT_05e591c0);
    bRam000000000625c229 = 1;
  }
  puVar2 = PTR_DAT_05e5dd38;
  puVar1 = PTR_DAT_05e591c0;
  if ((*(char *)(param_1 + 0x86) == '\0') && (*(char *)(param_1 + 0x85) == '\0')) {
    if ((*(char *)(param_1 + 0x48) != '\0') && (-1 < *(int *)(param_1 + 0x40))) {
      uVar5 = **(undefined8 **)(*(long *)PTR_DAT_05e5dd38 + 0xb8);
      if (*(int *)(*(long *)PTR_DAT_05e591c0 + 0xe4) == 0) {
        func_0x029f5bd0();
      }
      uVar3 = Object_op_Inequality_0x6000ded(uVar5,0,0);
      if ((uVar3 & 1) != 0) {
        lVar4 = **(long **)(*(long *)puVar2 + 0xb8);
        if (lVar4 != 0) {
          uVar5 = *(undefined8 *)(lVar4 + 0x50);
          if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
            func_0x029f5bd0();
          }
          uVar3 = Object_op_Inequality_0x6000ded(uVar5,0,0);
          if ((uVar3 & 1) == 0) {
            return;
          }
          lVar4 = **(long **)(*(long *)puVar2 + 0xb8);
          if ((lVar4 != 0) && (lVar4 = *(long *)(lVar4 + 0x50), lVar4 != 0)) {
            Fish_Info_UI_Reload(lVar4,*(undefined4 *)(param_1 + 0x40));
            return;
          }
        }
                    /* WARNING: Subroutine does not return */
        Throw_NullReference_Wrapper();
      }
    }
  }
  else {
    *(undefined1 *)(param_1 + 0x85) = 0;
  }
  return;
}

