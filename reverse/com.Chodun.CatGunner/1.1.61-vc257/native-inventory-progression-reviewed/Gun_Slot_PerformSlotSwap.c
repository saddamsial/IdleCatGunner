/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b78cd8, Ghidra VA 02c78cd8. */

void Gun_Slot_PerformSlotSwap(long param_1,long param_2)

{
  uint uVar1;
  int iVar2;
  int iVar3;
  undefined *puVar4;
  undefined *puVar5;
  undefined *puVar6;
  long lVar7;
  ulong uVar8;
  long *plVar9;
  long lVar10;
  long lVar11;
  int *piVar12;
  undefined8 uVar13;
  undefined4 uStack_68;
  undefined4 uStack_64;
  code *pcStack_60;
  long lStack_58;
  int iStack_48;
  undefined4 uStack_44;
  int iStack_38;
  undefined4 uStack_34;
  
  puVar4 = PTR_DAT_05e5dd40;
  if ((bRam000000000625c30b & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5d5b0);
    func_0x029f5a50(PTR_DAT_05e58f08);
    func_0x029f5a50(PTR_DAT_05e5dd40);
    func_0x029f5a50(PTR_DAT_05e59768);
    func_0x029f5a50(PTR_DAT_05e591c0);
    func_0x029f5a50(PTR_DAT_05e63cb8);
    bRam000000000625c30b = 1;
  }
  lVar7 = **(long **)(*(long *)puVar4 + 0xb8);
  if ((lVar7 != 0) && (lVar11 = *(long *)(lVar7 + 0x28), lVar11 != 0)) {
    uVar1 = *(uint *)(lVar11 + 0x18);
    if (*(uint *)(param_1 + 0x20) < uVar1) {
      if (param_2 == 0) goto LAB_02c79078;
      if (*(uint *)(param_2 + 0x20) < uVar1) {
        piVar12 = (int *)(lVar11 + (long)(int)*(uint *)(param_1 + 0x20) * 4 + 0x20);
        iVar3 = *piVar12;
        if (iVar3 == -1) {
          return;
        }
        iVar2 = *(int *)(lVar11 + (long)(int)*(uint *)(param_2 + 0x20) * 4 + 0x20);
        *piVar12 = iVar2;
        if (*(uint *)(param_2 + 0x20) < uVar1) {
          *(int *)(lVar11 + (long)(int)*(uint *)(param_2 + 0x20) * 4 + 0x20) = iVar3;
          Gun_manager_Selected_Pause_Swap
                    (lVar7,*(undefined4 *)(param_1 + 0x20),*(undefined4 *)(param_2 + 0x20),0);
          puVar6 = PTR_DAT_05e5d5b0;
          puVar5 = PTR_DAT_05e591c0;
          lVar7 = **(long **)(*(long *)puVar4 + 0xb8);
          if (lVar7 != 0) {
            Gun_manager_ReloadAllSlots(lVar7,0);
            uVar13 = *(undefined8 *)(*(long *)(*(long *)puVar6 + 0xb8) + 8);
            if (*(int *)(*(long *)puVar5 + 0xe4) == 0) {
              func_0x029f5bd0();
            }
            uVar8 = Object_op_Inequality_0x6000ded(uVar13,0,0);
            if ((uVar8 & 1) != 0) {
              lVar7 = *(long *)(*(long *)(*(long *)puVar6 + 0xb8) + 8);
              if (lVar7 == 0) goto LAB_02c79078;
              Cat_manager_Balance_Reload(lVar7,0);
            }
            if (cRam000000000625ba57 == '\0') {
              func_0x029f5a50(PTR_DAT_05e5dd70);
              cRam000000000625ba57 = '\x01';
            }
            puVar4 = PTR_DAT_05e59768;
            if (**(long **)(*(long *)PTR_DAT_05e5dd70 + 0xb8) != 0) {
              Sound_manager_PlaySfx_0x600054a
                        (0x3f800000,**(long **)(*(long *)PTR_DAT_05e5dd70 + 0xb8),9,0,0);
              plVar9 = (long *)func_0x029f5b40(*(undefined8 *)puVar4,4);
              puVar4 = PTR_DAT_05e58a10;
              uStack_34 = *(undefined4 *)(param_1 + 0x20);
              lVar7 = func_0x029f5bd8(*(undefined8 *)(PTR_DAT_05e58a10 + 0x48),&uStack_34);
              if (plVar9 != (long *)0x0) {
                if ((lVar7 != 0) &&
                   (lVar11 = func_0x029f5bd4(lVar7,*(undefined8 *)(*plVar9 + 0x40)), lVar11 == 0)) {
LAB_02c79080:
                  uVar13 = func_0x029f5d20();
                  lVar11 = func_0x029f5bc0(uVar13,0);
                  lVar10 = *(long *)(lVar11 + 0xd0);
                  if (lVar10 == 0) {
                    pcStack_60 = Gun_Slot_RevertPosition_0x6000b8d;
                    /* WARNING: Subroutine does not return */
                    Throw_NullReference_Wrapper();
                  }
                  uStack_68 = *(undefined4 *)(lVar11 + 0xf0);
                  uStack_64 = *(undefined4 *)(lVar11 + 0xf4);
                  pcStack_60 = (code *)lVar7;
                  lStack_58 = param_2;
                  if ((bRam000000000626cbe8 & 1) == 0) {
                    func_0x029f5a50(PTR_DAT_05ed6d68,0);
                    bRam000000000626cbe8 = 1;
                  }
                  if (lVar10 == 0) {
                    /* WARNING: Subroutine does not return */
                    Throw_NullReference_Wrapper();
                  }
                  lVar7 = *(long *)(lVar10 + 0x10);
                  if (lVar7 == 0) {
                    func_0x057f539c(lVar10,0);
                  }
                  if (pcRam000000000626cc28 == (code *)0x0) {
                    pcRam000000000626cc28 = (code *)func_0x029f5a0c(&UNK_011924f1);
                  }
                  (*pcRam000000000626cc28)(lVar7,&uStack_68);
                  return;
                }
                if ((int)plVar9[3] != 0) {
                  plVar9[4] = lVar7;
                  Managed_WriteBarrier(plVar9 + 4,lVar7);
                  iStack_38 = iVar3;
                  lVar7 = func_0x029f5bd8(*(undefined8 *)(puVar4 + 0x48),&iStack_38);
                  if ((lVar7 != 0) &&
                     (lVar11 = func_0x029f5bd4(lVar7,*(undefined8 *)(*plVar9 + 0x40)), lVar11 == 0))
                  goto LAB_02c79080;
                  if ((*(uint *)(plVar9 + 3) & 0xfffffffe) != 0) {
                    plVar9[5] = lVar7;
                    Managed_WriteBarrier(plVar9 + 5,lVar7);
                    uStack_44 = *(undefined4 *)(param_2 + 0x20);
                    param_2 = func_0x029f5bd8(*(undefined8 *)(puVar4 + 0x48),&uStack_44);
                    if ((param_2 != 0) &&
                       (lVar11 = func_0x029f5bd4(param_2,*(undefined8 *)(*plVar9 + 0x40)),
                       lVar11 == 0)) goto LAB_02c79080;
                    if (2 < *(uint *)(plVar9 + 3)) {
                      plVar9[6] = param_2;
                      Managed_WriteBarrier(plVar9 + 6,param_2);
                      iStack_48 = iVar2;
                      param_2 = func_0x029f5bd8(*(undefined8 *)(puVar4 + 0x48),&iStack_48);
                      if ((param_2 != 0) &&
                         (lVar11 = func_0x029f5bd4(param_2,*(undefined8 *)(*plVar9 + 0x40)),
                         lVar11 == 0)) goto LAB_02c79080;
                      puVar5 = PTR_DAT_05e63cb8;
                      puVar4 = PTR_DAT_05e58f08;
                      if ((*(uint *)(plVar9 + 3) & 0xfffffffc) != 0) {
                        plVar9[7] = param_2;
                        Managed_WriteBarrier(plVar9 + 7,param_2);
                        uVar13 = String_Format_0x600029f(*(undefined8 *)puVar5,plVar9,0);
                        if (*(int *)(*(long *)puVar4 + 0xe4) == 0) {
                          func_0x029f5bd0(*(long *)puVar4);
                        }
                        Debug_Log_0x600033c(uVar13,0);
                        if (iVar2 == -1) {
                          return;
                        }
                        if (iVar3 / 5 != iVar2 / 5) {
                          return;
                        }
                        uVar13 = Alarm_get_SelectedFusionError_0x60012f6(0);
                        UI_manager_Alert_0x6000602(uVar13,0);
                        return;
                      }
                    }
                  }
                }
                goto LAB_02c7907c;
              }
            }
          }
          goto LAB_02c79078;
        }
      }
    }
LAB_02c7907c:
                    /* WARNING: Subroutine does not return */
    Throw_Index_Wrapper();
  }
LAB_02c79078:
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

