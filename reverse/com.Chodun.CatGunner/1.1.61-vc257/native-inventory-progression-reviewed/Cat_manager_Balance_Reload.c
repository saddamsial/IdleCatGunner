/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b43744, Ghidra VA 02c43744. */

void Cat_manager_Balance_Reload(undefined1 param_1 [16],float param_2,float param_3,long param_4)

{
  int iVar1;
  undefined *puVar2;
  undefined *puVar3;
  undefined *puVar4;
  undefined *puVar5;
  uint uVar6;
  ulong uVar7;
  long lVar8;
  long *plVar9;
  ulong uVar10;
  long lVar11;
  long lVar12;
  undefined4 uVar13;
  undefined8 uVar14;
  long lVar15;
  float fVar16;
  
  puVar3 = PTR_DAT_05e5d368;
  puVar2 = PTR_DAT_05e591c0;
  if ((bRam000000000625c0c7 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5dd40);
    func_0x029f5a50(PTR_DAT_05e63108);
    func_0x029f5a50(PTR_DAT_05e62680);
    func_0x029f5a50(PTR_DAT_05e62fe8);
    func_0x029f5a50(PTR_DAT_05e63128);
    func_0x029f5a50(PTR_DAT_05e62628);
    func_0x029f5a50(PTR_DAT_05e591c0);
    func_0x029f5a50(PTR_DAT_05e5e070);
    func_0x029f5a50(PTR_DAT_05e5d368);
    bRam000000000625c0c7 = 1;
  }
  uVar14 = **(undefined8 **)(*(long *)puVar3 + 0xb8);
  if (*(int *)(*(long *)puVar2 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  puVar4 = PTR_DAT_05e5dd40;
  uVar7 = Object_op_Inequality_0x6000ded(uVar14,0,0);
  puVar5 = PTR_DAT_05e5e070;
  if ((uVar7 & 1) == 0) {
LAB_02c43878:
    lVar8 = **(long **)(*(long *)puVar4 + 0xb8);
    if (lVar8 == 0) goto LAB_02c43b4c;
    uVar13 = 0;
    plVar9 = (long *)(lVar8 + 0x28);
  }
  else {
    lVar8 = **(long **)(*(long *)puVar3 + 0xb8);
    if (lVar8 == 0) goto LAB_02c43b4c;
    if (*(int *)(lVar8 + 0x20) != 5) goto LAB_02c43878;
    lVar8 = *(long *)PTR_DAT_05e5e070;
    if (*(int *)(lVar8 + 0xe4) == 0) {
      func_0x029f5bd0();
      lVar8 = *(long *)puVar5;
    }
    if (**(long **)(lVar8 + 0xb8) == 0) goto LAB_02c43b4c;
    plVar9 = (long *)(**(long **)(lVar8 + 0xb8) + 0x88);
    uVar13 = 1;
  }
  puVar3 = PTR_DAT_05e62680;
  lVar15 = *plVar9;
  lVar8 = func_0x029f5cec(*(undefined8 *)PTR_DAT_05e62628);
  func_0x044f7180(lVar8,*(undefined8 *)puVar3);
  puVar3 = PTR_DAT_05e63108;
  if (lVar15 != 0) {
    if (0 < (int)*(ulong *)(lVar15 + 0x18)) {
      uVar7 = 0;
      uVar10 = *(ulong *)(lVar15 + 0x18) & 0xffffffff;
      do {
        if (uVar10 <= uVar7) goto LAB_02c43b74;
        iVar1 = *(int *)(lVar15 + 0x20 + uVar7 * 4);
        if (iVar1 != -1) {
          if (lVar8 == 0) goto LAB_02c43b4c;
          lVar11 = *(long *)(lVar8 + 0x10);
          lVar12 = *(long *)puVar3;
          *(int *)(lVar8 + 0x1c) = *(int *)(lVar8 + 0x1c) + 1;
          if (lVar11 == 0) goto LAB_02c43b4c;
          uVar6 = *(uint *)(lVar8 + 0x18);
          if (uVar6 < *(uint *)(lVar11 + 0x18)) {
            *(uint *)(lVar8 + 0x18) = uVar6 + 1;
            *(int *)(lVar11 + (long)(int)uVar6 * 4 + 0x20) = iVar1;
          }
          else {
            func_0x044f7a10(lVar8,iVar1,
                            *(undefined8 *)(*(long *)(*(long *)(lVar12 + 0x20) + 0xc0) + 0x70));
          }
        }
        uVar10 = (ulong)*(uint *)(lVar15 + 0x18);
        uVar7 = uVar7 + 1;
      } while ((long)uVar7 < (long)(int)*(uint *)(lVar15 + 0x18));
    }
    puVar3 = PTR_DAT_05e63128;
    lVar15 = *(long *)(param_4 + 0x20);
    if (lVar15 != 0) {
      lVar11 = 4;
      do {
        uVar7 = lVar11 - 4;
        if ((long)(int)*(uint *)(lVar15 + 0x18) <= (long)uVar7) {
          Cat_manager_Helper_Reload_0x600077a(param_4,uVar13);
          return;
        }
        if (lVar8 == 0) break;
        if ((long)uVar7 < (long)*(int *)(lVar8 + 0x18)) {
          uVar6 = func_0x044f7718(lVar8,(int)lVar11 + -4,*(undefined8 *)puVar3);
          lVar15 = **(long **)(*(long *)puVar4 + 0xb8);
          if ((lVar15 == 0) || (lVar15 = *(long *)(lVar15 + 0x20), lVar15 == 0)) break;
          if (*(uint *)(lVar15 + 0x18) <= uVar6) {
LAB_02c43b74:
                    /* WARNING: Subroutine does not return */
            Throw_Index_Wrapper();
          }
          lVar12 = *(long *)(param_4 + 0x20);
          if (lVar12 == 0) break;
          if (*(uint *)(lVar12 + 0x18) <= uVar7) goto LAB_02c43b74;
          lVar12 = *(long *)(lVar12 + lVar11 * 8);
          if (lVar12 == 0) break;
          uVar14 = *(undefined8 *)(lVar15 + (long)(int)uVar6 * 8 + 0x20);
          lVar15 = Component_get_gameObject_0x6000c83(lVar12,0);
          if (lVar15 == 0) break;
          uVar10 = GameObject_get_activeSelf_0x6000cff(lVar15,0);
          lVar15 = *(long *)(param_4 + 0x20);
          if (lVar15 == 0) break;
          if (*(uint *)(lVar15 + 0x18) <= uVar7) goto LAB_02c43b74;
          lVar15 = *(long *)(lVar15 + lVar11 * 8);
          if (lVar15 == 0) break;
          Cat_Balance_Reload_0x600072f(lVar15,uVar6,uVar14,0);
          lVar15 = *(long *)(param_4 + 0x20);
          if (lVar15 == 0) break;
          if (*(uint *)(lVar15 + 0x18) <= uVar7) goto LAB_02c43b74;
          lVar15 = *(long *)(lVar15 + lVar11 * 8);
          if ((lVar15 == 0) || (lVar15 = Component_get_gameObject_0x6000c83(lVar15,0), lVar15 == 0))
          break;
          GameObject_SetActive_0x6000cfe(lVar15,1,0);
          if ((uVar10 & 1) == 0) {
            lVar15 = *(long *)(param_4 + 0x20);
            if (lVar15 == 0) break;
            if (*(uint *)(lVar15 + 0x18) <= uVar7) goto LAB_02c43b74;
            lVar12 = *(long *)(lVar15 + lVar11 * 8);
            if (lVar12 == 0) break;
            if (*(char *)(lVar12 + 0x1b0) != '\0') {
              uVar14 = *(undefined8 *)(lVar15 + 0x20);
              if (*(int *)(*(long *)puVar2 + 0xe4) == 0) {
                func_0x029f5bd0();
              }
              uVar10 = Object_op_Inequality_0x6000ded(uVar14,0,0);
              if ((uVar10 & 1) != 0) {
                lVar15 = *(long *)(param_4 + 0x20);
                if (lVar15 == 0) break;
                if (*(int *)(lVar15 + 0x18) == 0) goto LAB_02c43b74;
                if ((*(long *)(lVar15 + 0x20) == 0) ||
                   (lVar15 = Component_get_transform_0x6000c82(*(long *)(lVar15 + 0x20),0),
                   lVar15 == 0)) break;
                fVar16 = (float)Transform_get_position_0x6000f4d(lVar15,0);
                lVar15 = *(long *)(param_4 + 0x20);
                if (lVar15 == 0) break;
                if (*(uint *)(lVar15 + 0x18) <= uVar7) goto LAB_02c43b74;
                lVar15 = *(long *)(lVar15 + lVar11 * 8);
                if (lVar15 == 0) break;
                param_2 = param_2 + *(float *)(lVar15 + 0x1c8);
                param_3 = param_3 + *(float *)(lVar15 + 0x1cc);
                Cat_Warp_0x6000769(fVar16 + *(float *)(lVar15 + 0x1c4),param_2,param_3,lVar15,0);
              }
            }
          }
        }
        else {
          if (*(uint *)(lVar15 + 0x18) <= uVar7) goto LAB_02c43b74;
          lVar15 = *(long *)(lVar15 + lVar11 * 8);
          if ((lVar15 == 0) || (lVar15 = Component_get_gameObject_0x6000c83(lVar15,0), lVar15 == 0))
          break;
          GameObject_SetActive_0x6000cfe(lVar15,0,0);
        }
        lVar15 = *(long *)(param_4 + 0x20);
        lVar11 = lVar11 + 1;
      } while (lVar15 != 0);
    }
  }
LAB_02c43b4c:
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

