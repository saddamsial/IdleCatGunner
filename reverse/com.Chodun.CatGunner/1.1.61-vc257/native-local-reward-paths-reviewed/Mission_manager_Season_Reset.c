/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2aa49bc, Ghidra VA 02ba49bc. */

void Mission_manager_Season_Reset(long param_1,ulong param_2,ulong param_3)

{
  undefined *puVar1;
  undefined *puVar2;
  long lVar3;
  undefined8 uVar4;
  ulong uVar5;
  uint uVar6;
  ulong uVar7;
  undefined1 *puVar8;
  undefined8 uStack_28;
  
  if ((bRam000000000625ba3e & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e597d0);
    func_0x029f5a50(PTR_DAT_05e5dd50);
    func_0x029f5a50(PTR_DAT_05e5d3c0);
    func_0x029f5a50(PTR_DAT_05e5e728);
    bRam000000000625ba3e = 1;
  }
  uStack_28 = 0;
  if ((param_2 & 1) != 0) {
    *(int *)(param_1 + 0x60) = *(int *)(param_1 + 0x60) + 1;
  }
  puVar1 = PTR_DAT_05e5e728;
  puVar2 = PTR_DAT_05e5d3c0;
  if ((param_3 & 1) != 0) {
    if (*(int *)(*(long *)PTR_DAT_05e5d3c0 + 0xe4) == 0) {
      func_0x029f5bd0();
    }
    Time_manager_RecordGain_0x6000576(*(undefined8 *)puVar1,0);
  }
  puVar1 = PTR_DAT_05e597d0;
  *(undefined4 *)(param_1 + 0xf0) = 0xffffffff;
  *(undefined2 *)(param_1 + 100) = 0x101;
  Mission_manager_Mission_Reset(param_1);
  lVar3 = *(long *)puVar2;
  *(undefined8 *)(param_1 + 0x48) = 0;
  if (*(int *)(lVar3 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  puVar2 = PTR_DAT_05e5dd50;
  uStack_28 = Time_manager_get_Now_0x6000579(0);
  if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
    func_0x029f5bd0(*(long *)puVar1);
  }
  uVar4 = DateTime_AddMonths_0x60005ff(&uStack_28,1,0);
  lVar3 = *(long *)puVar2;
  *(undefined8 *)(param_1 + 0x68) = uVar4;
  if (*(int *)(lVar3 + 0xe4) == 0) {
    func_0x029f5bd0();
    lVar3 = *(long *)puVar2;
  }
  **(undefined2 **)(lVar3 + 0xb8) = 0;
  lVar3 = *(long *)(param_1 + 0x38);
  if (lVar3 != 0) {
    uVar6 = (uint)*(ulong *)(lVar3 + 0x18);
    if (0 < (int)uVar6) {
      uVar5 = (ulong)(uVar6 & ((int)uVar6 >> 0x1f ^ 0xffffffffU));
      uVar7 = *(ulong *)(lVar3 + 0x18) & 0xffffffff;
      puVar8 = (undefined1 *)(lVar3 + 0x20);
      do {
        if (uVar7 == 0) goto LAB_02ba4ba0;
        uVar5 = uVar5 - 1;
        uVar7 = uVar7 - 1;
        *puVar8 = 0;
        puVar8 = puVar8 + 1;
      } while (uVar5 != 0);
    }
    lVar3 = *(long *)(param_1 + 0x40);
    if (lVar3 != 0) {
      uVar6 = (uint)*(ulong *)(lVar3 + 0x18);
      if (0 < (int)uVar6) {
        uVar5 = (ulong)(uVar6 & ((int)uVar6 >> 0x1f ^ 0xffffffffU));
        uVar7 = *(ulong *)(lVar3 + 0x18) & 0xffffffff;
        puVar8 = (undefined1 *)(lVar3 + 0x20);
        do {
          if (uVar7 == 0) {
LAB_02ba4ba0:
                    /* WARNING: Subroutine does not return */
            Throw_Index_Wrapper();
          }
          uVar5 = uVar5 - 1;
          uVar7 = uVar7 - 1;
          *puVar8 = 0;
          puVar8 = puVar8 + 1;
        } while (uVar5 != 0);
      }
      Mission_manager_Reward_Balance_Apply_0x6000343(param_1);
      Mission_manager_Reward_Slot_First_Reload_0x6000353(param_1);
      if (*(long *)(param_1 + 0xc0) != 0) {
        ScrollRect_set_horizontalNormalizedPosition_0x6000402(0,*(long *)(param_1 + 0xc0),0);
        Mission_manager_RestartAlertLoop_0x600033e(param_1);
        if (*(long *)(param_1 + 0x88) != 0) {
          Mission_UI_Season_Changed(*(long *)(param_1 + 0x88),0);
          return;
        }
      }
    }
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

