/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b2f0a8, Ghidra VA 02c2f0a8. */

undefined4 Adventure_manager_Max_Unlocked_Map_Index_return(long param_1)

{
  int iVar1;
  undefined *puVar2;
  long lVar3;
  long lVar4;
  undefined4 uVar5;
  ulong uVar6;
  
  puVar2 = PTR_DAT_05e5dd28;
  if ((bRam000000000625c018 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5dd28);
    bRam000000000625c018 = 1;
  }
  lVar3 = *(long *)puVar2;
  uVar6 = 0;
  uVar5 = 0;
  while( true ) {
    if (*(int *)(lVar3 + 0xe4) == 0) {
      func_0x029f5bd0();
      lVar3 = *(long *)puVar2;
    }
    lVar4 = *(long *)(*(long *)(lVar3 + 0xb8) + 8);
    if (lVar4 == 0) break;
    if ((long)*(int *)(lVar4 + 0x18) <= (long)uVar6) {
      return uVar5;
    }
    iVar1 = *(int *)(param_1 + 0x30);
    if (*(int *)(lVar3 + 0xe4) == 0) {
      func_0x029f5bd0();
      lVar3 = *(long *)puVar2;
      lVar4 = *(long *)(*(long *)(lVar3 + 0xb8) + 8);
      if (lVar4 == 0) break;
    }
    if (*(uint *)(lVar4 + 0x18) <= uVar6) {
                    /* WARNING: Subroutine does not return */
      Throw_Index_Wrapper();
    }
    if (*(int *)(lVar4 + uVar6 * 4 + 0x20) <= iVar1) {
      uVar5 = (undefined4)uVar6;
    }
    uVar6 = uVar6 + 1;
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

