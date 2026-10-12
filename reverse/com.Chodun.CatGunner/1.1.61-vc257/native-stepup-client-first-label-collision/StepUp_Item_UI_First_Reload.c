/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2ba45e0, Ghidra VA 02ca45e0. */

void StepUp_Item_UI_First_Reload(long param_1)

{
  int iVar1;
  undefined *puVar2;
  undefined *puVar3;
  undefined8 uVar4;
  long lVar5;
  undefined8 uVar6;
  long *plVar7;
  long lVar8;
  undefined4 uStack_34;
  int iStack_28;
  int iStack_24;
  
  puVar3 = PTR_DAT_05e64958;
  if ((bRam000000000625c4ae & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5e528);
    func_0x029f5a50(PTR_DAT_05e5e4b8);
    func_0x029f5a50(PTR_DAT_05e64960);
    func_0x029f5a50(PTR_DAT_05e64958);
    bRam000000000625c4ae = 1;
  }
  puVar2 = PTR_DAT_05e58a10;
  plVar7 = *(long **)(param_1 + 0x28);
  iStack_28 = *(int *)(param_1 + 0x20) + 1;
  iStack_24 = 0;
  uVar4 = func_0x029f5bd8(*(undefined8 *)(PTR_DAT_05e58a10 + 0x48),&iStack_28);
  uVar4 = String_Format_0x600029c(*(undefined8 *)puVar3,uVar4,0);
  puVar3 = PTR_DAT_05e5e4b8;
  if (plVar7 != (long *)0x0) {
    (**(code **)(*plVar7 + 0x558))(plVar7,uVar4,*(undefined8 *)(*plVar7 + 0x560));
    lVar5 = *(long *)puVar3;
    lVar8 = *(long *)(param_1 + 0x30);
    if (*(int *)(lVar5 + 0xe4) == 0) {
      func_0x029f5bd0();
      lVar5 = *(long *)puVar3;
    }
    lVar5 = *(long *)(*(long *)(lVar5 + 0xb8) + 8);
    if (lVar5 != 0) {
      if (*(uint *)(lVar5 + 0x18) <= *(uint *)(param_1 + 0x20)) {
LAB_02ca4808:
                    /* WARNING: Subroutine does not return */
        Throw_Index_Wrapper();
      }
      if (lVar8 != 0) {
        Gun_Item_Demo_Reload_0x6000b5a
                  (lVar8,*(undefined4 *)(lVar5 + (long)(int)*(uint *)(param_1 + 0x20) * 4 + 0x20),0)
        ;
        lVar5 = *(long *)(*(long *)(*(long *)puVar3 + 0xb8) + 0x10);
        if (lVar5 != 0) {
          if (*(uint *)(lVar5 + 0x18) <= *(uint *)(param_1 + 0x20)) goto LAB_02ca4808;
          iVar1 = *(int *)(lVar5 + (long)(int)*(uint *)(param_1 + 0x20) * 4 + 0x20);
          iStack_24 = iVar1;
          if (*(long *)(param_1 + 0x38) != 0) {
            GameObject_SetActive_0x6000cfe(*(long *)(param_1 + 0x38),0 < iVar1,0);
            if (0 < iVar1) {
              plVar7 = *(long **)(param_1 + 0x40);
              uVar4 = Int32_ToString_0x600080e(&iStack_24,0);
              if (plVar7 == (long *)0x0) goto LAB_02ca4804;
              (**(code **)(*plVar7 + 0x558))(plVar7,uVar4,*(undefined8 *)(*plVar7 + 0x560));
            }
            puVar3 = PTR_DAT_05e64960;
            plVar7 = *(long **)(param_1 + 0x48);
            if (*(int *)(*(long *)PTR_DAT_05e5e528 + 0xe4) == 0) {
              func_0x029f5bd0();
            }
            uVar4 = LocalizationManager_GetTranslation_0x60011b3
                              (*(undefined8 *)puVar3,1,0,1,0,0,0,1,0);
            uStack_34 = *(undefined4 *)(param_1 + 0x20);
            uVar6 = func_0x029f5bd8(*(undefined8 *)(puVar2 + 0x48),&uStack_34);
            uVar4 = String_Format_0x600029c(uVar4,uVar6,0);
            if (plVar7 != (long *)0x0) {
              (**(code **)(*plVar7 + 0x558))(plVar7,uVar4,*(undefined8 *)(*plVar7 + 0x560));
              return;
            }
          }
        }
      }
    }
  }
LAB_02ca4804:
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

