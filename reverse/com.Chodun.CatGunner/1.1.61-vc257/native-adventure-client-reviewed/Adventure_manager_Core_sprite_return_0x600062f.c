/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b2cf08, Ghidra VA 02c2cf08. */

undefined8 Adventure_manager_Core_sprite_return_0x600062f(uint param_1)

{
  undefined *puVar1;
  long lVar2;
  
  puVar1 = PTR_DAT_05e5dd28;
  if ((bRam000000000625bfff & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5dd28);
    bRam000000000625bfff = 1;
  }
  lVar2 = *(long *)puVar1;
  if (*(int *)(lVar2 + 0xe4) == 0) {
    func_0x029f5bd0();
    lVar2 = *(long *)puVar1;
  }
  lVar2 = *(long *)(*(long *)(lVar2 + 0xb8) + 0x10);
  if ((lVar2 != 0) && (lVar2 = *(long *)(lVar2 + 0x90), lVar2 != 0)) {
    if (param_1 < *(uint *)(lVar2 + 0x18)) {
      return *(undefined8 *)(lVar2 + (long)(int)param_1 * 8 + 0x20);
    }
                    /* WARNING: Subroutine does not return */
    Throw_Index_Wrapper();
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

