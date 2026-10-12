/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2aa54cc, Ghidra VA 02ba54cc. */

long Mission_manager_ScrollToRewardLv(undefined8 param_1)

{
  undefined *puVar1;
  long lVar2;
  
  puVar1 = PTR_DAT_05e5e740;
  if ((bRam000000000625ba46 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5e740);
    bRam000000000625ba46 = 1;
  }
  lVar2 = func_0x029f5cec(*(undefined8 *)puVar1);
  _ScrollToRewardLv_d__58__ctor_0x6000377(lVar2,0,0);
  if (lVar2 != 0) {
    *(undefined8 *)(lVar2 + 0x20) = param_1;
    Managed_WriteBarrier((undefined8 *)(lVar2 + 0x20),param_1);
    return lVar2;
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

