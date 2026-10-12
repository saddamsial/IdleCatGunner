/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b034d0, Ghidra VA 02c034d0. */

bool _AlertLoop_Co_d__33_MoveNext(long param_1)

{
  uint uVar1;
  undefined8 uVar2;
  
  if ((bRam000000000625be56 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5a710);
    bRam000000000625be56 = 1;
  }
  uVar1 = *(uint *)(param_1 + 0x10);
  if (uVar1 < 2) {
    *(undefined4 *)(param_1 + 0x10) = 0xffffffff;
    if (*(long *)(param_1 + 0x20) == 0) {
                    /* WARNING: Subroutine does not return */
      Throw_NullReference_Wrapper();
    }
    Mission_manager_Alert_Check(*(long *)(param_1 + 0x20),0);
    uVar2 = func_0x029f5cec(*(undefined8 *)PTR_DAT_05e5a710);
    WaitForSeconds__ctor_0x6000e26(0x40000000,uVar2,0);
    *(undefined8 *)(param_1 + 0x18) = uVar2;
    Managed_WriteBarrier((undefined8 *)(param_1 + 0x18),uVar2);
    *(undefined4 *)(param_1 + 0x10) = 1;
  }
  return uVar1 < 2;
}

