/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b2e0ac, Ghidra VA 02c2e0ac. */

void Adventure_manager_Dispatched_Grades_return(undefined8 param_1,int param_2,int param_3)

{
  undefined *puVar1;
  long lVar2;
  
  puVar1 = PTR_DAT_05e5d4d0;
  if ((bRam000000000625c00d & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5d4d0);
    bRam000000000625c00d = 1;
  }
  lVar2 = *(long *)puVar1;
  if (*(int *)(lVar2 + 0xe4) == 0) {
    func_0x029f5bd0();
    lVar2 = *(long *)puVar1;
  }
  lVar2 = *(long *)(*(long *)(lVar2 + 0xb8) + 0x28);
  if (lVar2 != 0) {
    Pet_manager_GetLockedGrades(lVar2,param_3 + param_2 * 100,0);
    return;
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

