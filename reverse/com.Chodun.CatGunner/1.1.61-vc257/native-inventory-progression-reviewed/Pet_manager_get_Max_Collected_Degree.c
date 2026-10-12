/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b7d7e4, Ghidra VA 02c7d7e4. */

ulong Pet_manager_get_Max_Collected_Degree(long param_1)

{
  uint uVar1;
  ulong uVar2;
  long lVar3;
  ulong uVar4;
  ulong uVar5;
  
  lVar3 = *(long *)(param_1 + 0x28);
  if (lVar3 == 0) {
LAB_02c7d824:
    uVar2 = 0xffffffff;
  }
  else {
    uVar4 = *(ulong *)(lVar3 + 0x18);
    uVar5 = uVar4 & 0xffffffff;
    uVar2 = uVar4 & 0xffffffff;
    do {
      uVar5 = uVar5 - 1;
      uVar1 = (int)uVar2 - 1;
      uVar2 = (ulong)uVar1;
      if ((int)uVar1 < 0) goto LAB_02c7d824;
      if ((uint)uVar4 <= uVar1) {
                    /* WARNING: Subroutine does not return */
        Throw_Index_Wrapper();
      }
    } while (*(char *)(lVar3 + (uVar5 & 0xffffffff) + 0x20) == '\0');
  }
  return uVar2;
}

