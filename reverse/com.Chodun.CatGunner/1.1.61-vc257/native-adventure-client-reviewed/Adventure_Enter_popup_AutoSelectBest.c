/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b33280, Ghidra VA 02c33280. */

void Adventure_Enter_popup_AutoSelectBest(long param_1)

{
  uint uVar1;
  undefined *puVar2;
  undefined *puVar3;
  undefined *puVar4;
  undefined4 uVar5;
  long lVar6;
  ulong uVar7;
  undefined8 uVar8;
  long lVar9;
  long lVar10;
  long lVar11;
  int iVar12;
  int iVar13;
  
  if ((bRam000000000625c04a & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e630e0);
    func_0x029f5a50(PTR_DAT_05e5dd28);
    func_0x029f5a50(PTR_DAT_05e630e8);
    func_0x029f5a50(PTR_DAT_05e62fb8);
    func_0x029f5a50(PTR_DAT_05e630f0);
    func_0x029f5a50(PTR_DAT_05e630f8);
    func_0x029f5a50(PTR_DAT_05e62fc8);
    func_0x029f5a50(PTR_DAT_05e62fd0);
    func_0x029f5a50(PTR_DAT_05e63100);
    func_0x029f5a50(PTR_DAT_05e62fd8);
    func_0x029f5a50(PTR_DAT_05e5d4d0);
    bRam000000000625c04a = 1;
  }
  puVar2 = PTR_DAT_05e5dd28;
  lVar9 = *(long *)(param_1 + 200);
  if (lVar9 != 0) {
    lVar6 = *(long *)PTR_DAT_05e5dd28;
    *(undefined4 *)(lVar9 + 0x18) = 0;
    *(int *)(lVar9 + 0x1c) = *(int *)(lVar9 + 0x1c) + 1;
    if (*(int *)(lVar6 + 0xe4) == 0) {
      func_0x029f5bd0();
      lVar6 = *(long *)puVar2;
    }
    puVar4 = PTR_DAT_05e62fd8;
    puVar3 = PTR_DAT_05e62fc8;
    puVar2 = PTR_DAT_05e5d4d0;
    lVar9 = *(long *)(*(long *)(lVar6 + 0xb8) + 0x10);
    if (lVar9 != 0) {
      uVar5 = Adventure_manager_Adventure_PetSlot_OpenCount_return(lVar9,0);
      lVar9 = *(long *)puVar2;
      *(undefined4 *)(param_1 + 0xd0) = uVar5;
      if (*(int *)(lVar9 + 0xe4) == 0) {
        func_0x029f5bd0(lVar9);
        lVar9 = *(long *)puVar2;
      }
      lVar6 = *(long *)(*(long *)(lVar9 + 0xb8) + 0x28);
      lVar9 = func_0x029f5cec(*(undefined8 *)puVar4);
      func_0x045c0d0c(lVar9,*(undefined8 *)puVar3);
      puVar2 = PTR_DAT_05e62fb8;
      if (lVar6 != 0) {
        lVar10 = *(long *)(lVar6 + 0x30);
        if (lVar10 == 0) {
LAB_02c3346c:
          lVar10 = *(long *)(lVar6 + 0x38);
          if (lVar10 == 0) {
LAB_02c3350c:
            puVar3 = PTR_DAT_05e630e0;
            uVar8 = func_0x029f5cec(*(undefined8 *)PTR_DAT_05e630e8);
            func_0x03cfb7cc(uVar8,param_1,*(undefined8 *)puVar3,0);
            if (lVar9 != 0) {
              func_0x045c2f94(lVar9,uVar8,*(undefined8 *)PTR_DAT_05e630f8);
              puVar3 = PTR_DAT_05e63100;
              iVar13 = *(int *)(param_1 + 0xd0);
              if (*(int *)(lVar9 + 0x18) <= *(int *)(param_1 + 0xd0)) {
                iVar13 = *(int *)(lVar9 + 0x18);
              }
              if (0 < iVar13) {
                iVar12 = 0;
                do {
                  lVar6 = *(long *)(param_1 + 200);
                  uVar8 = func_0x045c12a4(lVar9,iVar12,*(undefined8 *)puVar3);
                  if (lVar6 == 0) goto LAB_02c33508;
                  lVar10 = *(long *)(lVar6 + 0x10);
                  lVar11 = *(long *)puVar2;
                  *(int *)(lVar6 + 0x1c) = *(int *)(lVar6 + 0x1c) + 1;
                  if (lVar10 == 0) goto LAB_02c33508;
                  uVar1 = *(uint *)(lVar6 + 0x18);
                  if (uVar1 < *(uint *)(lVar10 + 0x18)) {
                    *(uint *)(lVar6 + 0x18) = uVar1 + 1;
                    *(undefined8 *)(lVar10 + (long)(int)uVar1 * 8 + 0x20) = uVar8;
                  }
                  else {
                    func_0x045c1598(lVar6,uVar8,
                                    *(undefined8 *)
                                     (*(long *)(*(long *)(lVar11 + 0x20) + 0xc0) + 0x70));
                  }
                  iVar12 = iVar12 + 1;
                } while (iVar13 != iVar12);
              }
              return;
            }
          }
          else {
            iVar13 = 0;
            do {
              if (*(int *)(lVar10 + 0x18) <= iVar13) goto LAB_02c3350c;
              uVar7 = Pet_manager_CanDispatchOwned(lVar6,iVar13,0);
              if ((uVar7 & 1) != 0) {
                uVar8 = Dispatch_Pet_Owned(iVar13,0);
                if (lVar9 == 0) break;
                lVar10 = *(long *)(lVar9 + 0x10);
                lVar11 = *(long *)puVar2;
                *(int *)(lVar9 + 0x1c) = *(int *)(lVar9 + 0x1c) + 1;
                if (lVar10 == 0) break;
                uVar1 = *(uint *)(lVar9 + 0x18);
                if (uVar1 < *(uint *)(lVar10 + 0x18)) {
                  *(uint *)(lVar9 + 0x18) = uVar1 + 1;
                  *(undefined8 *)(lVar10 + (long)(int)uVar1 * 8 + 0x20) = uVar8;
                }
                else {
                  func_0x045c1598(lVar9,uVar8,
                                  *(undefined8 *)(*(long *)(*(long *)(lVar11 + 0x20) + 0xc0) + 0x70)
                                 );
                }
              }
              lVar10 = *(long *)(lVar6 + 0x38);
              iVar13 = iVar13 + 1;
            } while (lVar10 != 0);
          }
        }
        else {
          iVar13 = 0;
          do {
            if (*(int *)(lVar10 + 0x18) <= iVar13) goto LAB_02c3346c;
            uVar7 = Pet_manager_CanDispatchSelected(lVar6,iVar13,0);
            if ((uVar7 & 1) != 0) {
              uVar8 = Dispatch_Pet_Selected(iVar13,0);
              if (lVar9 == 0) break;
              lVar10 = *(long *)(lVar9 + 0x10);
              lVar11 = *(long *)puVar2;
              *(int *)(lVar9 + 0x1c) = *(int *)(lVar9 + 0x1c) + 1;
              if (lVar10 == 0) break;
              uVar1 = *(uint *)(lVar9 + 0x18);
              if (uVar1 < *(uint *)(lVar10 + 0x18)) {
                *(uint *)(lVar9 + 0x18) = uVar1 + 1;
                *(undefined8 *)(lVar10 + (long)(int)uVar1 * 8 + 0x20) = uVar8;
              }
              else {
                func_0x045c1598(lVar9,uVar8,
                                *(undefined8 *)(*(long *)(*(long *)(lVar11 + 0x20) + 0xc0) + 0x70));
              }
            }
            lVar10 = *(long *)(lVar6 + 0x30);
            iVar13 = iVar13 + 1;
          } while (lVar10 != 0);
        }
      }
    }
  }
LAB_02c33508:
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

