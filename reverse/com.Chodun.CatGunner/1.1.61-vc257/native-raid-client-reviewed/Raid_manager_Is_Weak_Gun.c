/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b51cc8, Ghidra VA 02c51cc8. */

bool Raid_manager_Is_Weak_Gun(uint param_1)

{
  int iVar1;
  int iVar2;
  long lVar3;
  
  if ((bRam000000000625c1c0 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5dd40);
    func_0x029f5a50(PTR_DAT_05e5e070);
    bRam000000000625c1c0 = 1;
  }
  if ((int)param_1 < 0) {
    return false;
  }
  if ((**(long **)(*(long *)PTR_DAT_05e5dd40 + 0xb8) != 0) &&
     (lVar3 = *(long *)(**(long **)(*(long *)PTR_DAT_05e5dd40 + 0xb8) + 0x20), lVar3 != 0)) {
    if (*(uint *)(lVar3 + 0x18) <= param_1) {
                    /* WARNING: Subroutine does not return */
      Throw_Index_Wrapper();
    }
    lVar3 = *(long *)(lVar3 + (ulong)param_1 * 8 + 0x20);
    if (lVar3 != 0) {
      iVar1 = *(int *)(lVar3 + 0x18);
      if (*(int *)(*(long *)PTR_DAT_05e5e070 + 0xe4) == 0) {
        func_0x029f5bd0();
      }
      iVar2 = Raid_manager_Buff_GunType_Now();
      return iVar1 == iVar2;
    }
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

