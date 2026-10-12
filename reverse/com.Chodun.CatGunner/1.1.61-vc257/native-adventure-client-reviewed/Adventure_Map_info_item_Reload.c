/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b345c8, Ghidra VA 02c345c8. */

void Adventure_Map_info_item_Reload(long param_1,uint param_2,uint param_3)

{
  undefined *puVar1;
  undefined *puVar2;
  undefined *puVar3;
  byte bVar4;
  uint uVar5;
  undefined8 uVar6;
  long lVar7;
  undefined8 uVar8;
  long *plVar9;
  long lVar10;
  int iStack_4c;
  undefined4 uStack_48;
  int iStack_44;
  
  puVar2 = PTR_DAT_05e630d0;
  if ((bRam000000000625c056 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5dd28);
    func_0x029f5a50(PTR_DAT_05e630d0);
    func_0x029f5a50(PTR_DAT_05e630d8);
    bRam000000000625c056 = 1;
  }
  puVar1 = PTR_DAT_05e58a10;
  iStack_44 = param_3 + 1;
  plVar9 = *(long **)(param_1 + 0x60);
  *(uint *)(param_1 + 0x90) = param_2;
  *(uint *)(param_1 + 0x94) = param_3;
  uVar6 = func_0x029f5bd8(*(undefined8 *)(puVar1 + 0x48),&iStack_44);
  uVar6 = String_Format_0x600029c(*(undefined8 *)puVar2,uVar6,0);
  puVar2 = PTR_DAT_05e5dd28;
  if (plVar9 != (long *)0x0) {
    (**(code **)(*plVar9 + 0x558))(plVar9,uVar6,*(undefined8 *)(*plVar9 + 0x560));
    lVar7 = *(long *)puVar2;
    plVar9 = *(long **)(param_1 + 0x68);
    if (*(int *)(lVar7 + 0xe4) == 0) {
      func_0x029f5bd0();
      lVar7 = *(long *)puVar2;
    }
    puVar3 = PTR_DAT_05e630d8;
    lVar7 = *(long *)(*(long *)(lVar7 + 0xb8) + 0x10);
    if (lVar7 != 0) {
      uStack_48 = Adventure_manager_Adventure_Effective_Duration_return(lVar7,param_3,0);
      uVar6 = func_0x029f5bd8(*(undefined8 *)(puVar1 + 0x48),&uStack_48);
      uVar6 = String_Format_0x600029c(*(undefined8 *)puVar3,uVar6,0);
      if (plVar9 != (long *)0x0) {
        (**(code **)(*plVar9 + 0x558))(plVar9,uVar6,*(undefined8 *)(*plVar9 + 0x560));
        lVar7 = *(long *)(param_1 + 0x50);
        if (lVar7 != 0) {
          lVar10 = 0;
          do {
            uVar5 = (uint)lVar10;
            if ((int)*(uint *)(lVar7 + 0x18) <= (int)uVar5) {
              lVar7 = *(long *)(param_1 + 0x58);
              if (*(int *)(*(long *)puVar2 + 0xe4) == 0) {
                func_0x029f5bd0();
              }
              uVar6 = Adventure_manager_Core_sprite_return_0x600062e(param_2,0);
              if (lVar7 == 0) break;
              Image_set_sprite_0x600013f(lVar7,uVar6,0);
              lVar7 = *(long *)(*(long *)(*(long *)puVar2 + 0xb8) + 0x10);
              if (lVar7 == 0) break;
              uVar5 = Adventure_manager_Map_Status_return(lVar7,param_2,param_3,0);
              bVar4 = Adventure_manager_is_OpenDay_return_0x6000646(param_2,0);
              if (*(long *)(param_1 + 0x20) == 0) break;
              GameObject_SetActive_0x6000cfe(*(long *)(param_1 + 0x20),uVar5 == 0,0);
              if (*(long *)(param_1 + 0x28) == 0) break;
              GameObject_SetActive_0x6000cfe(*(long *)(param_1 + 0x28),uVar5 == 1 & bVar4,0);
              if (*(long *)(param_1 + 0x40) == 0) break;
              GameObject_SetActive_0x6000cfe(*(long *)(param_1 + 0x40),uVar5 == 1 & (bVar4 ^ 1),0);
              if (*(long *)(param_1 + 0x30) == 0) break;
              GameObject_SetActive_0x6000cfe(*(long *)(param_1 + 0x30),uVar5 == 2,0);
              if (*(long *)(param_1 + 0x38) == 0) break;
              GameObject_SetActive_0x6000cfe(*(long *)(param_1 + 0x38),uVar5 == 3,0);
              if ((uVar5 & 0xfffffffe) == 2) {
                lVar7 = *(long *)puVar2;
                if (*(int *)(lVar7 + 0xe4) == 0) {
                  func_0x029f5bd0();
                  lVar7 = *(long *)puVar2;
                }
                lVar7 = *(long *)(*(long *)(lVar7 + 0xb8) + 0x10);
                if (lVar7 == 0) break;
                uVar6 = Adventure_manager_Dispatched_Grades_return(lVar7,param_2,param_3,0);
                Adventure_Map_info_item_Reload_PetImgs(param_1,uVar6);
                Adventure_Map_info_item_StopTimer(param_1);
                if (uVar5 == 2) {
                  uVar6 = Adventure_Map_info_item_RemainingTimer(param_1);
                  uVar6 = MonoBehaviour_StartCoroutine_0x6000d43(param_1,uVar6,0);
                  *(undefined8 *)(param_1 + 0x98) = uVar6;
                  Managed_WriteBarrier();
                }
              }
              else {
                Adventure_Map_info_item_Reload_PetImgs(param_1,0);
                Adventure_Map_info_item_StopTimer(param_1);
              }
              Adventure_Map_info_item_AD_Btn_Reload_0x60006c6(param_1);
              plVar9 = *(long **)(param_1 + 0x78);
              uVar6 = Adventure_get_Adventure_LvLimit_0x60012eb(0);
              lVar7 = *(long *)puVar2;
              if (*(int *)(lVar7 + 0xe4) == 0) {
                func_0x029f5bd0(lVar7);
                lVar7 = *(long *)puVar2;
              }
              lVar7 = *(long *)(*(long *)(lVar7 + 0xb8) + 8);
              if (lVar7 != 0) {
                if (*(uint *)(lVar7 + 0x18) <= param_3) {
LAB_02c34980:
                    /* WARNING: Subroutine does not return */
                  Throw_Index_Wrapper();
                }
                iStack_4c = *(int *)(lVar7 + (long)(int)param_3 * 4 + 0x20) + 1;
                uVar8 = func_0x029f5bd8(*(undefined8 *)(puVar1 + 0x48),&iStack_4c);
                uVar6 = String_Format_0x600029c(uVar6,uVar8,0);
                if (plVar9 != (long *)0x0) {
                  (**(code **)(*plVar9 + 0x558))(plVar9,uVar6,*(undefined8 *)(*plVar9 + 0x560));
                  return;
                }
              }
              break;
            }
            if (*(uint *)(lVar7 + 0x18) <= uVar5) goto LAB_02c34980;
            lVar7 = *(long *)(lVar7 + lVar10 * 8 + 0x20);
            if (lVar7 == 0) break;
            GameObject_SetActive_0x6000cfe(lVar7,param_2 == uVar5,0);
            lVar7 = *(long *)(param_1 + 0x50);
            lVar10 = lVar10 + 1;
          } while (lVar7 != 0);
        }
      }
    }
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

