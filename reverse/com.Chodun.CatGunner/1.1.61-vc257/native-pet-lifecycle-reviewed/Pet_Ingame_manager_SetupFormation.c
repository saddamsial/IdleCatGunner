/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b7b9d8, Ghidra VA 02c7b9d8. */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void Pet_Ingame_manager_SetupFormation(long param_1)

{
  uint uVar1;
  float fVar2;
  undefined *puVar3;
  undefined *puVar4;
  undefined *puVar5;
  long lVar6;
  ulong uVar7;
  int iVar8;
  long lVar9;
  long lVar10;
  int iVar11;
  undefined8 uVar12;
  long lVar13;
  ulong uVar14;
  float fVar15;
  float fVar16;
  float fVar17;
  float fVar18;
  float fStack_48;
  float fStack_44;
  
  puVar4 = PTR_DAT_05e63d30;
  puVar3 = PTR_DAT_05e63d28;
  if ((bRam000000000625c31a & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e63d38);
    func_0x029f5a50(PTR_DAT_05e63d30);
    func_0x029f5a50(PTR_DAT_05e63d40);
    func_0x029f5a50(PTR_DAT_05e63d48);
    func_0x029f5a50(PTR_DAT_05e63d28);
    func_0x029f5a50(PTR_DAT_05e591c0);
    bRam000000000625c31a = 1;
  }
  lVar6 = func_0x029f5cec(*(undefined8 *)puVar3);
  func_0x0452c340(lVar6,*(undefined8 *)puVar4);
  puVar5 = PTR_DAT_05e63d48;
  puVar4 = PTR_DAT_05e63d38;
  puVar3 = PTR_DAT_05e591c0;
  lVar9 = *(long *)(param_1 + 0x20);
  if (lVar9 != 0) {
    lVar13 = 4;
    do {
      fVar2 = _UNK_0116c26c;
      uVar14 = lVar13 - 4;
      if ((long)(int)*(uint *)(lVar9 + 0x18) <= (long)uVar14) {
        if (lVar6 != 0) {
          iVar8 = *(int *)(lVar6 + 0x18);
          if (iVar8 < 1) {
            return;
          }
          iVar11 = 0;
          while( true ) {
            fVar17 = 0.0;
            if (iVar8 + -1 != 0) {
              fVar15 = (float)iVar11 / (float)(iVar8 + -1);
              fVar17 = *(float *)(param_1 + 0x2c) * -0.5;
              fVar18 = 1.0;
              if (fVar15 <= 1.0) {
                fVar18 = fVar15;
              }
              fVar16 = 0.0;
              if (0.0 <= fVar15) {
                fVar16 = fVar18;
              }
              fVar17 = fVar17 + fVar16 * (*(float *)(param_1 + 0x2c) * 0.5 - fVar17);
            }
            lVar9 = func_0x0452c8d8(lVar6,iVar11,*(undefined8 *)puVar5);
            if (lVar9 == 0) break;
            func_0x05afb270(fVar17 * fVar2,&fStack_44,&fStack_48);
            iVar11 = iVar11 + 1;
            fVar17 = *(float *)(param_1 + 0x28);
            *(undefined4 *)(lVar9 + 0x5c) = 0;
            *(float *)(lVar9 + 0x58) = fStack_44 * fVar17;
            *(float *)(lVar9 + 0x60) = -(fStack_48 * fVar17);
            iVar8 = *(int *)(lVar6 + 0x18);
            if (iVar8 <= iVar11) {
              return;
            }
          }
        }
        break;
      }
      if (*(uint *)(lVar9 + 0x18) <= uVar14) {
LAB_02c7bc78:
                    /* WARNING: Subroutine does not return */
        Throw_Index_Wrapper();
      }
      uVar12 = *(undefined8 *)(lVar9 + lVar13 * 8);
      if (*(int *)(*(long *)puVar3 + 0xe4) == 0) {
        func_0x029f5bd0();
      }
      uVar7 = Object_op_Inequality_0x6000ded(uVar12,0,0);
      if ((uVar7 & 1) != 0) {
        lVar9 = *(long *)(param_1 + 0x20);
        if (lVar9 == 0) break;
        if (*(uint *)(lVar9 + 0x18) <= uVar14) goto LAB_02c7bc78;
        lVar9 = *(long *)(lVar9 + lVar13 * 8);
        if ((lVar9 == 0) || (lVar9 = Component_get_gameObject_0x6000c83(lVar9,0), lVar9 == 0))
        break;
        uVar7 = GameObject_get_activeSelf_0x6000cff(lVar9,0);
        if ((uVar7 & 1) != 0) {
          lVar9 = *(long *)(param_1 + 0x20);
          if (lVar9 == 0) break;
          if (*(uint *)(lVar9 + 0x18) <= uVar14) goto LAB_02c7bc78;
          if (lVar6 == 0) break;
          lVar10 = *(long *)(lVar6 + 0x10);
          uVar12 = *(undefined8 *)(lVar9 + lVar13 * 8);
          lVar9 = *(long *)puVar4;
          *(int *)(lVar6 + 0x1c) = *(int *)(lVar6 + 0x1c) + 1;
          if (lVar10 == 0) break;
          uVar1 = *(uint *)(lVar6 + 0x18);
          if (uVar1 < *(uint *)(lVar10 + 0x18)) {
            *(uint *)(lVar6 + 0x18) = uVar1 + 1;
            *(undefined8 *)(lVar10 + (long)(int)uVar1 * 8 + 0x20) = uVar12;
            Managed_WriteBarrier();
          }
          else {
            func_0x0452cba8(lVar6,uVar12,
                            *(undefined8 *)(*(long *)(*(long *)(lVar9 + 0x20) + 0xc0) + 0x70));
          }
        }
      }
      lVar9 = *(long *)(param_1 + 0x20);
      lVar13 = lVar13 + 1;
    } while (lVar9 != 0);
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

