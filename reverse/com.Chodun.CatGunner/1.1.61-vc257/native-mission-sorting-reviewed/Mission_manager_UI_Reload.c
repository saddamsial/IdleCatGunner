/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2aa4028, Ghidra VA 02ba4028. */

void Mission_manager_UI_Reload(long param_1)

{
  undefined *puVar1;
  undefined *puVar2;
  
  if ((bRam000000000625ba48 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e58f08);
    func_0x029f5a50(PTR_DAT_05e5e6f0);
    bRam000000000625ba48 = 1;
  }
  if (*(char *)(param_1 + 0xd0) == '\0') {
    Mission_manager_UI_First_Reload(param_1);
  }
  Mission_manager_Mission_UI_Reload(param_1);
  Mission_manager_Reward_UI_Reload_0x6000350(param_1);
  if (*(long *)(param_1 + 0xa0) != 0) {
    Mission_Exp_Slider_Reload_0x6000383(*(long *)(param_1 + 0xa0),0);
    puVar2 = PTR_DAT_05e5e6f0;
    puVar1 = PTR_DAT_05e58f08;
    if (*(long *)(param_1 + 0x78) != 0) {
      GameObject_SetActive_0x6000cfe(*(long *)(param_1 + 0x78),0x18 < *(int *)(param_1 + 0x48),0);
      if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
        func_0x029f5bd0();
      }
      Debug_Log_0x600033c(*(undefined8 *)puVar2,0);
      return;
    }
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

