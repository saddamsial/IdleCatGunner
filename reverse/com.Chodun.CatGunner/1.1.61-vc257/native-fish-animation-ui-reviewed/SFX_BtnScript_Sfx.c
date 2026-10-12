/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b222a0, Ghidra VA 02c222a0. */

void SFX_BtnScript_Sfx(long param_1)

{
  if (cRam000000000625ba57 == '\0') {
    func_0x029f5a50(PTR_DAT_05e5dd70);
    cRam000000000625ba57 = '\x01';
  }
  if (**(long **)(*(long *)PTR_DAT_05e5dd70 + 0xb8) != 0) {
    Sound_manager_PlaySfx_0x600054a
              (0x3f800000,**(long **)(*(long *)PTR_DAT_05e5dd70 + 0xb8),
               *(undefined4 *)(param_1 + 0x20),0);
    return;
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

