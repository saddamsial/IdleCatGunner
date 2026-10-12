/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2a9dfd4, Ghidra VA 02b9dfd4. */

undefined4 Contents_Unlock_manager_Unlock_Stage_return(uint param_1)

{
  undefined *puVar1;
  long lVar2;
  
  puVar1 = PTR_DAT_05e5e4d0;
  if ((bRam000000000625b9e2 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5e4d0);
    bRam000000000625b9e2 = 1;
  }
  lVar2 = *(long *)puVar1;
  if (*(int *)(lVar2 + 0xe4) == 0) {
    func_0x029f5bd0();
    lVar2 = *(long *)puVar1;
  }
  lVar2 = *(long *)(*(long *)(lVar2 + 0xb8) + 8);
  if (lVar2 != 0) {
    if (param_1 < *(uint *)(lVar2 + 0x18)) {
      return *(undefined4 *)(lVar2 + (long)(int)param_1 * 4 + 0x20);
    }
                    /* WARNING: Subroutine does not return */
    Throw_Index_Wrapper();
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

