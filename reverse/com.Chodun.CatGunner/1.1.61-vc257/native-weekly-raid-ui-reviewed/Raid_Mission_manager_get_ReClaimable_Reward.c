/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b54698, Ghidra VA 02c54698. */

void Raid_Mission_manager_get_ReClaimable_Reward(long param_1)

{
  int iVar1;
  ulong uVar2;
  long lVar3;
  long lVar4;
  
  Raid_Mission_manager_Refresh_Clear();
  lVar3 = *(long *)(param_1 + 0x30);
  if (lVar3 != 0) {
    uVar2 = 0;
    iVar1 = 0;
    do {
      if (*(uint *)(lVar3 + 0x18) == uVar2) {
LAB_02c54728:
                    /* WARNING: Subroutine does not return */
        Throw_Index_Wrapper(iVar1);
      }
      if (*(char *)(lVar3 + 0x20 + uVar2) != '\0') {
        lVar4 = *(long *)(param_1 + 0x40);
        if (lVar4 == 0) break;
        if (*(uint *)(lVar4 + 0x18) <= uVar2) goto LAB_02c54728;
        if (*(char *)(lVar4 + uVar2 + 0x20) == '\0') {
          lVar4 = *(long *)(param_1 + 0x20);
          if (lVar4 == 0) break;
          if (*(uint *)(lVar4 + 0x18) <= uVar2) goto LAB_02c54728;
          lVar4 = *(long *)(lVar4 + uVar2 * 8 + 0x20);
          if (lVar4 == 0) break;
          iVar1 = *(int *)(lVar4 + 0x18) + iVar1;
        }
      }
      uVar2 = uVar2 + 1;
      if (uVar2 == 8) {
        return;
      }
    } while( true );
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

