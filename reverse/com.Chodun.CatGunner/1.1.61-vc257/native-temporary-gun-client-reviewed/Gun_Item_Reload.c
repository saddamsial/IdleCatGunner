/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b70974, Ghidra VA 02c70974. */

void Gun_Item_Reload(long param_1,uint param_2,undefined4 param_3)

{
  int iVar1;
  undefined *puVar2;
  undefined *puVar3;
  byte bVar4;
  ulong uVar5;
  long lVar6;
  undefined8 uVar7;
  long lVar8;
  long *plVar9;
  uint uVar10;
  
  puVar3 = PTR_DAT_05e5dd40;
  if ((bRam000000000625c2c6 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5dd40);
    func_0x029f5a50(PTR_DAT_05e591c0);
    bRam000000000625c2c6 = 1;
  }
  lVar6 = *(long *)puVar3;
  *(uint *)(param_1 + 0x8c) = param_2;
  *(undefined4 *)(param_1 + 0x90) = param_3;
  if ((**(long **)(lVar6 + 0xb8) != 0) &&
     (lVar6 = *(long *)(**(long **)(lVar6 + 0xb8) + 0x48), lVar6 != 0)) {
    if (*(uint *)(lVar6 + 0x18) <= param_2) {
LAB_02c70c84:
                    /* WARNING: Subroutine does not return */
      Throw_Index_Wrapper();
    }
    if (*(long *)(param_1 + 0x20) != 0) {
      lVar8 = *(long *)(param_1 + 0x28);
      uVar7 = *(undefined8 *)(lVar6 + (long)(int)param_2 * 8 + 0x20);
      Image_set_sprite_0x600013f(*(long *)(param_1 + 0x20),uVar7,0);
      if (lVar8 != 0) {
        Image_set_sprite_0x600013f(lVar8,uVar7,0);
        if (*(long *)(param_1 + 0x38) != 0) {
          GameObject_SetActive_0x6000cfe(*(long *)(param_1 + 0x38),0,0);
          plVar9 = *(long **)(param_1 + 0x30);
          Gun_manager_Degree_Color_return_0x6000a7b((int)param_2 / 5,0);
          if (plVar9 != (long *)0x0) {
            (**(code **)(*plVar9 + 0x2a8))(plVar9,*(undefined8 *)(*plVar9 + 0x2b0));
            puVar2 = PTR_DAT_05e591c0;
            lVar6 = *(long *)(param_1 + 0x40);
            if (lVar6 != 0) {
              lVar8 = 0;
              do {
                uVar10 = (uint)lVar8;
                if ((int)*(uint *)(lVar6 + 0x18) <= (int)uVar10) {
                  plVar9 = *(long **)(param_1 + 0x48);
                  uVar7 = Gun_manager_Gun_Type_str_return_0x6000a7d(param_2,0);
                  if (plVar9 == (long *)0x0) break;
                  (**(code **)(*plVar9 + 0x558))(plVar9,uVar7,*(undefined8 *)(*plVar9 + 0x560));
                  if (**(long **)(*(long *)puVar3 + 0xb8) == 0) break;
                  bVar4 = Gun_manager_Is_AdRewardSlot(**(long **)(*(long *)puVar3 + 0xb8),param_3,0)
                  ;
                  uVar7 = *(undefined8 *)(param_1 + 0x58);
                  iVar1 = *(int *)(*(long *)puVar2 + 0xe4);
                  *(byte *)(param_1 + 0x70) = bVar4 & 1;
                  if (iVar1 == 0) {
                    func_0x029f5bd0();
                  }
                  uVar5 = Object_op_Inequality_0x6000ded(uVar7,0,0);
                  if ((uVar5 & 1) != 0) {
                    if (*(long *)(param_1 + 0x58) == 0) break;
                    GameObject_SetActive_0x6000cfe
                              (*(long *)(param_1 + 0x58),*(undefined1 *)(param_1 + 0x70),0);
                  }
                  if (*(char *)(param_1 + 0x70) != '\0') {
                    Gun_Item_UpdateAdTimeText(param_1);
                  }
                  if (**(long **)(*(long *)puVar3 + 0xb8) == 0) break;
                  bVar4 = Gun_manager_Is_Owned_Paused_0x6000a4c
                                    (**(long **)(*(long *)puVar3 + 0xb8),param_3,0);
                  uVar7 = *(undefined8 *)(param_1 + 0x50);
                  iVar1 = *(int *)(*(long *)puVar2 + 0xe4);
                  *(byte *)(param_1 + 0x78) = bVar4 & 1;
                  if (iVar1 == 0) {
                    func_0x029f5bd0();
                  }
                  uVar5 = Object_op_Inequality_0x6000ded(uVar7,0,0);
                  if ((uVar5 & 1) != 0) {
                    if (*(long *)(param_1 + 0x50) == 0) break;
                    GameObject_SetActive_0x6000cfe
                              (*(long *)(param_1 + 0x50),*(undefined1 *)(param_1 + 0x78),0);
                  }
                  Gun_Item_ResetScale_0x6000b24(param_1);
                  Gun_Item_EndAutoMerge_0x6000b1c(param_1);
                  *(undefined2 *)(param_1 + 0xb8) = 0;
                  *(undefined8 *)(param_1 + 0xc0) = 0;
                  Managed_WriteBarrier((undefined8 *)(param_1 + 0xc0),0);
                  *(undefined1 *)(param_1 + 200) = 0;
                  *(undefined8 *)(param_1 + 0xd0) = 0;
                  Managed_WriteBarrier((undefined8 *)(param_1 + 0xd0),0);
                  *(undefined8 *)(param_1 + 0xe0) = 0;
                  *(undefined4 *)(param_1 + 0xd8) = 0xffffffff;
                  Managed_WriteBarrier((undefined8 *)(param_1 + 0xe0),0);
                  lVar6 = *(long *)puVar2;
                  uVar7 = *(undefined8 *)(param_1 + 0xa8);
                  *(undefined1 *)(param_1 + 0xe8) = 0;
                  if (*(int *)(lVar6 + 0xe4) == 0) {
                    func_0x029f5bd0();
                  }
                  uVar5 = Object_op_Inequality_0x6000ded(uVar7,0,0);
                  if ((uVar5 & 1) == 0) {
                    return;
                  }
                  if (*(long *)(param_1 + 0xa8) != 0) {
                    CanvasGroup_set_blocksRaycasts_0x6000007(*(long *)(param_1 + 0xa8),1,0);
                    return;
                  }
                  break;
                }
                if (*(uint *)(lVar6 + 0x18) <= uVar10) goto LAB_02c70c84;
                lVar6 = *(long *)(lVar6 + lVar8 * 8 + 0x20);
                if (lVar6 == 0) break;
                GameObject_SetActive_0x6000cfe(lVar6,(int)param_2 / 5 == uVar10,0);
                lVar6 = *(long *)(param_1 + 0x40);
                lVar8 = lVar8 + 1;
              } while (lVar6 != 0);
            }
          }
        }
      }
    }
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

