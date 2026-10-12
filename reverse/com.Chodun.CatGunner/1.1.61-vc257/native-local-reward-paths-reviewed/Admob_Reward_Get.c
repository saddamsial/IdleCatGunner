/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2a89e4c, Ghidra VA 02b89e4c. */

long Admob_Reward_Get(undefined8 param_1)

{
  undefined *puVar1;
  long lVar2;
  
  puVar1 = PTR_DAT_05e5d980;
  if ((bRam000000000625b926 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5d980);
    bRam000000000625b926 = 1;
  }
  lVar2 = func_0x029f5cec(*(undefined8 *)puVar1);
  _Reward_Get_d__70__ctor_0x60001de(lVar2,0,0);
  if (lVar2 != 0) {
    *(undefined8 *)(lVar2 + 0x20) = param_1;
    Managed_WriteBarrier((undefined8 *)(lVar2 + 0x20),param_1);
    return lVar2;
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

