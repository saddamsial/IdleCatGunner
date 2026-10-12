/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b32fb4, Ghidra VA 02c32fb4. */

void Adventure_Enter_popup_Open(long param_1,uint param_2,int param_3)

{
  undefined *puVar1;
  undefined *puVar2;
  undefined *puVar3;
  undefined *puVar4;
  undefined *puVar5;
  long lVar6;
  undefined8 uVar7;
  ulong uVar8;
  uint uVar9;
  long lVar10;
  long *plVar11;
  undefined4 uStack_58;
  int iStack_54;
  
  if ((bRam000000000625c049 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5dd28);
    func_0x029f5a50(PTR_DAT_05e591c0);
    func_0x029f5a50(PTR_DAT_05e630d0);
    func_0x029f5a50(PTR_DAT_05e630d8);
    bRam000000000625c049 = 1;
  }
  *(uint *)(param_1 + 0x20) = param_2;
  *(int *)(param_1 + 0x24) = param_3;
  lVar6 = Component_get_gameObject_0x6000c83(param_1,0);
  if (lVar6 != 0) {
    GameObject_SetActive_0x6000cfe(lVar6,1,0);
    puVar5 = PTR_DAT_05e630d8;
    puVar4 = PTR_DAT_05e630d0;
    puVar3 = PTR_DAT_05e5dd28;
    puVar2 = PTR_DAT_05e591c0;
    lVar6 = *(long *)(param_1 + 0x28);
    if (lVar6 != 0) {
      lVar10 = 0;
      do {
        puVar1 = PTR_DAT_05e58a10;
        uVar9 = (uint)lVar10;
        if ((int)*(uint *)(lVar6 + 0x18) <= (int)uVar9) {
          iStack_54 = param_3 + 1;
          plVar11 = *(long **)(param_1 + 0x30);
          uVar7 = func_0x029f5bd8(*(undefined8 *)(PTR_DAT_05e58a10 + 0x48),&iStack_54);
          uVar7 = String_Format_0x600029c(*(undefined8 *)puVar4,uVar7,0);
          if (plVar11 != (long *)0x0) {
            (**(code **)(*plVar11 + 0x558))(plVar11,uVar7,*(undefined8 *)(*plVar11 + 0x560));
            lVar6 = *(long *)puVar3;
            if (*(int *)(lVar6 + 0xe4) == 0) {
              func_0x029f5bd0();
              lVar6 = *(long *)puVar3;
            }
            lVar6 = *(long *)(*(long *)(lVar6 + 0xb8) + 0x10);
            if (lVar6 != 0) {
              uStack_58 = Adventure_manager_Adventure_Effective_Duration_return(lVar6,param_3,0);
              plVar11 = *(long **)(param_1 + 0x38);
              uVar7 = func_0x029f5bd8(*(undefined8 *)(puVar1 + 0x48),&uStack_58);
              uVar7 = String_Format_0x600029c(*(undefined8 *)puVar5,uVar7,0);
              if (plVar11 != (long *)0x0) {
                (**(code **)(*plVar11 + 0x558))(plVar11,uVar7,*(undefined8 *)(*plVar11 + 0x560));
                lVar6 = *(long *)(param_1 + 0x58);
                uVar7 = Adventure_manager_Core_sprite_return_0x600062e(param_2,0);
                if (lVar6 != 0) {
                  Image_set_sprite_0x600013f(lVar6,uVar7,0);
                  lVar6 = *(long *)(param_1 + 0x78);
                  if (lVar6 != 0) {
                    if (*(uint *)(lVar6 + 0x18) <= param_2) goto LAB_02c3327c;
                    plVar11 = *(long **)(param_1 + 0x60);
                    if (plVar11 != (long *)0x0) {
                      lVar6 = lVar6 + (long)(int)param_2 * 0x10;
                      (**(code **)(*plVar11 + 0x2a8))
                                (*(undefined4 *)(lVar6 + 0x20),*(undefined4 *)(lVar6 + 0x24),
                                 *(undefined4 *)(lVar6 + 0x28),*(undefined4 *)(lVar6 + 0x2c),plVar11
                                 ,*(undefined8 *)(*plVar11 + 0x2b0));
                      lVar6 = *(long *)(param_1 + 0xc0);
                      if (lVar6 != 0) {
                        lVar10 = 0;
                        goto LAB_02c331d8;
                      }
                    }
                  }
                }
              }
            }
          }
          break;
        }
        if (*(uint *)(lVar6 + 0x18) <= uVar9) goto LAB_02c3327c;
        lVar6 = *(long *)(lVar6 + lVar10 * 8 + 0x20);
        if (lVar6 == 0) break;
        GameObject_SetActive_0x6000cfe(lVar6,param_2 == uVar9,0);
        lVar6 = *(long *)(param_1 + 0x28);
        lVar10 = lVar10 + 1;
      } while (lVar6 != 0);
    }
  }
  goto LAB_02c33210;
LAB_02c331d8:
  do {
    if ((int)*(uint *)(lVar6 + 0x18) <= (int)(uint)lVar10) {
      uVar7 = *(undefined8 *)(param_1 + 0x50);
      if (*(int *)(*(long *)puVar2 + 0xe4) == 0) {
        func_0x029f5bd0();
      }
      uVar8 = Object_op_Inequality_0x6000ded(uVar7,0,0);
      if ((uVar8 & 1) != 0) {
        if (*(long *)(param_1 + 0x50) == 0) break;
        plVar11 = (long *)(*(long *)(param_1 + 0x50) + 0x28);
        *plVar11 = param_1;
        Managed_WriteBarrier(plVar11,param_1);
      }
      Adventure_Enter_popup_AutoSelectBest(param_1);
      Adventure_Enter_popup_Reload(param_1);
      return;
    }
    if (*(uint *)(lVar6 + 0x18) <= (uint)lVar10) {
LAB_02c3327c:
                    /* WARNING: Subroutine does not return */
      Throw_Index_Wrapper();
    }
    lVar6 = *(long *)(lVar6 + lVar10 * 8 + 0x20);
    if (lVar6 == 0) break;
    plVar11 = (long *)(lVar6 + 0x48);
    *plVar11 = param_1;
    Managed_WriteBarrier(plVar11,param_1);
    lVar6 = *(long *)(param_1 + 0xc0);
    lVar10 = lVar10 + 1;
  } while (lVar6 != 0);
LAB_02c33210:
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

