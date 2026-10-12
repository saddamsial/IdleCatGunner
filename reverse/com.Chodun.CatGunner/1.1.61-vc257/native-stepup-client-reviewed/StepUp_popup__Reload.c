/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2ba3218, Ghidra VA 02ca3218. */

void StepUp_popup__Reload(long param_1)

{
  undefined *puVar1;
  undefined *puVar2;
  long lVar3;
  ulong uVar4;
  ulong uVar5;
  undefined8 uVar6;
  long lVar7;
  
  if ((bRam000000000625c4b1 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e591c0);
    func_0x029f5a50(PTR_DAT_05e5e4b8);
    bRam000000000625c4b1 = 1;
  }
  lVar3 = Component_get_gameObject_0x6000c83(param_1,0);
  puVar2 = PTR_DAT_05e5e4b8;
  puVar1 = PTR_DAT_05e591c0;
  if (lVar3 != 0) {
    GameObject_SetActive_0x6000cfe(lVar3,1,0);
    lVar3 = *(long *)puVar2;
    if (*(int *)(lVar3 + 0xe4) == 0) {
      func_0x029f5bd0();
      lVar3 = *(long *)puVar2;
    }
    uVar6 = **(undefined8 **)(lVar3 + 0xb8);
    if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
      func_0x029f5bd0(*(long *)puVar1);
    }
    uVar4 = Object_op_Inequality_0x6000ded(uVar6,0,0);
    if ((uVar4 & 1) != 0) {
      lVar3 = *(long *)puVar2;
      if (*(int *)(lVar3 + 0xe4) == 0) {
        func_0x029f5bd0();
        lVar3 = *(long *)puVar2;
      }
      if (**(long **)(lVar3 + 0xb8) == 0) goto LAB_02ca340c;
      StepUp__StepUp_Start();
    }
    if (*(char *)(param_1 + 0x30) == '\0') {
      lVar3 = *(long *)(param_1 + 0x28);
      *(undefined1 *)(param_1 + 0x30) = 1;
      if (lVar3 != 0) {
        uVar4 = 0;
        do {
          if ((long)(int)*(uint *)(lVar3 + 0x18) <= (long)uVar4) goto LAB_02ca32f0;
          if (*(uint *)(lVar3 + 0x18) <= uVar4) goto LAB_02ca3410;
          uVar6 = *(undefined8 *)(lVar3 + uVar4 * 8 + 0x20);
          if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
            func_0x029f5bd0();
          }
          uVar5 = Object_op_Equality_0x6000dec(uVar6,0,0);
          if ((uVar5 & 1) == 0) {
            lVar3 = *(long *)(param_1 + 0x28);
            if (lVar3 == 0) break;
            if (*(uint *)(lVar3 + 0x18) <= uVar4) goto LAB_02ca3410;
            lVar3 = *(long *)(lVar3 + uVar4 * 8 + 0x20);
            if (lVar3 == 0) break;
            *(int *)(lVar3 + 0x20) = (int)uVar4;
            StepUp_Item_UI__First_Reload();
          }
          lVar3 = *(long *)(param_1 + 0x28);
          uVar4 = uVar4 + 1;
        } while (lVar3 != 0);
      }
    }
    else {
LAB_02ca32f0:
      StepUp_popup__Time_Reload(param_1);
      lVar3 = *(long *)(param_1 + 0x28);
      if (lVar3 != 0) {
        lVar7 = 4;
        do {
          uVar4 = lVar7 - 4;
          if ((long)(int)*(uint *)(lVar3 + 0x18) <= (long)uVar4) {
            return;
          }
          if (*(uint *)(lVar3 + 0x18) <= uVar4) goto LAB_02ca3410;
          uVar6 = *(undefined8 *)(lVar3 + lVar7 * 8);
          if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
            func_0x029f5bd0();
          }
          uVar5 = Object_op_Inequality_0x6000ded(uVar6,0,0);
          if ((uVar5 & 1) != 0) {
            lVar3 = *(long *)(param_1 + 0x28);
            if (lVar3 == 0) break;
            if (*(uint *)(lVar3 + 0x18) <= uVar4) {
LAB_02ca3410:
                    /* WARNING: Subroutine does not return */
              Throw_Index_Wrapper();
            }
            if (*(long *)(lVar3 + lVar7 * 8) == 0) break;
            StepUp_Item_UI__Reload();
          }
          lVar3 = *(long *)(param_1 + 0x28);
          lVar7 = lVar7 + 1;
        } while (lVar3 != 0);
      }
    }
  }
LAB_02ca340c:
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

