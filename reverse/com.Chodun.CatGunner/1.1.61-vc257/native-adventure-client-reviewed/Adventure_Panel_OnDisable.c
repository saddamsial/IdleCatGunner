/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b35a18, Ghidra VA 02c35a18. */

void Adventure_Panel_OnDisable(long param_1)

{
  undefined *puVar1;
  
  if ((bRam000000000625c062 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5d5b0);
    bRam000000000625c062 = 1;
  }
  puVar1 = PTR_DAT_05e5d5b0;
  if (*(long *)(param_1 + 0x38) != 0) {
    GameObject_SetActive_0x6000cfe(*(long *)(param_1 + 0x38),0,0);
    **(undefined1 **)(*(long *)puVar1 + 0xb8) = 0;
    return;
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

