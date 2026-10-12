/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b52a00, Ghidra VA 02c52a00. */

void Raid_Mission_Item_Reload_0x60008a4(long param_1)

{
  float fVar1;
  undefined *puVar2;
  undefined *puVar3;
  int iVar4;
  ulong uVar5;
  undefined8 uVar6;
  long lVar7;
  undefined8 uVar8;
  long *plVar9;
  float fVar10;
  float fVar11;
  undefined4 uStack_4c;
  undefined4 uStack_48;
  undefined4 uStack_44;
  undefined8 uStack_38;
  
  puVar2 = PTR_DAT_05e5e068;
  puVar3 = PTR_DAT_05e591c0;
  if ((bRam000000000625c169 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e591c0);
    func_0x029f5a50(PTR_DAT_05e5e068);
    func_0x029f5a50(PTR_DAT_05e61f28);
    bRam000000000625c169 = 1;
  }
  uStack_38 = 0;
  uStack_44 = 0;
  lVar7 = **(long **)(*(long *)puVar2 + 0xb8);
  if (*(int *)(*(long *)puVar3 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  uVar5 = Object_op_Equality_0x6000dec(lVar7,0,0);
  if ((uVar5 & 1) == 0) {
    if (lVar7 == 0) {
LAB_02c52db4:
                    /* WARNING: Subroutine does not return */
      Throw_NullReference_Wrapper();
    }
    if (*(uint *)(param_1 + 0x60) < 8) {
      uVar8 = *(undefined8 *)(param_1 + 0x20);
      if (*(int *)(*(long *)puVar3 + 0xe4) == 0) {
        func_0x029f5bd0();
      }
      uVar5 = Object_op_Inequality_0x6000ded(uVar8,0,0);
      if ((uVar5 & 1) != 0) {
        plVar9 = *(long **)(param_1 + 0x20);
        uStack_44 = Raid_Mission_manager_Reward_return(lVar7,*(undefined4 *)(param_1 + 0x60));
        uVar8 = Int32_ToString_0x600080e(&uStack_44,0);
        if (plVar9 == (long *)0x0) goto LAB_02c52db4;
        (**(code **)(*plVar9 + 0x558))(plVar9,uVar8,*(undefined8 *)(*plVar9 + 0x560));
      }
      uVar8 = *(undefined8 *)(param_1 + 0x28);
      if (*(int *)(*(long *)puVar3 + 0xe4) == 0) {
        func_0x029f5bd0();
      }
      uVar5 = Object_op_Inequality_0x6000ded(uVar8,0,0);
      if ((uVar5 & 1) != 0) {
        plVar9 = *(long **)(param_1 + 0x28);
        uVar8 = Raid_Mission_manager_Explain_return(lVar7,*(undefined4 *)(param_1 + 0x60));
        if (plVar9 == (long *)0x0) goto LAB_02c52db4;
        (**(code **)(*plVar9 + 0x558))(plVar9,uVar8,*(undefined8 *)(*plVar9 + 0x560));
      }
      Raid_Mission_manager_Progress_return
                (lVar7,*(undefined4 *)(param_1 + 0x60),(long)&uStack_38 + 4,&uStack_38);
      uVar8 = *(undefined8 *)(param_1 + 0x30);
      if (*(int *)(*(long *)puVar3 + 0xe4) == 0) {
        func_0x029f5bd0();
      }
      uVar5 = Object_op_Inequality_0x6000ded(uVar8,0,0);
      puVar2 = PTR_DAT_05e58a10;
      if ((uVar5 & 1) != 0) {
        plVar9 = *(long **)(param_1 + 0x30);
        uStack_48 = uStack_38._4_4_;
        uVar8 = func_0x029f5bd8(*(undefined8 *)(PTR_DAT_05e58a10 + 0x48),&uStack_48);
        uStack_4c = (int)uStack_38;
        uVar6 = func_0x029f5bd8(*(undefined8 *)(puVar2 + 0x48),&uStack_4c);
        uVar8 = String_Format_0x600029d(*(undefined8 *)PTR_DAT_05e61f28,uVar8,uVar6,0);
        if (plVar9 == (long *)0x0) goto LAB_02c52db4;
        (**(code **)(*plVar9 + 0x558))(plVar9,uVar8,*(undefined8 *)(*plVar9 + 0x560));
      }
      uVar8 = *(undefined8 *)(param_1 + 0x58);
      if (*(int *)(*(long *)puVar3 + 0xe4) == 0) {
        func_0x029f5bd0();
      }
      uVar5 = Object_op_Inequality_0x6000ded(uVar8,0,0);
      if ((uVar5 & 1) != 0) {
        if ((int)uStack_38 < 1) {
          fVar1 = 0.0;
        }
        else {
          fVar10 = (float)uStack_38._4_4_ / (float)(int)uStack_38;
          fVar11 = 1.0;
          if (fVar10 <= 1.0) {
            fVar11 = fVar10;
          }
          fVar1 = 0.0;
          if (0.0 <= fVar10) {
            fVar1 = fVar11;
          }
        }
        if (*(long *)(param_1 + 0x58) == 0) goto LAB_02c52db4;
        SlicedFilledImage_set_fillAmount_0x60005d0(fVar1,*(long *)(param_1 + 0x58),0);
      }
      iVar4 = Raid_Mission_manager_State_return(lVar7,*(undefined4 *)(param_1 + 0x60));
      uVar8 = *(undefined8 *)(param_1 + 0x38);
      if (*(int *)(*(long *)puVar3 + 0xe4) == 0) {
        func_0x029f5bd0(*(long *)puVar3);
      }
      uVar5 = Object_op_Inequality_0x6000ded(uVar8,0,0);
      if ((uVar5 & 1) != 0) {
        if (*(long *)(param_1 + 0x38) == 0) goto LAB_02c52db4;
        GameObject_SetActive_0x6000cfe(*(long *)(param_1 + 0x38),iVar4 == 0,0);
      }
      uVar8 = *(undefined8 *)(param_1 + 0x40);
      if (*(int *)(*(long *)puVar3 + 0xe4) == 0) {
        func_0x029f5bd0();
      }
      uVar5 = Object_op_Inequality_0x6000ded(uVar8,0,0);
      if ((uVar5 & 1) != 0) {
        if (*(long *)(param_1 + 0x40) == 0) goto LAB_02c52db4;
        GameObject_SetActive_0x6000cfe(*(long *)(param_1 + 0x40),iVar4 == 1,0);
      }
      uVar8 = *(undefined8 *)(param_1 + 0x48);
      if (*(int *)(*(long *)puVar3 + 0xe4) == 0) {
        func_0x029f5bd0();
      }
      uVar5 = Object_op_Inequality_0x6000ded(uVar8,0,0);
      if ((uVar5 & 1) != 0) {
        if (*(long *)(param_1 + 0x48) == 0) goto LAB_02c52db4;
        GameObject_SetActive_0x6000cfe(*(long *)(param_1 + 0x48),iVar4 == 2,0);
      }
      uVar8 = *(undefined8 *)(param_1 + 0x50);
      if (*(int *)(*(long *)puVar3 + 0xe4) == 0) {
        func_0x029f5bd0();
      }
      uVar5 = Object_op_Inequality_0x6000ded(uVar8,0,0);
      if ((uVar5 & 1) != 0) {
        if (*(long *)(param_1 + 0x50) == 0) goto LAB_02c52db4;
        GameObject_SetActive_0x6000cfe(*(long *)(param_1 + 0x50),iVar4 == 3,0);
      }
    }
  }
  return;
}

