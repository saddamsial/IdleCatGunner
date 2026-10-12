/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2bac688, Ghidra VA 02cac688. */

ulong Tree_Grid_Degree_Random_return(undefined8 param_1,uint param_2)

{
  undefined *puVar1;
  int iVar2;
  long lVar3;
  long lVar4;
  ulong uVar5;
  ulong uVar6;
  float fVar7;
  float fVar8;
  
  puVar1 = PTR_DAT_05e64a88;
  if ((bRam000000000625c515 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e64a88);
    bRam000000000625c515 = 1;
  }
  fVar8 = 0.0;
  fVar7 = (float)Random_Range_0x6000ba6(0,0x42c80000,0);
  lVar3 = *(long *)puVar1;
  uVar6 = 0;
  do {
    if (*(int *)(lVar3 + 0xe4) == 0) {
      func_0x029f5bd0();
      lVar3 = *(long *)puVar1;
    }
    if (**(long **)(lVar3 + 0xb8) == 0) {
LAB_02cac794:
                    /* WARNING: Subroutine does not return */
      Throw_NullReference_Wrapper();
    }
    iVar2 = Array_GetLength_0x6000d31(**(long **)(lVar3 + 0xb8),1,0);
    if ((long)iVar2 <= (long)uVar6) {
      uVar6 = 0;
LAB_02cac77c:
      return uVar6 & 0xffffffff;
    }
    lVar3 = *(long *)puVar1;
    if (*(int *)(lVar3 + 0xe4) == 0) {
      func_0x029f5bd0();
      lVar3 = *(long *)puVar1;
    }
    lVar4 = **(long **)(lVar3 + 0xb8);
    if (lVar4 == 0) goto LAB_02cac794;
    if ((**(uint **)(lVar4 + 0x10) <= param_2) ||
       (uVar5 = *(ulong *)(*(uint **)(lVar4 + 0x10) + 4), (uVar5 & 0xffffffff) <= uVar6)) {
                    /* WARNING: Subroutine does not return */
      Throw_Index_Wrapper();
    }
    fVar8 = fVar8 + *(float *)(lVar4 + (uVar6 + uVar5 * (long)(int)param_2) * 4 + 0x20);
    if (fVar7 < fVar8) goto LAB_02cac77c;
    uVar6 = uVar6 + 1;
  } while( true );
}

