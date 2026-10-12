/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b35360, Ghidra VA 02c35360. */

void Adventure_Panel_OnEnable(long param_1)

{
  undefined *puVar1;
  
  if ((bRam000000000625c061 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5d5b0);
    bRam000000000625c061 = 1;
  }
  puVar1 = PTR_DAT_05e5d5b0;
  if (*(long *)(param_1 + 0x38) != 0) {
    GameObject_SetActive_0x6000cfe(*(long *)(param_1 + 0x38),1,0);
    Adventure_Panel_RenderTexture_Map_Reload(param_1);
    Adventure_Panel_Map_List_Reload(param_1);
    Adventure_Panel_Exp_Reload(param_1);
    Adventure_Panel_Alert_Reload(param_1);
    **(undefined1 **)(*(long *)puVar1 + 0xb8) = 1;
    return;
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

