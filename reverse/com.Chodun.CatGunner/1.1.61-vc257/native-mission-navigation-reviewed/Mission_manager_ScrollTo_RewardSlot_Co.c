/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2aa5df0, Ghidra VA 02ba5df0. */

long Mission_manager_ScrollTo_RewardSlot_Co(undefined8 param_1,undefined4 param_2)

{
  undefined *puVar1;
  long lVar2;
  
  puVar1 = PTR_DAT_05e5e790;
  if ((bRam000000000625ba4b & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5e790);
    bRam000000000625ba4b = 1;
  }
  lVar2 = func_0x029f5cec(*(undefined8 *)puVar1);
  _ScrollTo_RewardSlot_Co_d__68__ctor_0x600037d(lVar2,0,0);
  if (lVar2 != 0) {
    *(undefined8 *)(lVar2 + 0x20) = param_1;
    Managed_WriteBarrier((undefined8 *)(lVar2 + 0x20),param_1);
    *(undefined4 *)(lVar2 + 0x28) = param_2;
    return lVar2;
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

