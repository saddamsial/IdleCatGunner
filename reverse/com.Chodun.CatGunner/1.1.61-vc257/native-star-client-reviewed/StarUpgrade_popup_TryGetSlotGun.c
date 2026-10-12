/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b6f1a0, Ghidra VA 02c6f1a0. */

undefined8 StarUpgrade_popup_TryGetSlotGun(long param_1,uint *param_2,undefined8 *param_3)

{
  uint uVar1;
  undefined *puVar2;
  undefined *puVar3;
  undefined *puVar4;
  long lVar5;
  ulong uVar6;
  long lVar7;
  undefined8 uVar8;
  undefined8 uVar9;
  undefined8 uVar10;
  undefined8 uStack_50;
  undefined8 uStack_48;
  undefined8 uStack_40;
  undefined8 uStack_38;
  
  if ((bRam000000000625c2b6 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5dd40);
    func_0x029f5a50(PTR_DAT_05e591c0);
    func_0x029f5a50(PTR_DAT_05e5e070);
    bRam000000000625c2b6 = 1;
  }
  puVar2 = PTR_DAT_05e591c0;
  *param_2 = 0xffffffff;
  InfVal_op_Implicit_0x600003f(&uStack_50,0,0);
  param_3[1] = uStack_48;
  *param_3 = uStack_50;
  param_3[3] = uStack_38;
  param_3[2] = uStack_40;
  Managed_WriteBarrier(param_3,0);
  puVar4 = PTR_DAT_05e5e070;
  puVar3 = PTR_DAT_05e5dd40;
  if (*(char *)(param_1 + 0x9c) == '\0') {
    uVar8 = **(undefined8 **)(*(long *)PTR_DAT_05e5dd40 + 0xb8);
    if (*(int *)(*(long *)puVar2 + 0xe4) == 0) {
      func_0x029f5bd0();
    }
    uVar6 = Object_op_Equality_0x6000dec(uVar8,0,0);
    if ((uVar6 & 1) == 0) {
      lVar5 = **(long **)(*(long *)puVar3 + 0xb8);
      if ((lVar5 != 0) && (lVar7 = *(long *)(lVar5 + 0x28), lVar7 != 0)) {
        if (*(uint *)(lVar7 + 0x18) <= *(uint *)(param_1 + 0x98)) {
LAB_02c6f3bc:
                    /* WARNING: Subroutine does not return */
          Throw_Index_Wrapper();
        }
        uVar1 = *(uint *)(lVar7 + (long)(int)*(uint *)(param_1 + 0x98) * 4 + 0x20);
        *param_2 = uVar1;
        if (uVar1 == 0xffffffff) {
          return 0;
        }
        lVar5 = *(long *)(lVar5 + 0x20);
        if (lVar5 != 0) {
          if (*(uint *)(lVar5 + 0x18) <= uVar1) goto LAB_02c6f3bc;
          lVar5 = *(long *)(lVar5 + (long)(int)uVar1 * 8 + 0x20);
          if (lVar5 != 0) {
            uVar10 = *(undefined8 *)(lVar5 + 0x20);
            uVar9 = *(undefined8 *)(lVar5 + 0x38);
            uVar8 = *(undefined8 *)(lVar5 + 0x30);
            param_3[1] = *(undefined8 *)(lVar5 + 0x28);
            *param_3 = uVar10;
            param_3[3] = uVar9;
            param_3[2] = uVar8;
            goto LAB_02c6f38c;
          }
        }
      }
LAB_02c6f3b8:
                    /* WARNING: Subroutine does not return */
      Throw_NullReference_Wrapper();
    }
  }
  else {
    lVar5 = *(long *)PTR_DAT_05e5e070;
    if (*(int *)(lVar5 + 0xe4) == 0) {
      func_0x029f5bd0();
      lVar5 = *(long *)puVar4;
    }
    lVar7 = *(long *)puVar2;
    uVar8 = **(undefined8 **)(lVar5 + 0xb8);
    if (*(int *)(lVar7 + 0xe4) == 0) {
      func_0x029f5bd0(lVar7);
    }
    uVar6 = Object_op_Equality_0x6000dec(uVar8,0,0);
    if ((uVar6 & 1) == 0) {
      lVar5 = *(long *)puVar4;
      if (*(int *)(lVar5 + 0xe4) == 0) {
        func_0x029f5bd0();
        lVar5 = *(long *)puVar4;
      }
      if ((**(long **)(lVar5 + 0xb8) == 0) ||
         (lVar7 = *(long *)(**(long **)(lVar5 + 0xb8) + 0x88), lVar7 == 0)) goto LAB_02c6f3b8;
      if (*(uint *)(lVar7 + 0x18) <= *(uint *)(param_1 + 0x98)) goto LAB_02c6f3bc;
      uVar1 = *(uint *)(lVar7 + (long)(int)*(uint *)(param_1 + 0x98) * 4 + 0x20);
      *param_2 = uVar1;
      if (uVar1 != 0xffffffff) {
        if (*(int *)(lVar5 + 0xe4) == 0) {
          func_0x029f5bd0();
        }
        Raid_manager_Raid_Damage_return_0x600092a(&uStack_50,uVar1,0);
        param_3[1] = uStack_48;
        *param_3 = uStack_50;
        param_3[3] = uStack_38;
        param_3[2] = uStack_40;
LAB_02c6f38c:
        Managed_WriteBarrier(param_3,0);
        return 1;
      }
    }
  }
  return 0;
}

