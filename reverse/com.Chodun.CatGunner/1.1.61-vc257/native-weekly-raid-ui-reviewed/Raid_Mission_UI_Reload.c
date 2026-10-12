/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b556a8, Ghidra VA 02c556a8. */

void Raid_Mission_UI_Reload(long param_1)

{
  undefined *puVar1;
  undefined *puVar2;
  ulong uVar3;
  ulong uVar4;
  long lVar5;
  long lVar6;
  undefined8 uVar7;
  
  puVar2 = PTR_DAT_05e5e068;
  puVar1 = PTR_DAT_05e591c0;
  if ((bRam000000000625c18d & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e591c0);
    func_0x029f5a50(PTR_DAT_05e5e068);
    bRam000000000625c18d = 1;
  }
  lVar6 = **(long **)(*(long *)puVar2 + 0xb8);
  if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  uVar3 = Object_op_Equality_0x6000dec(lVar6,0,0);
  if ((uVar3 & 1) != 0) {
    return;
  }
  if (lVar6 != 0) {
    Raid_Mission_manager_Refresh_Clear(lVar6);
    lVar5 = *(long *)(param_1 + 0x20);
    if (lVar5 == 0) {
LAB_02c557d0:
      Raid_Mission_UI_Remain_Reload(param_1);
      return;
    }
    uVar3 = 0;
    do {
      if ((long)(int)*(uint *)(lVar5 + 0x18) <= (long)uVar3) {
        Raid_Mission_UI_Sort_Items(param_1,lVar6);
        goto LAB_02c557d0;
      }
      if (*(uint *)(lVar5 + 0x18) <= uVar3) {
LAB_02c557e4:
                    /* WARNING: Subroutine does not return */
        Throw_Index_Wrapper();
      }
      uVar7 = *(undefined8 *)(lVar5 + uVar3 * 8 + 0x20);
      if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
        func_0x029f5bd0();
      }
      uVar4 = Object_op_Equality_0x6000dec(uVar7,0,0);
      if ((uVar4 & 1) == 0) {
        lVar5 = *(long *)(param_1 + 0x20);
        if (lVar5 == 0) break;
        if (*(uint *)(lVar5 + 0x18) <= uVar3) goto LAB_02c557e4;
        lVar5 = *(long *)(lVar5 + uVar3 * 8 + 0x20);
        if (lVar5 == 0) break;
        *(int *)(lVar5 + 0x60) = (int)uVar3;
        Raid_Mission_Item_Reload_0x60008a4();
      }
      lVar5 = *(long *)(param_1 + 0x20);
      uVar3 = uVar3 + 1;
    } while (lVar5 != 0);
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

