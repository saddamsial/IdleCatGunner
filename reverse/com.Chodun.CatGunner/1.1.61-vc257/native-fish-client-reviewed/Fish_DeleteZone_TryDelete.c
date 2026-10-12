/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b601d4, Ghidra VA 02c601d4. */

void Fish_DeleteZone_TryDelete(long param_1,undefined8 param_2)

{
  undefined *puVar1;
  ulong uVar2;
  undefined8 uVar3;
  
  puVar1 = PTR_DAT_05e591c0;
  if ((bRam000000000625c218 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e591c0);
    bRam000000000625c218 = 1;
  }
  Fish_DeleteZone_Hide(param_1);
  uVar3 = *(undefined8 *)(param_1 + 0x20);
  if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  uVar2 = Object_op_Inequality_0x6000ded(uVar3,0,0);
  if ((uVar2 & 1) != 0) {
    if (*(long *)(param_1 + 0x20) != 0) {
      Fish_DeletePopup_Show(*(long *)(param_1 + 0x20),param_2);
      return;
    }
                    /* WARNING: Subroutine does not return */
    Throw_NullReference_Wrapper();
  }
  return;
}

