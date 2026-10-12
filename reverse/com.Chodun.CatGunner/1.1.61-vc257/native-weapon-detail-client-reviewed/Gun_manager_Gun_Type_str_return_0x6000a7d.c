/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b5b2ac, Ghidra VA 02c5b2ac. */

void Gun_manager_Gun_Type_str_return_0x6000a7d(uint param_1)

{
  undefined *puVar1;
  long lVar2;
  
  puVar1 = PTR_DAT_05e5dd40;
  if ((bRam000000000625c27c & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5dd40);
    bRam000000000625c27c = 1;
  }
  if ((**(long **)(*(long *)puVar1 + 0xb8) != 0) &&
     (lVar2 = *(long *)(**(long **)(*(long *)puVar1 + 0xb8) + 0x20), lVar2 != 0)) {
    if (*(uint *)(lVar2 + 0x18) <= param_1) {
                    /* WARNING: Subroutine does not return */
      Throw_Index_Wrapper();
    }
    lVar2 = *(long *)(lVar2 + (long)(int)param_1 * 8 + 0x20);
    if (lVar2 != 0) {
      Gun_manager_Gun_Type_str_return_0x6000a7c(*(undefined4 *)(lVar2 + 0x18));
      return;
    }
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

