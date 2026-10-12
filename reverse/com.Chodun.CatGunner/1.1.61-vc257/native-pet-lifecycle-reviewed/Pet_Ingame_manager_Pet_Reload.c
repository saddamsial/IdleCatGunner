/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b7bc7c, Ghidra VA 02c7bc7c. */

void Pet_Ingame_manager_Pet_Reload(undefined1 param_1 [16],float param_2,float param_3,long param_4)

{
  int iVar1;
  uint uVar2;
  undefined *puVar3;
  undefined *puVar4;
  undefined *puVar5;
  undefined4 uVar6;
  long lVar7;
  ulong uVar8;
  long lVar9;
  float *pfVar10;
  long lVar11;
  long lVar12;
  ulong uVar13;
  float fVar14;
  float extraout_s0;
  float extraout_s0_00;
  
  puVar3 = PTR_DAT_05e5d4d0;
  if ((bRam000000000625c31b & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e63108);
    func_0x029f5a50(PTR_DAT_05e62680);
    func_0x029f5a50(PTR_DAT_05e62fe8);
    func_0x029f5a50(PTR_DAT_05e63128);
    func_0x029f5a50(PTR_DAT_05e62628);
    func_0x029f5a50(PTR_DAT_05e591c0);
    func_0x029f5a50(PTR_DAT_05e5d4d0);
    bRam000000000625c31b = 1;
  }
  lVar7 = *(long *)puVar3;
  if (*(int *)(lVar7 + 0xe4) == 0) {
    func_0x029f5bd0();
    lVar7 = *(long *)puVar3;
  }
  puVar3 = PTR_DAT_05e62680;
  lVar7 = *(long *)(*(long *)(lVar7 + 0xb8) + 0x28);
  if (lVar7 != 0) {
    lVar12 = *(long *)(lVar7 + 0x30);
    lVar7 = func_0x029f5cec(*(undefined8 *)PTR_DAT_05e62628);
    fVar14 = (float)func_0x044f7180(lVar7,*(undefined8 *)puVar3);
    puVar3 = PTR_DAT_05e63108;
    if (lVar12 != 0) {
      if (0 < (int)*(ulong *)(lVar12 + 0x18)) {
        uVar13 = 0;
        uVar8 = *(ulong *)(lVar12 + 0x18) & 0xffffffff;
        do {
          if (uVar8 <= uVar13) goto LAB_02c7bfe8;
          iVar1 = *(int *)(lVar12 + 0x20 + uVar13 * 4);
          if (iVar1 != -1) {
            if (lVar7 == 0) goto LAB_02c7bfc0;
            lVar9 = *(long *)(lVar7 + 0x10);
            lVar11 = *(long *)puVar3;
            *(int *)(lVar7 + 0x1c) = *(int *)(lVar7 + 0x1c) + 1;
            if (lVar9 == 0) goto LAB_02c7bfc0;
            uVar2 = *(uint *)(lVar7 + 0x18);
            if (uVar2 < *(uint *)(lVar9 + 0x18)) {
              *(uint *)(lVar7 + 0x18) = uVar2 + 1;
              *(int *)(lVar9 + (long)(int)uVar2 * 4 + 0x20) = iVar1;
            }
            else {
              fVar14 = (float)func_0x044f7a10(lVar7,iVar1,
                                              *(undefined8 *)
                                               (*(long *)(*(long *)(lVar11 + 0x20) + 0xc0) + 0x70));
            }
          }
          uVar8 = (ulong)*(uint *)(lVar12 + 0x18);
          uVar13 = uVar13 + 1;
        } while ((long)uVar13 < (long)(int)*(uint *)(lVar12 + 0x18));
      }
      puVar5 = PTR_DAT_05e63128;
      puVar4 = PTR_DAT_05e591c0;
      puVar3 = PTR_DAT_05e58bf8;
      lVar12 = *(long *)(param_4 + 0x20);
      if (lVar12 != 0) {
        lVar9 = 4;
        do {
          uVar13 = lVar9 - 4;
          if ((long)(int)*(uint *)(lVar12 + 0x18) <= (long)uVar13) {
            Pet_Ingame_manager_SetupFormation(param_4);
            return;
          }
          if (lVar7 == 0) break;
          if ((long)uVar13 < (long)*(int *)(lVar7 + 0x18)) {
            uVar6 = func_0x044f7718(lVar7,(int)lVar9 + -4,*(undefined8 *)puVar5);
            lVar12 = *(long *)(param_4 + 0x20);
            if (lVar12 == 0) break;
            fVar14 = extraout_s0;
            if (*(uint *)(lVar12 + 0x18) <= uVar13) {
LAB_02c7bfe8:
                    /* WARNING: Subroutine does not return */
              Throw_Index_Wrapper(fVar14);
            }
            lVar12 = *(long *)(lVar12 + lVar9 * 8);
            if ((lVar12 == 0) ||
               (lVar12 = Component_get_gameObject_0x6000c83(lVar12,0), lVar12 == 0)) break;
            uVar8 = GameObject_get_activeSelf_0x6000cff(lVar12,0);
            lVar12 = *(long *)(param_4 + 0x20);
            if (lVar12 == 0) break;
            fVar14 = extraout_s0_00;
            if (*(uint *)(lVar12 + 0x18) <= uVar13) goto LAB_02c7bfe8;
            lVar12 = *(long *)(lVar12 + lVar9 * 8);
            if (lVar12 == 0) break;
            fVar14 = (float)Pet_Reload(lVar12,uVar6);
            lVar12 = *(long *)(param_4 + 0x20);
            if (lVar12 == 0) break;
            if (*(uint *)(lVar12 + 0x18) <= uVar13) goto LAB_02c7bfe8;
            lVar12 = *(long *)(lVar12 + lVar9 * 8);
            if ((lVar12 == 0) ||
               (lVar12 = Component_get_gameObject_0x6000c83(lVar12,0), lVar12 == 0)) break;
            fVar14 = (float)GameObject_SetActive_0x6000cfe(lVar12,1,0);
            if ((uVar8 & 1) == 0) {
              lVar12 = Pet_Ingame_manager_GetMainCat();
              if (*(int *)(*(long *)puVar4 + 0xe4) == 0) {
                func_0x029f5bd0(*(long *)puVar4);
              }
              uVar8 = Object_op_Inequality_0x6000ded(lVar12,0,0);
              if ((uVar8 & 1) == 0) {
                if (cRam000000000625b26f == '\0') {
                  func_0x029f5a50(puVar3);
                  cRam000000000625b26f = '\x01';
                }
                pfVar10 = *(float **)(*(long *)puVar3 + 0xb8);
                fVar14 = *pfVar10;
                param_2 = pfVar10[1];
                param_3 = pfVar10[2];
              }
              else {
                if ((lVar12 == 0) ||
                   (lVar12 = Component_get_transform_0x6000c82(lVar12,0), lVar12 == 0)) break;
                fVar14 = (float)Transform_get_position_0x6000f4d(lVar12,0);
                fVar14 = fVar14 + 0.0;
                param_2 = param_2 + 0.0;
                param_3 = param_3 + -4.0;
              }
              lVar12 = *(long *)(param_4 + 0x20);
              if (lVar12 == 0) break;
              if (*(uint *)(lVar12 + 0x18) <= uVar13) goto LAB_02c7bfe8;
              if (*(long *)(lVar12 + lVar9 * 8) == 0) break;
              fVar14 = (float)Pet_Warp(fVar14,param_2,param_3);
            }
          }
          else {
            if (*(uint *)(lVar12 + 0x18) <= uVar13) goto LAB_02c7bfe8;
            lVar12 = *(long *)(lVar12 + lVar9 * 8);
            if ((lVar12 == 0) ||
               (lVar12 = Component_get_gameObject_0x6000c83(lVar12,0), lVar12 == 0)) break;
            fVar14 = (float)GameObject_SetActive_0x6000cfe(lVar12,0,0);
          }
          lVar12 = *(long *)(param_4 + 0x20);
          lVar9 = lVar9 + 1;
        } while (lVar12 != 0);
      }
    }
  }
LAB_02c7bfc0:
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

