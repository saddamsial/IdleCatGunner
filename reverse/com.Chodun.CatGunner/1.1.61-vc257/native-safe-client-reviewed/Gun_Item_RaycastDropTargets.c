/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b723ec, Ghidra VA 02c723ec. */

void Gun_Item_RaycastDropTargets
               (undefined8 param_1,undefined8 param_2,undefined8 *param_3,long *param_4)

{
  undefined *puVar1;
  undefined *puVar2;
  undefined *puVar3;
  undefined *puVar4;
  uint uVar5;
  uint uVar6;
  long lVar7;
  ulong uVar8;
  long lVar9;
  long lVar10;
  undefined8 uVar11;
  undefined8 uStack_120;
  undefined8 *puStack_118;
  undefined8 uStack_c0;
  undefined8 uStack_b8;
  long lStack_b0;
  undefined8 uStack_a8;
  undefined8 uStack_a0;
  undefined8 uStack_98;
  undefined8 uStack_90;
  undefined8 uStack_88;
  undefined8 uStack_80;
  undefined8 uStack_78;
  undefined8 uStack_70;
  undefined8 uStack_68;
  
  puVar1 = PTR_DAT_05e591c0;
  if ((bRam000000000625c2da & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e63ba8);
    func_0x029f5a50(PTR_DAT_05e63bb0);
    func_0x029f5a50(PTR_DAT_05e63bb8);
    func_0x029f5a50(PTR_DAT_05e61258);
    func_0x029f5a50(PTR_DAT_05e63bc0);
    func_0x029f5a50(PTR_DAT_05e63bc8);
    func_0x029f5a50(PTR_DAT_05e63bd0);
    func_0x029f5a50(PTR_DAT_05e63bd8);
    func_0x029f5a50(PTR_DAT_05e63be0);
    func_0x029f5a50(PTR_DAT_05e591c0);
    bRam000000000625c2da = 1;
  }
  *param_3 = 0;
  uStack_b8 = 0;
  uStack_c0 = 0;
  uStack_a8 = 0;
  lStack_b0 = 0;
  uStack_98 = 0;
  uStack_a0 = 0;
  uStack_88 = 0;
  uStack_90 = 0;
  uStack_78 = 0;
  uStack_80 = 0;
  uStack_68 = 0;
  uStack_70 = 0;
  Managed_WriteBarrier(param_3,0);
  *param_4 = 0;
  Managed_WriteBarrier(param_4,0);
  lVar7 = Gun_Item_Safe_HUD_Get_0x6000b2b();
  if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
    func_0x029f5bd0(*(long *)puVar1);
  }
  uVar8 = Object_op_Inequality_0x6000ded(lVar7,0,0);
  if ((uVar8 & 1) == 0) {
    uVar5 = 0;
  }
  else {
    if ((lVar7 == 0) || (lVar9 = Component_get_gameObject_0x6000c83(lVar7,0), lVar9 == 0))
    goto LAB_02c727d0;
    uVar5 = GameObject_get_activeInHierarchy_0x6000d00(lVar9,0);
  }
  puVar3 = PTR_DAT_05e63bd8;
  puVar2 = PTR_DAT_05e61258;
  lVar9 = func_0x029f5cec(*(undefined8 *)PTR_DAT_05e63be0);
  func_0x0454d050(lVar9,*(undefined8 *)puVar3);
  if (*(int *)(*(long *)puVar2 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  lVar10 = EventSystem_get_current_0x6000654(0);
  if ((lVar10 != 0) &&
     (EventSystem_RaycastAll_0x6000667(lVar10,param_2,lVar9,0), puVar4 = PTR_DAT_05e63bc8,
     puVar3 = PTR_DAT_05e63bc0, puVar2 = PTR_DAT_05e63bb0, lVar9 != 0)) {
    func_0x0454e6c0(&uStack_120,lVar9,*(undefined8 *)PTR_DAT_05e63bd0);
    func_0x05afb2b0(&uStack_c0,&uStack_120,0x60);
    uStack_120 = 0;
    puStack_118 = &uStack_c0;
    do {
      do {
        do {
          uVar8 = func_0x03fab3e0(&uStack_c0,*(undefined8 *)puVar2);
          lVar9 = lStack_b0;
          if ((uVar8 & 1) == 0) goto LAB_02c7278c;
          uVar11 = Component_get_gameObject_0x6000c83(param_1,0);
          if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
            func_0x029f5bd0();
          }
          uVar8 = Object_op_Equality_0x6000dec(lVar9,uVar11,0);
        } while ((uVar8 & 1) != 0);
        uVar11 = *param_3;
        if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
          func_0x029f5bd0();
        }
        uVar8 = Object_op_Equality_0x6000dec(uVar11,0,0);
        if ((uVar8 & 1) != 0) {
          if (lVar9 == 0) {
                    /* WARNING: Subroutine does not return */
            Throw_NullReference_Wrapper();
          }
          uVar11 = func_0x030a02b4(lVar9,*(undefined8 *)puVar4);
          if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
            func_0x029f5bd0();
          }
          uVar8 = Object_op_Equality_0x6000dec(uVar11,0,0);
          if ((uVar8 & 1) != 0) {
            uVar11 = func_0x030a076c(lVar9,*(undefined8 *)puVar3);
          }
          if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
            func_0x029f5bd0();
          }
          uVar8 = Object_op_Inequality_0x6000ded(uVar11,0,0);
          if ((uVar8 & 1) != 0) {
            *param_3 = uVar11;
            Managed_WriteBarrier(param_3,uVar11);
          }
        }
        lVar10 = *param_4;
        if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
          func_0x029f5bd0();
        }
        uVar6 = Object_op_Equality_0x6000dec(lVar10,0,0);
        if ((uVar5 & uVar6 & 1) != 0) {
          if (lVar9 == 0) {
                    /* WARNING: Subroutine does not return */
            Throw_NullReference_Wrapper();
          }
          lVar9 = GameObject_get_transform_0x6000cfb(lVar9,0);
          if (lVar7 == 0) {
                    /* WARNING: Subroutine does not return */
            Throw_NullReference_Wrapper();
          }
          uVar11 = Component_get_transform_0x6000c82(lVar7,0);
          if (lVar9 == 0) {
                    /* WARNING: Subroutine does not return */
            Throw_NullReference_Wrapper(uVar11,uVar11);
          }
          uVar8 = Transform_IsChildOf_0x6000f84(lVar9,uVar11,0);
          if ((uVar8 & 1) != 0) {
            *param_4 = lVar7;
            Managed_WriteBarrier(param_4,lVar7);
          }
        }
        uVar11 = *param_3;
        if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
          func_0x029f5bd0();
        }
        uVar8 = Object_op_Inequality_0x6000ded(uVar11,0,0);
      } while ((uVar8 & 1) == 0);
      lVar9 = *param_4;
      if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
        func_0x029f5bd0();
      }
      uVar8 = Object_op_Inequality_0x6000ded(lVar9,0,0);
    } while ((uVar8 & 1) == 0);
LAB_02c7278c:
    func_0x03fab3dc(&uStack_c0,*(undefined8 *)PTR_DAT_05e63ba8);
    return;
  }
LAB_02c727d0:
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

