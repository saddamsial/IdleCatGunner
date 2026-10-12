/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2ba84b4, Ghidra VA 02ca84b4. */

void Skin_Info_UI_Panel_Next(long param_1)

{
  undefined *puVar1;
  long lVar2;
  
  puVar1 = PTR_DAT_05e5d4e0;
  if ((bRam000000000625c4e8 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5d4e0);
    bRam000000000625c4e8 = 1;
  }
  lVar2 = *(long *)(*(long *)(*(long *)puVar1 + 0xb8) + 0x10);
  if ((lVar2 != 0) && (lVar2 = *(long *)(lVar2 + 0x20), lVar2 != 0)) {
    if (*(int *)(param_1 + 0x20) < *(int *)(lVar2 + 0x18) + -1) {
      Skin_Info_UI_Reload_0x6000e9b(param_1,*(int *)(param_1 + 0x20) + 1);
      return;
    }
    return;
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

