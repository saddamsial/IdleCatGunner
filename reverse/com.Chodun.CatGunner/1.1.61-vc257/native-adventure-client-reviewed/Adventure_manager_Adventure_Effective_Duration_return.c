/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b2d080, Ghidra VA 02c2d080. */

uint Adventure_manager_Adventure_Effective_Duration_return(long param_1,uint param_2)

{
  uint uVar1;
  uint uVar2;
  ulong uVar3;
  long lVar4;
  
  if ((bRam000000000625c001 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5e0b8);
    bRam000000000625c001 = 1;
  }
  lVar4 = *(long *)(param_1 + 0x68);
  if (lVar4 != 0) {
    if (param_2 < *(uint *)(lVar4 + 0x18)) {
      uVar1 = *(uint *)(lVar4 + (long)(int)param_2 * 4 + 0x20);
      if (*(int *)(*(long *)PTR_DAT_05e5e0b8 + 0xe4) == 0) {
        func_0x029f5bd0();
      }
      uVar3 = PlusPack_Is_Active_0x6000d35(2,0);
      uVar2 = uVar1 - 0x10;
      uVar2 = uVar2 & ((int)uVar2 >> 0x1f ^ 0xffffffffU);
      if ((uVar3 & 1) == 0) {
        uVar2 = uVar1;
      }
      return uVar2;
    }
                    /* WARNING: Subroutine does not return */
    Throw_Index_Wrapper();
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

