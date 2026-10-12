/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2ba7b7c, Ghidra VA 02ca7b7c. */

void Skin_manager_Skin_Select(long param_1,undefined4 param_2)

{
  ulong uVar1;
  long lVar2;
  
  if ((bRam000000000625c4e4 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5d5b0);
    bRam000000000625c4e4 = 1;
  }
  uVar1 = Skin_manager_is_Unlock(param_1,param_2);
  if ((uVar1 & 1) == 0) {
    return;
  }
  lVar2 = *(long *)(param_1 + 0x70);
  *(undefined4 *)(param_1 + 0x30) = param_2;
  if (lVar2 != 0) {
    Skin_Info_UI_Reload_0x6000e9b(lVar2,*(undefined4 *)(lVar2 + 0x20));
    lVar2 = *(long *)(*(long *)(*(long *)PTR_DAT_05e5d5b0 + 0xb8) + 8);
    if (lVar2 != 0) {
      Cat_manager_Skin_Reload(lVar2,0);
      if (cRam000000000625ba57 == '\0') {
        func_0x029f5a50(PTR_DAT_05e5dd70);
        cRam000000000625ba57 = '\x01';
      }
      if (**(long **)(*(long *)PTR_DAT_05e5dd70 + 0xb8) != 0) {
        Sound_manager_PlaySfx_0x600054a
                  (0x3f800000,**(long **)(*(long *)PTR_DAT_05e5dd70 + 0xb8),9,0,0);
        Skin_manager_UI_Reload(param_1);
        return;
      }
    }
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

