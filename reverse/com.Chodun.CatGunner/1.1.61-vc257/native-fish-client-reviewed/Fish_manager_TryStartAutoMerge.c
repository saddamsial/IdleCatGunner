/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b5dcbc, Ghidra VA 02c5dcbc. */

void Fish_manager_TryStartAutoMerge(long param_1)

{
  undefined *puVar1;
  ulong uVar2;
  undefined8 uVar3;
  
  puVar1 = PTR_DAT_05e591c0;
  if ((bRam000000000625c202 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e591c0);
    bRam000000000625c202 = 1;
  }
  uVar3 = *(undefined8 *)(param_1 + 0xa0);
  if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  uVar2 = Object_op_Inequality_0x6000ded(uVar3,0,0);
  if ((uVar2 & 1) != 0) {
    if (*(long *)(param_1 + 0xa0) != 0) {
      Fish_Tank_StartAutoMergeChain();
      return;
    }
                    /* WARNING: Subroutine does not return */
    Throw_NullReference_Wrapper();
  }
  return;
}

