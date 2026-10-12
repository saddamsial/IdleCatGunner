/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b69758, Ghidra VA 02c69758. */

void Gun_Merge_Tutorial_Reload(long param_1)

{
  undefined *puVar1;
  undefined *puVar2;
  undefined *puVar3;
  long lVar4;
  ulong uVar5;
  long lVar6;
  undefined8 uVar7;
  undefined8 uVar8;
  long lVar9;
  long lVar10;
  undefined8 uStack_88;
  undefined8 *puStack_80;
  long lStack_78;
  undefined4 uStack_68;
  undefined8 uStack_60;
  undefined8 *puStack_58;
  long lStack_50;
  
  if ((bRam000000000625c287 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5d540);
    func_0x029f5a50(PTR_DAT_05e5be98);
    func_0x029f5a50(PTR_DAT_05e63a90);
    func_0x029f5a50(PTR_DAT_05e63a98);
    func_0x029f5a50(PTR_DAT_05e63aa0);
    func_0x029f5a50(PTR_DAT_05e63aa8);
    func_0x029f5a50(PTR_DAT_05e5dd40);
    func_0x029f5a50(PTR_DAT_05e63ab0);
    func_0x029f5a50(PTR_DAT_05e591c0);
    bRam000000000625c287 = 1;
  }
  uStack_60 = 0;
  puStack_58 = (undefined8 *)0x0;
  lStack_50 = 0;
  uStack_68 = 0;
  lVar4 = Component_get_gameObject_0x6000c83(param_1,0);
  if (lVar4 != 0) {
    uVar5 = GameObject_get_activeInHierarchy_0x6000d00(lVar4,0);
    puVar2 = PTR_DAT_05e5dd40;
    puVar1 = PTR_DAT_05e591c0;
    if ((uVar5 & 1) == 0) {
      return;
    }
    uVar8 = **(undefined8 **)(*(long *)PTR_DAT_05e5dd40 + 0xb8);
    if (*(int *)(*(long *)PTR_DAT_05e591c0 + 0xe4) == 0) {
      func_0x029f5bd0();
    }
    uVar5 = Object_op_Equality_0x6000dec(uVar8,0,0);
    if ((uVar5 & 1) == 0) {
      if (**(long **)(*(long *)puVar2 + 0xb8) == 0) goto LAB_02c69b30;
      if (*(char *)(**(long **)(*(long *)puVar2 + 0xb8) + 0xe8) == '\0') {
        lVar4 = **(long **)(*(long *)PTR_DAT_05e63aa8 + 0xb8);
        if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
          func_0x029f5bd0();
        }
        uVar5 = Object_op_Inequality_0x6000ded(lVar4,0,0);
        lVar10 = 0;
        lVar9 = 0;
        if ((uVar5 & 1) != 0) {
          if ((lVar4 == 0) || (*(long *)(lVar4 + 0x40) == 0)) goto LAB_02c69b30;
          func_0x0452d690(&uStack_88,*(long *)(lVar4 + 0x40),*(undefined8 *)PTR_DAT_05e63ab0);
          puVar3 = PTR_DAT_05e63a98;
          puStack_58 = puStack_80;
          uStack_60 = uStack_88;
          lStack_50 = lStack_78;
          uStack_88 = 0;
          puStack_80 = &uStack_60;
          lVar4 = 0;
          do {
            do {
              do {
                lVar9 = lVar4;
                uVar5 = func_0x03fa4e10(&uStack_60,*(undefined8 *)puVar3);
                lVar10 = lStack_50;
                if ((uVar5 & 1) == 0) {
                  lVar10 = 0;
                  goto LAB_02c699b8;
                }
                if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
                  func_0x029f5bd0();
                }
                uVar5 = Object_op_Equality_0x6000dec(lVar10,0,0);
                lVar4 = lVar9;
              } while ((uVar5 & 1) != 0);
              if (lVar10 == 0) {
                    /* WARNING: Subroutine does not return */
                Throw_NullReference_Wrapper();
              }
              lVar6 = Component_get_gameObject_0x6000c83(lVar10,0);
              if (lVar6 == 0) {
                    /* WARNING: Subroutine does not return */
                Throw_NullReference_Wrapper();
              }
              uVar5 = GameObject_get_activeSelf_0x6000cff(lVar6,0);
            } while (((((uVar5 & 1) == 0) || (8 < *(int *)(lVar10 + 0x8c) + 4U)) ||
                     (*(char *)(lVar10 + 0x70) != '\0')) || (*(char *)(lVar10 + 0x78) != '\0'));
            if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
              func_0x029f5bd0();
            }
            uVar5 = Object_op_Equality_0x6000dec(lVar9,0,0);
            lVar4 = lVar10;
          } while ((uVar5 & 1) != 0);
LAB_02c699b8:
          func_0x03fa4e0c(&uStack_60,*(undefined8 *)PTR_DAT_05e63a90);
        }
        if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
          func_0x029f5bd0();
        }
        uVar5 = Object_op_Equality_0x6000dec(lVar9,0,0);
        if ((uVar5 & 1) == 0) {
          if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
            func_0x029f5bd0();
          }
          uVar5 = Object_op_Equality_0x6000dec(lVar10,0,0);
          if ((uVar5 & 1) == 0) {
            if (**(long **)(*(long *)puVar2 + 0xb8) != 0) {
              if (*(char *)(**(long **)(*(long *)puVar2 + 0xb8) + 0xe9) == '\0') {
                if (cRam000000000625ba5c == '\0') {
                  func_0x029f5a50(PTR_DAT_05e5df00);
                  cRam000000000625ba5c = '\x01';
                }
                puVar1 = PTR_DAT_05e5d540;
                if (**(char **)(*(long *)PTR_DAT_05e5df00 + 0xb8) != '\0') {
                  if (**(long **)(*(long *)puVar2 + 0xb8) == 0) goto LAB_02c69b30;
                  *(undefined1 *)(**(long **)(*(long *)puVar2 + 0xb8) + 0xe9) = 1;
                  if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
                    func_0x029f5bd0();
                  }
                  AppsFlyerInit_SendLog_Tutorial_0x6000229(1,1,0);
                }
              }
              if (((*(long *)(param_1 + 0x20) != 0) &&
                  (lVar4 = Component_get_gameObject_0x6000c83(*(long *)(param_1 + 0x20),0),
                  lVar4 != 0)) &&
                 (GameObject_SetActive_0x6000cfe(lVar4,1,0), puVar1 = PTR_DAT_05e5be98, lVar9 != 0))
              {
                lVar4 = *(long *)(param_1 + 0x20);
                uVar8 = func_0x02fe5f2c(lVar9,*(undefined8 *)PTR_DAT_05e5be98);
                if ((lVar10 != 0) &&
                   (uVar7 = func_0x02fe5f2c(lVar10,*(undefined8 *)puVar1), lVar4 != 0)) {
                  TutorialArrow_UI_SetTargets(lVar4,uVar8,uVar7,0);
                  return;
                }
              }
            }
            goto LAB_02c69b30;
          }
        }
        Gun_Merge_Tutorial_Hide(param_1);
        return;
      }
    }
    Gun_Merge_Tutorial_Hide(param_1);
    return;
  }
LAB_02c69b30:
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

