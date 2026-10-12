/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b63f94, Ghidra VA 02c63f94. */

bool Fish_Tank_FindAutoMergePair(long param_1,long *param_2,long *param_3)

{
  int iVar1;
  undefined *puVar2;
  undefined *puVar3;
  bool bVar4;
  uint uVar5;
  ulong uVar6;
  long lVar7;
  long lVar8;
  long lVar9;
  long lVar10;
  undefined8 uVar11;
  uint uVar12;
  uint uVar13;
  
  puVar3 = PTR_DAT_05e5dd38;
  if ((bRam000000000625c23e & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5dd38);
    func_0x029f5a50(PTR_DAT_05e62fe8);
    func_0x029f5a50(PTR_DAT_05e63128);
    func_0x029f5a50(PTR_DAT_05e591c0);
    bRam000000000625c23e = 1;
  }
  *param_2 = 0;
  Managed_WriteBarrier(param_2,0);
  *param_3 = 0;
  Managed_WriteBarrier(param_3,0);
  puVar2 = PTR_DAT_05e591c0;
  if (**(long **)(*(long *)puVar3 + 0xb8) != 0) {
    uVar13 = 0;
    bVar4 = true;
    lVar8 = *(long *)(**(long **)(*(long *)puVar3 + 0xb8) + 0x90);
    lVar7 = *(long *)(param_1 + 0x20);
    while (lVar7 != 0) {
      uVar12 = 0;
      lVar9 = 0;
      while ((int)uVar12 < (int)*(uint *)(lVar7 + 0x18)) {
        if (*(uint *)(lVar7 + 0x18) <= uVar12) {
                    /* WARNING: Subroutine does not return */
          Throw_Index_Wrapper();
        }
        lVar7 = *(long *)(lVar7 + (long)(int)uVar12 * 8 + 0x20);
        if (lVar7 == 0) goto LAB_02c641a4;
        lVar10 = lVar9;
        if ((((*(char *)(lVar7 + 0x48) != '\0') && (*(uint *)(lVar7 + 0x40) == uVar13)) &&
            (*(char *)(lVar7 + 0x84) == '\0')) &&
           ((*(char *)(lVar7 + 0x86) == '\0' && (*(char *)(lVar7 + 0x49) == '\0')))) {
          uVar11 = *(undefined8 *)(param_1 + 0x40);
          if (*(int *)(*(long *)puVar2 + 0xe4) == 0) {
            func_0x029f5bd0();
          }
          uVar6 = Object_op_Equality_0x6000dec(lVar7,uVar11,0);
          if (((uVar6 & 1) == 0) && (iVar1 = *(int *)(lVar7 + 0x44), -1 < iVar1)) {
            if (lVar8 == 0) goto LAB_02c641a4;
            if ((iVar1 < *(int *)(lVar8 + 0x18)) &&
               (uVar5 = func_0x044f7718(lVar8,iVar1,*(undefined8 *)PTR_DAT_05e63128),
               uVar5 == uVar13)) {
              if (*(int *)(*(long *)puVar2 + 0xe4) == 0) {
                func_0x029f5bd0();
              }
              uVar6 = Object_op_Equality_0x6000dec(lVar9,0,0);
              lVar10 = lVar7;
              if ((uVar6 & 1) == 0) {
                if (lVar9 == 0) goto LAB_02c641a4;
                lVar10 = lVar9;
                if (*(int *)(lVar9 + 0x44) != *(int *)(lVar7 + 0x44)) {
                  *param_3 = lVar9;
                  Managed_WriteBarrier(param_3,lVar9);
                  *param_2 = lVar7;
                  Managed_WriteBarrier(param_2,lVar7);
                  return bVar4;
                }
              }
            }
          }
        }
        lVar7 = *(long *)(param_1 + 0x20);
        uVar12 = uVar12 + 1;
        lVar9 = lVar10;
        if (lVar7 == 0) goto LAB_02c641a4;
      }
      bVar4 = uVar13 < 0xb;
      uVar13 = uVar13 + 1;
      if (uVar13 == 0xc) {
        return bVar4;
      }
    }
  }
LAB_02c641a4:
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

