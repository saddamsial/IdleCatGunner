/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b30968, Ghidra VA 02c30968. */

void Relic_Draw_Panel_OnClick_Right(long param_1)

{
  int iVar1;
  
  if (*(char *)(param_1 + 0x78) == '\0') {
    if (*(int *)(param_1 + 0x70) < *(int *)(param_1 + 0x74) + -1) {
      iVar1 = *(int *)(param_1 + 0x70) + 1;
      *(int *)(param_1 + 0x70) = iVar1;
      Relic_Draw_Panel_Page_Setup(param_1,iVar1,1);
      Relic_Draw_Panel_Arrow_Reload(param_1);
      if (cRam000000000625ba57 == '\0') {
        func_0x029f5a50(PTR_DAT_05e5dd70);
        cRam000000000625ba57 = '\x01';
      }
      if (**(long **)(*(long *)PTR_DAT_05e5dd70 + 0xb8) != 0) {
        Sound_manager_PlaySfx_0x600054a
                  (0x3f800000,**(long **)(*(long *)PTR_DAT_05e5dd70 + 0xb8),0xe,0);
        return;
      }
                    /* WARNING: Subroutine does not return */
      Throw_NullReference_Wrapper();
    }
  }
  return;
}

