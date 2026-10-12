/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b56f80, Ghidra VA 02c56f80. */

undefined4 Raid_manager_StarGem_Per_Level_return(int param_1)

{
  undefined *puVar1;
  undefined4 uVar2;
  long lVar3;
  long lVar4;
  uint uVar5;
  
  if ((bRam000000000625c19c & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5e070);
    bRam000000000625c19c = 1;
  }
  puVar1 = PTR_DAT_05e5e070;
  if (param_1 < 1) {
    uVar2 = 0;
  }
  else {
    lVar3 = *(long *)PTR_DAT_05e5e070;
    if (*(int *)(lVar3 + 0xe4) == 0) {
      func_0x029f5bd0();
      lVar3 = *(long *)puVar1;
    }
    lVar4 = *(long *)(*(long *)(lVar3 + 0xb8) + 0x30);
    if (lVar4 == 0) {
LAB_02c57044:
                    /* WARNING: Subroutine does not return */
      Throw_NullReference_Wrapper();
    }
    if ((int)((param_1 - 1U) / 10) < *(int *)(lVar4 + 0x18)) {
      if (*(int *)(lVar3 + 0xe4) == 0) {
        func_0x029f5bd0();
        lVar4 = *(long *)(*(long *)(*(long *)puVar1 + 0xb8) + 0x30);
        if (lVar4 == 0) goto LAB_02c57044;
      }
      uVar5 = (param_1 - 1U) / 10;
      if (*(uint *)(lVar4 + 0x18) <= uVar5) {
                    /* WARNING: Subroutine does not return */
        Throw_Index_Wrapper();
      }
      uVar2 = *(undefined4 *)(lVar4 + (ulong)uVar5 * 4 + 0x20);
    }
    else {
      uVar2 = 5;
    }
  }
  return uVar2;
}

