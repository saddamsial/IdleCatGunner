/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2ba789c, Ghidra VA 02ca789c. */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void Skin_manager_Balance_Reload(long param_1)

{
  uint uVar1;
  undefined8 uVar2;
  long lVar3;
  int iVar4;
  int iVar5;
  uint uVar6;
  long lVar7;
  long lVar8;
  long lVar9;
  
  uVar2 = _UNK_0116f668;
  lVar3 = *(long *)(param_1 + 0x20);
  if (lVar3 != 0) {
    uVar1 = *(uint *)(lVar3 + 0x18);
    if (0 < (int)uVar1) {
      iVar4 = 0;
      iVar5 = 0;
      uVar6 = 0;
      do {
        if (uVar1 == uVar6) {
LAB_02ca7930:
                    /* WARNING: Subroutine does not return */
          Throw_Index_Wrapper();
        }
        lVar7 = (long)(int)uVar6;
        lVar9 = *(long *)(lVar3 + lVar7 * 8 + 0x20);
        if (lVar9 == 0) goto LAB_02ca792c;
        lVar8 = *(long *)(param_1 + 0x38);
        *(int *)(lVar9 + 0x10) = iVar5;
        *(ulong *)(lVar9 + 0x14) = CONCAT44(uVar6 * (int)((ulong)uVar2 >> 0x20),uVar6 * (int)uVar2);
        if (lVar8 == 0) goto LAB_02ca792c;
        if (*(uint *)(lVar8 + 0x18) <= uVar6) goto LAB_02ca7930;
        uVar6 = uVar6 + 1;
        iVar5 = iVar5 + 0x10;
        *(int *)(lVar8 + lVar7 * 4 + 0x20) = iVar4;
        iVar4 = iVar4 + 100;
      } while ((uVar1 & ((int)uVar1 >> 0x1f ^ 0xffffffffU)) != uVar6);
    }
    return;
  }
LAB_02ca792c:
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

