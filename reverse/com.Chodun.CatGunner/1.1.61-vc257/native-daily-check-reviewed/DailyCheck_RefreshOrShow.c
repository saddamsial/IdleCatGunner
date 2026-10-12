/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2a9efb0, Ghidra VA 02b9efb0. */

void DailyCheck_RefreshOrShow(long param_1)

{
  undefined *puVar1;
  ulong uVar2;
  undefined8 uVar3;
  
  puVar1 = PTR_DAT_05e591c0;
  if ((bRam000000000625b9f6 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e591c0);
    bRam000000000625b9f6 = 1;
  }
  DailyCheck_Coupang_Hud_Reload_0x60002d2(param_1);
  uVar3 = *(undefined8 *)(param_1 + 0x20);
  if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  uVar2 = Object_op_Inequality_0x6000ded(uVar3,0,0);
  if ((uVar2 & 1) != 0) {
    if (*(long *)(param_1 + 0x20) == 0) {
                    /* WARNING: Subroutine does not return */
      Throw_NullReference_Wrapper();
    }
    uVar2 = GameObject_get_activeSelf_0x6000cff(*(long *)(param_1 + 0x20),0);
    if ((uVar2 & 1) != 0) {
      DailyCheck_UI_reload(param_1);
      return;
    }
  }
  if (*(char *)(param_1 + 0x39) != '\0') {
    *(undefined1 *)(param_1 + 0x39) = 0;
    DailyCheck_Try_Show(param_1);
    return;
  }
  return;
}

