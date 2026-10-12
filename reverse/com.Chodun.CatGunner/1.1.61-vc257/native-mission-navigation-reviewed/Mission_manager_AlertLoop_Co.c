/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2aa43b8, Ghidra VA 02ba43b8. */

long Mission_manager_AlertLoop_Co(undefined8 param_1)

{
  undefined *puVar1;
  long lVar2;
  
  puVar1 = PTR_DAT_05e5e6f8;
  if ((bRam000000000625ba39 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5e6f8);
    bRam000000000625ba39 = 1;
  }
  lVar2 = func_0x029f5cec(*(undefined8 *)puVar1);
  _AlertLoop_Co_d__33__ctor_0x6000371(lVar2,0,0);
  if (lVar2 != 0) {
    *(undefined8 *)(lVar2 + 0x20) = param_1;
    Managed_WriteBarrier((undefined8 *)(lVar2 + 0x20),param_1);
    return lVar2;
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

