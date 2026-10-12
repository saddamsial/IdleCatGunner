/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b66980, Ghidra VA 02c66980. */

/* WARNING: Possible PIC construction at 0x02c66b10: Changing call to branch */
/* WARNING: Removing unreachable block (ram,0x02c66b14) */
/* WARNING: Removing unreachable block (ram,0x02c66b28) */
/* WARNING: Removing unreachable block (ram,0x02c66b64) */
/* WARNING: Removing unreachable block (ram,0x02c66b68) */
/* WARNING: Removing unreachable block (ram,0x02c66ba0) */
/* WARNING: Removing unreachable block (ram,0x02c66bbc) */
/* WARNING: Removing unreachable block (ram,0x02c66bd4) */
/* WARNING: Removing unreachable block (ram,0x02c66be0) */
/* WARNING: Removing unreachable block (ram,0x02c66bf4) */
/* WARNING: Removing unreachable block (ram,0x02c66bfc) */

undefined8
Bullet_HitPierce(undefined4 param_1,undefined4 param_2,undefined4 param_3,long param_4,long param_5,
                ulong param_6,uint param_7)

{
  undefined4 uVar1;
  undefined *puVar2;
  undefined1 *puVar3;
  int iVar4;
  long lVar5;
  ulong uVar6;
  long lVar7;
  undefined8 *puVar8;
  undefined8 uVar9;
  long lVar10;
  long lVar11;
  int iVar12;
  uint uVar13;
  long lVar14;
  int *piVar15;
  uint uVar16;
  long unaff_x19;
  long unaff_x20;
  ulong unaff_x21;
  ulong uVar17;
  long unaff_x22;
  undefined8 unaff_x23;
  undefined8 uVar18;
  long *plVar19;
  undefined8 unaff_x24;
  undefined8 unaff_x25;
  undefined8 unaff_x26;
  int iVar20;
  undefined8 unaff_x27;
  uint uVar21;
  undefined8 unaff_x28;
  undefined8 unaff_x29;
  undefined8 unaff_x30;
  undefined1 auStack_90 [64];
  
  puVar3 = auStack_90;
  uVar17 = (ulong)param_7;
  if ((bRam000000000625c250 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5d560);
    func_0x029f5a50(PTR_DAT_05e5d338);
    func_0x029f5a50(PTR_DAT_05e639e0);
    func_0x029f5a50(PTR_DAT_05e591c0);
    func_0x029f5a50(PTR_DAT_05e5d368);
    bRam000000000625c250 = 1;
  }
  if ((param_6 & 1) == 0) {
    Bullet_SpawnFX(param_1,param_2,param_3,param_4);
    uVar18 = Bullet_DieAndWait(param_4);
    return uVar18;
  }
  if (param_5 == 0) goto LAB_02c66c18;
  lVar5 = func_0x02fe5f2c(param_5,*(undefined8 *)PTR_DAT_05e5d560);
  puVar2 = PTR_DAT_05e591c0;
  if (*(int *)(*(long *)PTR_DAT_05e591c0 + 0xe4) == 0) {
    func_0x029f5bd0(*(long *)PTR_DAT_05e591c0);
  }
  uVar6 = Object_op_Inequality_0x6000ded(lVar5,0,0);
  if ((uVar6 & 1) == 0) {
LAB_02c66a90:
    lVar7 = *(long *)(param_4 + 0xd0);
    if (lVar7 == 0) {
LAB_02c66c18:
                    /* WARNING: Subroutine does not return */
      Throw_NullReference_Wrapper();
    }
    lVar10 = *(long *)PTR_DAT_05e639e0;
    puVar3 = (undefined1 *)register0x00000008;
    param_4 = unaff_x19;
    param_5 = unaff_x20;
    lVar5 = unaff_x22;
    uVar18 = unaff_x23;
  }
  else {
    if (lVar5 == 0) goto LAB_02c66c18;
    uVar18 = *(undefined8 *)(lVar5 + 0x20);
    if (*(int *)(*(long *)puVar2 + 0xe4) == 0) {
      func_0x029f5bd0();
    }
    uVar6 = Object_op_Inequality_0x6000ded(uVar18,0,0);
    if ((uVar6 & 1) == 0) goto LAB_02c66a90;
    if (*(long *)(lVar5 + 0x20) == 0) goto LAB_02c66c18;
    if (*(char *)(*(long *)(lVar5 + 0x20) + 0x24) != '\0') goto LAB_02c66a90;
    lVar7 = *(long *)(param_4 + 0xd0);
    if (lVar7 == 0) goto LAB_02c66c18;
    lVar10 = *(long *)PTR_DAT_05e639e0;
    unaff_x30 = 0x2c66b14;
    unaff_x21 = uVar17;
  }
  lVar10 = *(long *)(*(long *)(*(long *)(lVar10 + 0x20) + 0xc0) + 0xa8);
  *(undefined8 *)(puVar3 + -0x60) = unaff_x29;
  *(undefined8 *)(puVar3 + -0x58) = unaff_x30;
  *(undefined8 *)(puVar3 + -0x50) = unaff_x28;
  *(undefined8 *)(puVar3 + -0x48) = unaff_x27;
  *(undefined8 *)(puVar3 + -0x40) = unaff_x26;
  *(undefined8 *)(puVar3 + -0x38) = unaff_x25;
  *(undefined8 *)(puVar3 + -0x30) = unaff_x24;
  *(undefined8 *)(puVar3 + -0x28) = uVar18;
  *(long *)(puVar3 + -0x20) = lVar5;
  *(ulong *)(puVar3 + -0x18) = unaff_x21;
  *(long *)(puVar3 + -0x10) = param_5;
  *(long *)(puVar3 + -8) = param_4;
  if (*(long *)(lVar7 + 0x10) == 0) {
    func_0x042845ec(lVar7,0,*(undefined8 *)(*(long *)(*(long *)(lVar10 + 0x20) + 0xc0) + 0x70));
  }
  iVar4 = func_0x04286980(lVar7,uVar17,
                          *(undefined8 *)(*(long *)(*(long *)(lVar10 + 0x20) + 0xc0) + 0xb0));
  lVar5 = *(long *)(lVar7 + 0x10);
  if (lVar5 == 0) goto code_r0x04284bd0;
  uVar21 = *(uint *)(lVar5 + 0x18);
  iVar20 = 0;
  if (uVar21 != 0) {
    iVar20 = iVar4 / (int)uVar21;
  }
  uVar13 = iVar4 - iVar20 * uVar21;
  if (uVar13 < uVar21) {
    lVar14 = *(long *)(lVar7 + 0x18);
    *(uint *)(puVar3 + -0x6c) = uVar13;
    uVar21 = *(int *)(lVar5 + (ulong)uVar13 * 4 + 0x20) - 1;
    if (-1 < (int)uVar21) {
      if (lVar14 == 0) goto code_r0x04284bd0;
      uVar18 = *(undefined8 *)(lVar14 + 0x18);
      iVar20 = 0;
      lVar5 = lVar14 + 0x20;
      *(long *)(puVar3 + -0x68) = lVar14;
      do {
        if ((uint)uVar18 <= uVar21) goto code_r0x04284b90;
        if (*(int *)(lVar5 + (ulong)uVar21 * 0xc) == iVar4) {
          plVar19 = *(long **)(lVar7 + 0x30);
          if (plVar19 == (long *)0x0) goto code_r0x04284bd0;
          lVar14 = *(long *)(*(long *)(*(long *)(lVar10 + 0x20) + 0xc0) + 0x20);
          uVar1 = *(undefined4 *)(lVar5 + (ulong)uVar21 * 0xc + 8);
          if ((*(ushort *)(lVar14 + 0x135) & 1) == 0) {
            lVar14 = func_0x02a2e9f8(lVar14);
          }
          lVar11 = *plVar19;
          uVar6 = (ulong)*(ushort *)(lVar11 + 0x12e);
          if (uVar6 != 0) {
            piVar15 = (int *)(*(long *)(lVar11 + 0xb0) + 8);
            do {
              if (*(long *)(piVar15 + -2) == lVar14) {
                puVar8 = (undefined8 *)(lVar11 + (long)*piVar15 * 0x10 + 0x138);
                goto code_r0x04284a18;
              }
              uVar6 = uVar6 - 1;
              piVar15 = piVar15 + 4;
            } while (uVar6 != 0);
          }
          puVar8 = (undefined8 *)func_0x02a2ed2c(plVar19,lVar14,0);
code_r0x04284a18:
          uVar6 = (*(code *)*puVar8)(plVar19,uVar1,uVar17,puVar8[1]);
          if ((uVar6 & 1) != 0) {
            return 0;
          }
          lVar14 = *(long *)(puVar3 + -0x68);
          uVar18 = *(undefined8 *)(lVar14 + 0x18);
        }
        if ((int)(uint)uVar18 <= iVar20) {
          func_0x029f5a64(PTR_DAT_05e5b168);
          uVar18 = func_0x029f5cec();
          uVar9 = func_0x029f5a64(PTR_DAT_05e6e570);
          func_0x04850f44(uVar18,uVar9,0);
          func_0x029f5bc0(uVar18,lVar10);
          goto code_r0x04284bd0;
        }
        if ((uint)uVar18 <= uVar21) goto code_r0x04284b90;
        iVar20 = iVar20 + 1;
        uVar21 = *(uint *)(lVar5 + (ulong)uVar21 * 0xc + 4);
      } while (-1 < (int)uVar21);
    }
    uVar21 = *(uint *)(lVar7 + 0x28);
    if ((int)uVar21 < 0) {
      if (lVar14 == 0) goto code_r0x04284bd0;
      uVar21 = *(uint *)(lVar7 + 0x24);
      uVar13 = *(uint *)(lVar14 + 0x18);
      uVar16 = *(uint *)(puVar3 + -0x6c);
      if (uVar21 == uVar13) {
        func_0x042846c8(lVar7,*(undefined8 *)(*(long *)(*(long *)(lVar10 + 0x20) + 0xc0) + 0x1a8));
        if (*(long *)(lVar7 + 0x10) == 0) goto code_r0x04284bd0;
        uVar21 = *(uint *)(lVar7 + 0x24);
        lVar14 = *(long *)(lVar7 + 0x18);
        uVar18 = *(undefined8 *)(*(long *)(lVar7 + 0x10) + 0x18);
        *(uint *)(lVar7 + 0x24) = uVar21 + 1;
        if (lVar14 == 0) goto code_r0x04284bd0;
        iVar20 = 0;
        iVar12 = (int)uVar18;
        if (iVar12 != 0) {
          iVar20 = iVar4 / iVar12;
        }
        uVar16 = iVar4 - iVar20 * iVar12;
        uVar13 = *(uint *)(lVar14 + 0x18);
      }
      else {
        *(uint *)(lVar7 + 0x24) = uVar21 + 1;
      }
    }
    else {
      if (lVar14 == 0) goto code_r0x04284bd0;
      uVar13 = *(uint *)(lVar14 + 0x18);
      uVar16 = *(uint *)(puVar3 + -0x6c);
      if (uVar13 <= uVar21) goto code_r0x04284b90;
      *(undefined4 *)(lVar7 + 0x28) = *(undefined4 *)(lVar14 + (ulong)uVar21 * 0xc + 0x24);
    }
    if (uVar21 < uVar13) {
      piVar15 = (int *)(lVar14 + 0x20 + (long)(int)uVar21 * 0xc);
      lVar5 = *(long *)(lVar7 + 0x10);
      *piVar15 = iVar4;
      piVar15[2] = param_7;
      if (lVar5 == 0) {
code_r0x04284bd0:
                    /* WARNING: Subroutine does not return */
        Throw_NullReference_Wrapper();
      }
      if (uVar16 < *(uint *)(lVar5 + 0x18)) {
        lVar5 = lVar5 + (ulong)uVar16 * 4;
        *(int *)(lVar14 + 0x20 + (long)(int)uVar21 * 0xc + 4) = *(int *)(lVar5 + 0x20) + -1;
        *(uint *)(lVar5 + 0x20) = uVar21 + 1;
        *(int *)(lVar7 + 0x20) = *(int *)(lVar7 + 0x20) + 1;
        *(int *)(lVar7 + 0x38) = *(int *)(lVar7 + 0x38) + 1;
        return 1;
      }
    }
  }
code_r0x04284b90:
                    /* WARNING: Subroutine does not return */
  Throw_Index_Wrapper();
}

