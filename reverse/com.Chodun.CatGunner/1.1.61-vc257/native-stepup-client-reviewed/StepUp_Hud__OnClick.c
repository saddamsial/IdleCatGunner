/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2ba43f8, Ghidra VA 02ca43f8. */

void StepUp_Hud__OnClick(void)

{
  undefined *puVar1;
  long lVar2;
  
  puVar1 = PTR_DAT_05e5e4b8;
  if ((bRam000000000625c4ac & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5e4b8);
    func_0x029f5a50(PTR_DAT_05e5d958);
    bRam000000000625c4ac = 1;
  }
  lVar2 = *(long *)puVar1;
  if (*(int *)(lVar2 + 0xe4) == 0) {
    func_0x029f5bd0();
    lVar2 = *(long *)puVar1;
  }
  if (**(long **)(lVar2 + 0xb8) != 0) {
    StepUp__Popup_Open(**(long **)(lVar2 + 0xb8),*(undefined8 *)PTR_DAT_05e5d958);
    return;
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

