/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b36128, Ghidra VA 02c36128. */

void Adventure_PetSelect_Slot_OnClick(long param_1)

{
  ulong uVar1;
  undefined8 uVar2;
  
  if ((bRam000000000625c069 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e591c0);
    bRam000000000625c069 = 1;
  }
  if ((*(char *)(param_1 + 0x48) != '\0') && (*(char *)(param_1 + 0x49) != '\0')) {
    uVar2 = *(undefined8 *)(param_1 + 0x38);
    if (*(int *)(*(long *)PTR_DAT_05e591c0 + 0xe4) == 0) {
      func_0x029f5bd0();
    }
    uVar1 = Object_op_Inequality_0x6000ded(uVar2,0,0);
    if ((uVar1 & 1) != 0) {
      if (*(long *)(param_1 + 0x38) != 0) {
        Adventure_PetSelect_popup_Pet_Select
                  (*(long *)(param_1 + 0x38),*(undefined8 *)(param_1 + 0x40));
        return;
      }
                    /* WARNING: Subroutine does not return */
      Throw_NullReference_Wrapper();
    }
  }
  return;
}

