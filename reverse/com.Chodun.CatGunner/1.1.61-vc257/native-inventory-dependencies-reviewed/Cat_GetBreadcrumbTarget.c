/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b40f4c, Ghidra VA 02c40f4c. */

float Cat_GetBreadcrumbTarget(float param_1,float param_2,float param_3)

{
  int iVar1;
  undefined *puVar2;
  undefined *puVar3;
  long lVar4;
  ulong uVar5;
  float fVar6;
  long lVar7;
  long *plVar8;
  int iVar9;
  int iVar10;
  float fVar11;
  float fVar12;
  float fVar13;
  float fVar14;
  
  puVar2 = PTR_DAT_05e631d8;
  fVar13 = param_2;
  fVar14 = param_3;
  if ((bRam000000000625c0a7 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e631d8);
    func_0x029f5a50(PTR_DAT_05e63200);
    func_0x029f5a50(PTR_DAT_05e63260);
    func_0x029f5a50(PTR_DAT_05e591c0);
    bRam000000000625c0a7 = 1;
  }
  lVar4 = *(long *)puVar2;
  if (*(int *)(lVar4 + 0xe4) == 0) {
    func_0x029f5bd0();
    lVar4 = *(long *)puVar2;
  }
  puVar3 = PTR_DAT_05e63260;
  if (**(long **)(lVar4 + 0xb8) != 0) {
    if (*(int *)(**(long **)(lVar4 + 0xb8) + 0x18) == 0) {
      return param_1;
    }
    iVar9 = 0;
    fVar6 = 3.4028235e+38;
    iVar10 = 0;
    while( true ) {
      if (*(int *)(lVar4 + 0xe4) == 0) {
        func_0x029f5bd0();
        lVar4 = *(long *)puVar2;
      }
      plVar8 = *(long **)(lVar4 + 0xb8);
      lVar7 = *plVar8;
      if (lVar7 == 0) goto LAB_02c4118c;
      if (*(int *)(lVar7 + 0x18) <= iVar9) break;
      if (*(int *)(lVar4 + 0xe4) == 0) {
        func_0x029f5bd0();
        lVar7 = **(long **)(*(long *)puVar2 + 0xb8);
        if (lVar7 == 0) goto LAB_02c4118c;
      }
      fVar11 = (float)func_0x045a6f78(lVar7,iVar9,*(undefined8 *)puVar3);
      fVar12 = fVar13 - param_2;
      lVar4 = *(long *)puVar2;
      fVar14 = fVar14 - param_3;
      fVar13 = fVar14 * fVar14;
      fVar11 = fVar13 + (fVar11 - param_1) * (fVar11 - param_1) + fVar12 * fVar12;
      iVar1 = iVar9;
      if (fVar6 <= fVar11) {
        iVar1 = iVar10;
        fVar11 = fVar6;
      }
      fVar6 = fVar11;
      iVar9 = iVar9 + 1;
      iVar10 = iVar1;
    }
    if (*(int *)(lVar4 + 0xe4) == 0) {
      func_0x029f5bd0();
      lVar4 = *(long *)puVar2;
      plVar8 = *(long **)(lVar4 + 0xb8);
      lVar7 = *plVar8;
      if (lVar7 == 0) goto LAB_02c4118c;
    }
    iVar1 = *(int *)(lVar7 + 0x18) + -1;
    iVar9 = iVar10 + 5;
    if (iVar1 <= iVar10 + 5) {
      iVar9 = iVar1;
    }
    if (iVar9 != iVar10) {
      if (*(int *)(lVar4 + 0xe4) == 0) {
        func_0x029f5bd0();
        lVar7 = **(long **)(*(long *)puVar2 + 0xb8);
        if (lVar7 == 0) goto LAB_02c4118c;
      }
      fVar13 = (float)func_0x045a6f78(lVar7,iVar9,*(undefined8 *)puVar3);
      return fVar13;
    }
    if (*(int *)(lVar4 + 0xe4) == 0) {
      func_0x029f5bd0();
      plVar8 = *(long **)(*(long *)puVar2 + 0xb8);
    }
    lVar4 = plVar8[0xd];
    if (*(int *)(*(long *)PTR_DAT_05e591c0 + 0xe4) == 0) {
      func_0x029f5bd0();
    }
    uVar5 = Object_op_Inequality_0x6000ded(lVar4,0,0);
    if ((uVar5 & 1) == 0) {
      return param_1;
    }
    lVar4 = *(long *)puVar2;
    if (*(int *)(lVar4 + 0xe4) == 0) {
      func_0x029f5bd0();
      lVar4 = *(long *)puVar2;
    }
    lVar4 = *(long *)(*(long *)(lVar4 + 0xb8) + 0x68);
    if ((lVar4 != 0) && (lVar4 = Component_get_transform_0x6000c82(lVar4,0), lVar4 != 0)) {
      fVar13 = (float)Transform_get_position_0x6000f4d(lVar4,0);
      return fVar13;
    }
  }
LAB_02c4118c:
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

