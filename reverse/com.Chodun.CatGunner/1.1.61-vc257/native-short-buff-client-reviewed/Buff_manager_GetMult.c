/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b376a8, Ghidra VA 02c376a8. */

undefined4 Buff_manager_GetMult(undefined8 param_1)

{
  ulong uVar1;
  undefined4 uVar2;
  
  uVar1 = Buff_manager_IsBuffActive();
  if ((uVar1 & 1) == 0) {
    uVar2 = 1;
  }
  else {
    uVar1 = Buff_manager_get_IsSuperBuff(param_1);
    uVar2 = 3;
    if ((uVar1 & 1) != 0) {
      uVar2 = 4;
    }
  }
  return uVar2;
}

