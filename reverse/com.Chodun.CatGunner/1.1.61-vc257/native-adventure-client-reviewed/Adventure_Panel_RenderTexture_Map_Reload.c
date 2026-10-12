/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b353e8, Ghidra VA 02c353e8. */

void Adventure_Panel_RenderTexture_Map_Reload(long param_1)

{
  uint uVar1;
  undefined *puVar2;
  undefined *puVar3;
  undefined *puVar4;
  undefined4 uVar5;
  long lVar6;
  ulong uVar7;
  long lVar8;
  long lVar9;
  long lVar10;
  long lVar11;
  ulong uVar12;
  
  puVar2 = PTR_DAT_05e5d4d0;
  if ((bRam000000000625c065 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e63108);
    func_0x029f5a50(PTR_DAT_05e62680);
    func_0x029f5a50(PTR_DAT_05e62fe8);
    func_0x029f5a50(PTR_DAT_05e63128);
    func_0x029f5a50(PTR_DAT_05e62628);
    func_0x029f5a50(PTR_DAT_05e5d4d0);
    bRam000000000625c065 = 1;
  }
  puVar4 = PTR_DAT_05e62680;
  puVar3 = PTR_DAT_05e62628;
  lVar6 = *(long *)puVar2;
  if (*(int *)(lVar6 + 0xe4) == 0) {
    func_0x029f5bd0();
    lVar6 = *(long *)puVar2;
  }
  lVar11 = *(long *)(*(long *)(lVar6 + 0xb8) + 0x28);
  lVar6 = func_0x029f5cec(*(undefined8 *)puVar3);
  func_0x044f7180(lVar6,*(undefined8 *)puVar4);
  puVar2 = PTR_DAT_05e63108;
  if (lVar11 != 0) {
    lVar8 = *(long *)(lVar11 + 0x30);
    if (lVar8 == 0) {
LAB_02c3556c:
      lVar8 = *(long *)(lVar11 + 0x38);
      if (lVar8 == 0) {
LAB_02c35630:
        puVar2 = PTR_DAT_05e63128;
        lVar11 = *(long *)(param_1 + 0x40);
        if (lVar11 != 0) {
          uVar12 = 0;
          do {
            uVar1 = *(uint *)(lVar11 + 0x18);
            if ((long)(int)uVar1 <= (long)uVar12) {
              return;
            }
            if (lVar6 == 0) break;
            if ((long)uVar12 < (long)*(int *)(lVar6 + 0x18)) {
              if (uVar1 <= uVar12) goto LAB_02c356d4;
              lVar11 = *(long *)(lVar11 + uVar12 * 8 + 0x20);
              uVar5 = func_0x044f7718(lVar6,uVar12 & 0xffffffff,*(undefined8 *)puVar2);
              if (lVar11 == 0) break;
              Pet_Dummy_Reload_0x6000bb5(lVar11,uVar5,0);
            }
            else {
              if (uVar1 <= uVar12) {
LAB_02c356d4:
                    /* WARNING: Subroutine does not return */
                Throw_Index_Wrapper();
              }
              lVar11 = *(long *)(lVar11 + uVar12 * 8 + 0x20);
              if (lVar11 == 0) break;
              Pet_Dummy_Hide_0x6000bb6(lVar11,0);
            }
            lVar11 = *(long *)(param_1 + 0x40);
            uVar12 = uVar12 + 1;
          } while (lVar11 != 0);
        }
      }
      else {
        uVar12 = 0;
        do {
          if ((long)(int)*(uint *)(lVar8 + 0x18) <= (long)uVar12) goto LAB_02c35630;
          if (*(uint *)(lVar8 + 0x18) <= uVar12) goto LAB_02c356d4;
          if (*(int *)(lVar8 + uVar12 * 4 + 0x20) != -1) {
            uVar7 = Pet_manager_IsPetLocked(lVar11,uVar12 & 0xffffffff,0);
            lVar8 = *(long *)(lVar11 + 0x38);
            if ((uVar7 & 1) == 0) {
              if (lVar8 == 0) break;
              if (*(uint *)(lVar8 + 0x18) <= uVar12) goto LAB_02c356d4;
              if (lVar6 == 0) break;
              lVar9 = *(long *)(lVar6 + 0x10);
              uVar5 = *(undefined4 *)(lVar8 + uVar12 * 4 + 0x20);
              lVar10 = *(long *)puVar2;
              *(int *)(lVar6 + 0x1c) = *(int *)(lVar6 + 0x1c) + 1;
              if (lVar9 == 0) break;
              uVar1 = *(uint *)(lVar6 + 0x18);
              if (uVar1 < *(uint *)(lVar9 + 0x18)) {
                *(uint *)(lVar6 + 0x18) = uVar1 + 1;
                *(undefined4 *)(lVar9 + (long)(int)uVar1 * 4 + 0x20) = uVar5;
              }
              else {
                func_0x044f7a10(lVar6,uVar5,
                                *(undefined8 *)(*(long *)(*(long *)(lVar10 + 0x20) + 0xc0) + 0x70));
                lVar8 = *(long *)(lVar11 + 0x38);
              }
            }
          }
          uVar12 = uVar12 + 1;
        } while (lVar8 != 0);
      }
    }
    else {
      uVar12 = 0;
      do {
        if ((long)(int)*(uint *)(lVar8 + 0x18) <= (long)uVar12) goto LAB_02c3556c;
        if (*(uint *)(lVar8 + 0x18) <= uVar12) goto LAB_02c356d4;
        if (*(int *)(lVar8 + uVar12 * 4 + 0x20) != -1) {
          uVar7 = Pet_manager_IsSelectedLocked(lVar11,uVar12 & 0xffffffff,0);
          lVar8 = *(long *)(lVar11 + 0x30);
          if ((uVar7 & 1) == 0) {
            if (lVar8 == 0) break;
            if (*(uint *)(lVar8 + 0x18) <= uVar12) goto LAB_02c356d4;
            if (lVar6 == 0) break;
            lVar9 = *(long *)(lVar6 + 0x10);
            uVar5 = *(undefined4 *)(lVar8 + uVar12 * 4 + 0x20);
            lVar10 = *(long *)puVar2;
            *(int *)(lVar6 + 0x1c) = *(int *)(lVar6 + 0x1c) + 1;
            if (lVar9 == 0) break;
            uVar1 = *(uint *)(lVar6 + 0x18);
            if (uVar1 < *(uint *)(lVar9 + 0x18)) {
              *(uint *)(lVar6 + 0x18) = uVar1 + 1;
              *(undefined4 *)(lVar9 + (long)(int)uVar1 * 4 + 0x20) = uVar5;
            }
            else {
              func_0x044f7a10(lVar6,uVar5,
                              *(undefined8 *)(*(long *)(*(long *)(lVar10 + 0x20) + 0xc0) + 0x70));
              lVar8 = *(long *)(lVar11 + 0x30);
            }
          }
        }
        uVar12 = uVar12 + 1;
      } while (lVar8 != 0);
    }
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

