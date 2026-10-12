/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b69554, Ghidra VA 02c69554. */

ulong Gun_manager_get_Max_Collected_Degree(long param_1)

{
  uint uVar1;
  long lVar2;
  ulong uVar3;
  ulong uVar4;
  ulong uVar5;
  
  lVar2 = *(long *)(param_1 + 0x30);
  if (lVar2 == 0) {
LAB_02c695a4:
    uVar4 = 0xffffffff;
  }
  else {
    uVar3 = *(ulong *)(lVar2 + 0x18);
    uVar4 = uVar3 & 0xffffffff;
    uVar5 = uVar3 & 0xffffffff;
    do {
      uVar4 = uVar4 - 1;
      uVar1 = (int)uVar5 - 1;
      uVar5 = (ulong)uVar1;
      if ((int)uVar1 < 0) goto LAB_02c695a4;
      if ((uint)uVar3 <= uVar1) {
                    /* WARNING: Subroutine does not return */
        Throw_Index_Wrapper();
      }
    } while (*(char *)(lVar2 + (uVar4 & 0xffffffff) + 0x20) == '\0');
    uVar4 = (ulong)uVar1 / 5;
  }
  return uVar4;
}

