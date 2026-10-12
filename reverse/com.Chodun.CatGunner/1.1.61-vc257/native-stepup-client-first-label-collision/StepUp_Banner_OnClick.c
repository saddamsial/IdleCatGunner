/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2ba3d68, Ghidra VA 02ca3d68. */

void StepUp_Banner_OnClick(void)

{
  undefined *puVar1;
  long lVar2;
  
  puVar1 = PTR_DAT_05e5e4b8;
  if ((bRam000000000625c4a4 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5e4b8);
    func_0x029f5a50(PTR_DAT_05e641b8);
    bRam000000000625c4a4 = 1;
  }
  lVar2 = *(long *)puVar1;
  if (*(int *)(lVar2 + 0xe4) == 0) {
    func_0x029f5bd0();
    lVar2 = *(long *)puVar1;
  }
  if (**(long **)(lVar2 + 0xb8) != 0) {
    StepUp_Popup_Open(**(long **)(lVar2 + 0xb8),*(undefined8 *)PTR_DAT_05e641b8);
    return;
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

