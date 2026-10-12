/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2a9e240, Ghidra VA 02b9e240. */

int Contents_Unlock_manager_Next_Unlock_Stage_return(void)

{
  undefined *puVar1;
  int iVar2;
  long lVar3;
  ulong uVar4;
  long lVar5;
  int iVar6;
  long lVar7;
  ulong uVar8;
  
  if ((bRam000000000625b9e6 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5e4d0);
    bRam000000000625b9e6 = 1;
  }
  puVar1 = PTR_DAT_05e5e4d0;
  iVar6 = 0x7fffffff;
  lVar7 = 8;
  do {
    lVar3 = *(long *)puVar1;
    if (*(int *)(lVar3 + 0xe4) == 0) {
      func_0x029f5bd0();
      lVar3 = *(long *)puVar1;
    }
    lVar5 = *(long *)(*(long *)(lVar3 + 0xb8) + 0x10);
    if (lVar5 == 0) {
LAB_02b9e340:
                    /* WARNING: Subroutine does not return */
      Throw_NullReference_Wrapper();
    }
    uVar8 = lVar7 - 8;
    if ((long)*(int *)(lVar5 + 0x18) <= (long)uVar8) {
      if (iVar6 == 0x7fffffff) {
        iVar6 = -1;
      }
      return iVar6;
    }
    if (*(int *)(lVar3 + 0xe4) == 0) {
      func_0x029f5bd0();
      lVar5 = *(long *)(*(long *)(*(long *)puVar1 + 0xb8) + 0x10);
      if (lVar5 == 0) goto LAB_02b9e340;
    }
    if (*(uint *)(lVar5 + 0x18) <= uVar8) goto LAB_02b9e344;
    uVar4 = Contents_Unlock_manager_Is_Unlocked(*(undefined4 *)(lVar5 + lVar7 * 4));
    if ((uVar4 & 1) == 0) {
      lVar3 = *(long *)puVar1;
      if (*(int *)(lVar3 + 0xe4) == 0) {
        func_0x029f5bd0();
        lVar3 = *(long *)puVar1;
      }
      lVar3 = *(long *)(*(long *)(lVar3 + 0xb8) + 0x10);
      if (lVar3 == 0) goto LAB_02b9e340;
      if (*(uint *)(lVar3 + 0x18) <= uVar8) {
LAB_02b9e344:
                    /* WARNING: Subroutine does not return */
        Throw_Index_Wrapper();
      }
      iVar2 = Contents_Unlock_manager_Unlock_Stage_return(*(undefined4 *)(lVar3 + lVar7 * 4));
      if (iVar2 <= iVar6) {
        iVar6 = iVar2;
      }
    }
    lVar7 = lVar7 + 1;
  } while( true );
}

