/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b6b15c, Ghidra VA 02c6b15c. */

bool _ReloadNextFrame_d__2_MoveNext(long param_1)

{
  int iVar1;
  
  iVar1 = *(int *)(param_1 + 0x10);
  if (iVar1 == 0) {
    *(undefined8 *)(param_1 + 0x18) = 0;
    *(undefined4 *)(param_1 + 0x10) = 0xffffffff;
    Managed_WriteBarrier((undefined8 *)(param_1 + 0x18),0);
    *(undefined4 *)(param_1 + 0x10) = 1;
  }
  else if (iVar1 == 1) {
    *(undefined4 *)(param_1 + 0x10) = 0xffffffff;
    if (*(long *)(param_1 + 0x20) == 0) {
                    /* WARNING: Subroutine does not return */
      Throw_NullReference_Wrapper();
    }
    Gun_Merge_Tutorial_Reload();
  }
  return iVar1 == 0;
}

