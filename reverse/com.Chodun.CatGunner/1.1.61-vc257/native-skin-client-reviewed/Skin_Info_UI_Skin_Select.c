/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2ba85a4, Ghidra VA 02ca85a4. */

void Skin_Info_UI_Skin_Select(long param_1)

{
  undefined *puVar1;
  long lVar2;
  
  puVar1 = PTR_DAT_05e5d4e0;
  if ((bRam000000000625c4ea & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5d4e0);
    bRam000000000625c4ea = 1;
  }
  lVar2 = *(long *)(*(long *)(*(long *)puVar1 + 0xb8) + 0x10);
  if (lVar2 != 0) {
    Skin_manager_Skin_Select(lVar2,*(undefined4 *)(param_1 + 0x20));
    return;
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

