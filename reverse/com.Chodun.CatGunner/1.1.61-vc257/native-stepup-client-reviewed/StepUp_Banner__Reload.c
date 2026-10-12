/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2ba2d98, Ghidra VA 02ca2d98. */

void StepUp_Banner__Reload(long param_1)

{
  undefined *puVar1;
  undefined *puVar2;
  undefined *puVar3;
  undefined *puVar4;
  long lVar5;
  ulong uVar6;
  ulong uVar7;
  undefined8 uVar8;
  long lVar9;
  undefined8 uVar10;
  long *plVar11;
  undefined4 uStack_44;
  
  if ((bRam000000000625c4a3 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5e528);
    func_0x029f5a50(PTR_DAT_05e591c0);
    func_0x029f5a50(PTR_DAT_05e5e4b8);
    func_0x029f5a50(PTR_DAT_05e64198);
    bRam000000000625c4a3 = 1;
  }
  lVar5 = Component_get_gameObject_0x6000c83(param_1,0);
  puVar2 = PTR_DAT_05e5e4b8;
  puVar1 = PTR_DAT_05e591c0;
  if (lVar5 != 0) {
    GameObject_SetActive_0x6000cfe(lVar5,1,0);
    lVar5 = *(long *)puVar2;
    if (*(int *)(lVar5 + 0xe4) == 0) {
      func_0x029f5bd0();
      lVar5 = *(long *)puVar2;
    }
    lVar9 = *(long *)puVar1;
    uVar10 = **(undefined8 **)(lVar5 + 0xb8);
    if (*(int *)(lVar9 + 0xe4) == 0) {
      func_0x029f5bd0(lVar9);
    }
    uVar6 = Object_op_Inequality_0x6000ded(uVar10,0,0);
    if ((uVar6 & 1) != 0) {
      lVar5 = *(long *)puVar2;
      if (*(int *)(lVar5 + 0xe4) == 0) {
        func_0x029f5bd0();
        lVar5 = *(long *)puVar2;
      }
      if (**(long **)(lVar5 + 0xb8) == 0) goto LAB_02ca3004;
      StepUp__StepUp_Start();
    }
    lVar5 = *(long *)puVar2;
    if (*(int *)(lVar5 + 0xe4) == 0) {
      func_0x029f5bd0();
      lVar5 = *(long *)puVar2;
    }
    puVar4 = PTR_DAT_05e64198;
    puVar3 = PTR_DAT_05e5e528;
    lVar5 = **(long **)(lVar5 + 0xb8);
    if (lVar5 != 0) {
      uVar6 = 0;
      do {
        uVar7 = StepUp__Is_Purchasable(lVar5,uVar6 & 0xffffffff);
        if ((uVar7 & 1) != 0) {
          uVar10 = *(undefined8 *)(param_1 + 0x28);
          if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
            func_0x029f5bd0();
          }
          uVar7 = Object_op_Inequality_0x6000ded(uVar10,0,0);
          if ((uVar7 & 1) == 0) goto LAB_02ca2f50;
          lVar5 = *(long *)puVar2;
          lVar9 = *(long *)(param_1 + 0x28);
          if (*(int *)(lVar5 + 0xe4) == 0) {
            func_0x029f5bd0();
            lVar5 = *(long *)puVar2;
          }
          lVar5 = *(long *)(*(long *)(lVar5 + 0xb8) + 8);
          if (lVar5 == 0) goto LAB_02ca3004;
          if (*(uint *)(lVar5 + 0x18) <= (uint)uVar6) {
                    /* WARNING: Subroutine does not return */
            Throw_Index_Wrapper();
          }
          if (lVar9 == 0) goto LAB_02ca3004;
          Gun_Item_Demo_Reload_0x6000b5a(lVar9,*(undefined4 *)(lVar5 + uVar6 * 4 + 0x20),0);
          goto LAB_02ca2f50;
        }
        uVar6 = uVar6 + 1;
      } while ((int)uVar6 != 5);
      uVar6 = 0xffffffff;
LAB_02ca2f50:
      plVar11 = *(long **)(param_1 + 0x30);
      if (*(int *)(*(long *)puVar3 + 0xe4) == 0) {
        func_0x029f5bd0();
      }
      uVar10 = LocalizationManager_GetTranslation_0x60011b3(*(undefined8 *)puVar4,1,0,1,0,0,0,1,0);
      uStack_44 = 0xc;
      if ((int)uVar6 != 0) {
        uStack_44 = 5;
      }
      uVar8 = func_0x029f5bd8(*(undefined8 *)(PTR_DAT_05e58a10 + 0x48),&uStack_44);
      uVar10 = String_Format_0x600029c(uVar10,uVar8,0);
      if (plVar11 != (long *)0x0) {
        (**(code **)(*plVar11 + 0x558))(plVar11,uVar10,*(undefined8 *)(*plVar11 + 0x560));
        StepUp_Banner__Time_Reload(param_1);
        return;
      }
    }
  }
LAB_02ca3004:
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

