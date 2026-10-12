/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b55144, Ghidra VA 02c55144. */

void Raid_Mission_manager_Cheat_ClearAll(long param_1)

{
  uint uVar1;
  ulong uVar2;
  long lVar3;
  
  if ((bRam000000000625c185 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5e068);
    bRam000000000625c185 = 1;
  }
  uVar2 = Cheat_manager_get_IsCheatBuild_0x6000281(0);
  if ((uVar2 & 1) != 0) {
    Raid_Mission_manager_Season_Check(param_1);
    lVar3 = *(long *)(param_1 + 0x30);
    if (lVar3 == 0) {
                    /* WARNING: Subroutine does not return */
      Throw_NullReference_Wrapper();
    }
    uVar1 = *(uint *)(lVar3 + 0x18);
    uVar2 = 0;
    do {
      if (uVar1 == uVar2) {
                    /* WARNING: Subroutine does not return */
        Throw_Index_Wrapper();
      }
      *(undefined1 *)(lVar3 + 0x20 + uVar2) = 1;
      uVar2 = uVar2 + 1;
    } while (uVar2 != 8);
    lVar3 = *(long *)(*(long *)(*(long *)PTR_DAT_05e5e068 + 0xb8) + 8);
    if (lVar3 != 0) {
                    /* WARNING: Could not recover jumptable at 0x02c551e0. Too many branches */
                    /* WARNING: Treating indirect jump as call */
      (**(code **)(lVar3 + 0x18))(*(undefined8 *)(lVar3 + 0x40),*(undefined8 *)(lVar3 + 0x28));
      return;
    }
  }
  return;
}

