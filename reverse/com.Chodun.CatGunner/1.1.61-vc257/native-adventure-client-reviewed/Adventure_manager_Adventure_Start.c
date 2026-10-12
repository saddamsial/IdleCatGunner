/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b2d524, Ghidra VA 02c2d524. */

void Adventure_manager_Adventure_Start(long param_1,int param_2,int param_3,long param_4)

{
  uint uVar1;
  int iVar2;
  undefined *puVar3;
  ulong uVar4;
  long lVar5;
  ulong uVar6;
  long lVar7;
  undefined8 uVar8;
  ulong uVar9;
  long lVar10;
  long lVar11;
  ulong uVar12;
  undefined8 uStack_a8;
  undefined8 *puStack_a0;
  ulong uStack_98;
  undefined4 uStack_88;
  undefined8 uStack_80;
  undefined8 *puStack_78;
  undefined8 uStack_70;
  
  if ((bRam000000000625c007 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5d540);
    func_0x029f5a50(PTR_DAT_05e62fa0);
    func_0x029f5a50(PTR_DAT_05e62fa8);
    func_0x029f5a50(PTR_DAT_05e62fb0);
    func_0x029f5a50(PTR_DAT_05e62fb8);
    func_0x029f5a50(PTR_DAT_05e62fc0);
    func_0x029f5a50(PTR_DAT_05e62fc8);
    func_0x029f5a50(PTR_DAT_05e62fd0);
    func_0x029f5a50(PTR_DAT_05e62fd8);
    func_0x029f5a50(PTR_DAT_05e5d4d0);
    func_0x029f5a50(PTR_DAT_05e5d3c0);
    bRam000000000625c007 = 1;
  }
  uStack_80 = 0;
  puStack_78 = (undefined8 *)0x0;
  uStack_70 = 0;
  uStack_88 = 0;
  uVar4 = Adventure_manager_is_Entered_return(param_1,param_2,param_3);
  if (((uVar4 & 1) != 0) ||
     (uVar4 = Adventure_manager_is_Unlock_return(param_1,param_3), puVar3 = PTR_DAT_05e5d4d0,
     (uVar4 & 1) == 0)) {
    return;
  }
  lVar5 = *(long *)PTR_DAT_05e5d4d0;
  if (*(int *)(lVar5 + 0xe4) == 0) {
    func_0x029f5bd0();
    lVar5 = *(long *)puVar3;
  }
  lVar11 = *(long *)(*(long *)(lVar5 + 0xb8) + 0x28);
  lVar5 = func_0x029f5cec(*(undefined8 *)PTR_DAT_05e62fd8);
  func_0x045c0d0c(lVar5,*(undefined8 *)PTR_DAT_05e62fc8);
  puVar3 = PTR_DAT_05e62fa8;
  if ((param_4 != 0) && (0 < (int)*(ulong *)(param_4 + 0x18))) {
    uVar4 = 0;
    uVar9 = *(ulong *)(param_4 + 0x18) & 0xffffffff;
    do {
      if (uVar9 <= uVar4) {
                    /* WARNING: Subroutine does not return */
        Throw_Index_Wrapper();
      }
      if (lVar5 == 0) goto LAB_02c2d9b4;
      if (2 < *(int *)(lVar5 + 0x18)) goto LAB_02c2d820;
      uVar9 = *(ulong *)(param_4 + uVar4 * 8 + 0x20);
      uVar12 = uVar9 >> 0x20;
      func_0x045c2058(&uStack_a8,lVar5,*(undefined8 *)PTR_DAT_05e62fc0);
      uStack_80 = uStack_a8;
      uStack_a8 = 0;
      puStack_78 = puStack_a0;
      uStack_70 = uStack_98;
      puStack_a0 = &uStack_80;
      do {
        uVar6 = func_0x03fd486c(&uStack_80,*(undefined8 *)puVar3);
        if ((uVar6 & 1) == 0) {
          func_0x03fd4868(&uStack_80,*(undefined8 *)PTR_DAT_05e62fa0);
          if ((int)uVar9 == 0) {
            if (lVar11 == 0) goto LAB_02c2d9b4;
            uVar12 = Pet_manager_CanDispatchOwned(lVar11,uVar12,0);
          }
          else {
            if (lVar11 == 0) goto LAB_02c2d9b4;
            uVar12 = Pet_manager_CanDispatchSelected(lVar11,uVar12,0);
          }
          if ((uVar12 & 1) == 0) goto LAB_02c2d7bc;
          lVar7 = *(long *)(lVar5 + 0x10);
          lVar10 = *(long *)PTR_DAT_05e62fb8;
          *(int *)(lVar5 + 0x1c) = *(int *)(lVar5 + 0x1c) + 1;
          if (lVar7 == 0) goto LAB_02c2d9b4;
          uVar1 = *(uint *)(lVar5 + 0x18);
          if (uVar1 < *(uint *)(lVar7 + 0x18)) {
            *(uint *)(lVar5 + 0x18) = uVar1 + 1;
            *(ulong *)(lVar7 + (long)(int)uVar1 * 8 + 0x20) = uVar9;
          }
          else {
            func_0x045c1598(lVar5,uVar9,
                            *(undefined8 *)(*(long *)(*(long *)(lVar10 + 0x20) + 0xc0) + 0x70));
          }
          goto LAB_02c2d7bc;
        }
      } while (((int)uStack_70 != (int)uVar9) || (uStack_70 >> 0x20 != uVar12));
      func_0x03fd4868(&uStack_80,*(undefined8 *)PTR_DAT_05e62fa0);
LAB_02c2d7bc:
      uVar9 = (ulong)*(uint *)(param_4 + 0x18);
      uVar4 = uVar4 + 1;
    } while ((long)uVar4 < (long)(int)*(uint *)(param_4 + 0x18));
  }
  if (lVar5 != 0) {
    if (*(int *)(lVar5 + 0x18) == 0) {
      return;
    }
LAB_02c2d820:
    lVar7 = Adventure_manager_Map_info_return(param_1,param_2,param_3);
    puVar3 = PTR_DAT_05e5d3c0;
    if (lVar7 != 0) {
      *(undefined1 *)(lVar7 + 0x10) = 1;
      iVar2 = param_3 + param_2 * 100;
      if (*(int *)(*(long *)puVar3 + 0xe4) == 0) {
        func_0x029f5bd0();
      }
      uVar8 = Time_manager_get_Now_0x6000579();
      puVar3 = PTR_DAT_05e62fc0;
      *(undefined8 *)(lVar7 + 0x18) = uVar8;
      func_0x045c2058(&uStack_a8,lVar5,*(undefined8 *)puVar3);
      puVar3 = PTR_DAT_05e62fa8;
      puStack_78 = puStack_a0;
      uStack_80 = uStack_a8;
      uStack_70 = uStack_98;
      uStack_a8 = 0;
      puStack_a0 = &uStack_80;
      while (uVar4 = func_0x03fd486c(&uStack_80,*(undefined8 *)puVar3), (uVar4 & 1) != 0) {
        if ((int)uStack_70 == 0) {
          if (lVar11 == 0) {
                    /* WARNING: Subroutine does not return */
            Throw_NullReference_Wrapper(uVar4,uStack_70._4_4_);
          }
          Pet_manager_LockOwned(lVar11,uStack_70._4_4_,iVar2,0);
        }
        else {
          if (lVar11 == 0) {
                    /* WARNING: Subroutine does not return */
            Throw_NullReference_Wrapper(uVar4,uStack_70._4_4_);
          }
          Pet_manager_LockSelected(lVar11,uStack_70._4_4_,iVar2,0);
        }
      }
      func_0x03fd4868(&uStack_80,*(undefined8 *)PTR_DAT_05e62fa0);
      if (lVar11 != 0) {
        Pet_manager_ReloadAfterLockChange(lVar11,0);
        if (*(long *)(param_1 + 0x40) != 0) {
          Adventure_Panel_RenderTexture_Map_Reload(*(long *)(param_1 + 0x40),0);
          if (cRam000000000625ba57 == '\0') {
            func_0x029f5a50(PTR_DAT_05e5dd70);
            cRam000000000625ba57 = '\x01';
          }
          if (**(long **)(*(long *)PTR_DAT_05e5dd70 + 0xb8) != 0) {
            Sound_manager_PlaySfx_0x600054a
                      (0x3f800000,**(long **)(*(long *)PTR_DAT_05e5dd70 + 0xb8),10,0);
            if (*(int *)(*(long *)PTR_DAT_05e5d540 + 0xe4) == 0) {
              func_0x029f5bd0();
            }
            AppsFlyerInit_SendLog_ExplorationStart_0x600022c(param_2,param_3,0);
            SaveSystem_Save_0x600048a(0);
            return;
          }
        }
      }
    }
  }
LAB_02c2d9b4:
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

