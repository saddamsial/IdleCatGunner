/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2ba7d74, Ghidra VA 02ca7d74. */

int Skin_manager_Money_Accum_return(long param_1)

{
  int iVar1;
  ulong uVar2;
  uint uVar3;
  long lVar4;
  long lVar5;
  
  lVar4 = *(long *)(param_1 + 0x28);
  if (lVar4 == 0) {
LAB_02ca7dfc:
                    /* WARNING: Subroutine does not return */
    Throw_NullReference_Wrapper();
  }
  uVar3 = (uint)*(ulong *)(lVar4 + 0x18);
  if ((int)uVar3 < 1) {
    iVar1 = 0;
  }
  else {
    iVar1 = 0;
    uVar2 = 0;
    do {
      if ((*(ulong *)(lVar4 + 0x18) & 0xffffffff) == uVar2) {
LAB_02ca7df8:
                    /* WARNING: Subroutine does not return */
        Throw_Index_Wrapper();
      }
      if (*(char *)(lVar4 + 0x20 + uVar2) != '\0') {
        lVar5 = *(long *)(param_1 + 0x20);
        if (lVar5 == 0) goto LAB_02ca7dfc;
        if (*(uint *)(lVar5 + 0x18) <= uVar2) goto LAB_02ca7df8;
        lVar5 = *(long *)(lVar5 + uVar2 * 8 + 0x20);
        if (lVar5 == 0) goto LAB_02ca7dfc;
        iVar1 = *(int *)(lVar5 + 0x18) + iVar1;
      }
      uVar2 = uVar2 + 1;
    } while ((uVar3 & ((int)uVar3 >> 0x1f ^ 0xffffffffU)) != uVar2);
  }
  return iVar1;
}

