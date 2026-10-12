/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b681e0, Ghidra VA 02c681e0. */

void Gun_manager_Owned_Swap(long param_1,ulong param_2,uint param_3)

{
  undefined4 uVar1;
  bool bVar2;
  bool bVar3;
  uint uVar4;
  undefined4 *puVar5;
  long lVar6;
  undefined4 *puVar7;
  long lVar8;
  
  uVar4 = (uint)param_2;
  if (uVar4 == param_3) {
    return;
  }
  lVar6 = *(long *)(param_1 + 0x40);
  if (lVar6 != 0) {
    if ((uVar4 < *(uint *)(lVar6 + 0x18)) && (param_3 < *(uint *)(lVar6 + 0x18))) {
      lVar8 = *(long *)(param_1 + 0x60);
      bVar2 = false;
      if ((-1 < (int)uVar4) && (lVar8 != 0)) {
        if ((int)uVar4 < *(int *)(lVar8 + 0x18)) {
          bVar2 = *(char *)(lVar8 + (param_2 & 0xffffffff) + 0x20) != '\0';
        }
        else {
          bVar2 = false;
        }
      }
      puVar5 = (undefined4 *)(lVar6 + (long)(int)uVar4 * 4 + 0x20);
      uVar1 = *puVar5;
      bVar3 = false;
      puVar7 = (undefined4 *)(lVar6 + (long)(int)param_3 * 4 + 0x20);
      if ((-1 < (int)param_3) && (lVar8 != 0)) {
        if ((int)param_3 < *(int *)(lVar8 + 0x18)) {
          bVar3 = *(char *)(lVar8 + (ulong)param_3 + 0x20) != '\0';
        }
        else {
          bVar3 = false;
        }
      }
      *puVar5 = *puVar7;
      *puVar7 = uVar1;
      Gun_manager_Owned_Pause_Set_0x6000a50(param_1,param_2,bVar3);
      Gun_manager_Owned_Pause_Set_0x6000a50(param_1,param_3,bVar2);
      return;
    }
                    /* WARNING: Subroutine does not return */
    Throw_Index_Wrapper();
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

