/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b52fb8, Ghidra VA 02c52fb8. */

void Raid_Mission_manager_Progress_return(long param_1,uint param_2,int *param_3,int *param_4)

{
  int iVar1;
  int iVar2;
  long lVar3;
  int iVar4;
  long lVar5;
  
  *param_3 = 0;
  *param_4 = 1;
  if (7 < param_2) {
    return;
  }
  Raid_Mission_manager_Season_Check();
  lVar3 = *(long *)(param_1 + 0x20);
  if (lVar3 != 0) {
    if (*(uint *)(lVar3 + 0x18) <= param_2) {
LAB_02c53074:
                    /* WARNING: Subroutine does not return */
      Throw_Index_Wrapper();
    }
    lVar3 = *(long *)(lVar3 + (ulong)param_2 * 8 + 0x20);
    if (lVar3 != 0) {
      iVar4 = *(int *)(lVar3 + 0x14);
      lVar5 = *(long *)(param_1 + 0x30);
      if (iVar4 < 2) {
        iVar4 = 1;
      }
      *param_4 = iVar4;
      if (lVar5 != 0) {
        if (param_2 < *(uint *)(lVar5 + 0x18)) {
          if (*(char *)(lVar5 + (ulong)param_2 + 0x20) == '\0') {
            iVar2 = Raid_Mission_manager_Current_Value(*(undefined4 *)(lVar3 + 0x10));
            iVar1 = iVar2;
            if (*param_4 <= iVar2) {
              iVar1 = *param_4;
            }
            iVar4 = 0;
            if (-1 < iVar2) {
              iVar4 = iVar1;
            }
          }
          *param_3 = iVar4;
          return;
        }
        goto LAB_02c53074;
      }
    }
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

