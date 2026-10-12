/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b5ab44, Ghidra VA 02c5ab44. */

void Raid_GunSelect_Panel_ReloadList(long param_1)

{
  undefined *puVar1;
  undefined4 uVar2;
  long lVar3;
  long lVar4;
  uint uVar5;
  
  puVar1 = PTR_DAT_05e5e070;
  if ((bRam000000000625c1d8 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e62fe8);
    func_0x029f5a50(PTR_DAT_05e63128);
    func_0x029f5a50(PTR_DAT_05e5e070);
    bRam000000000625c1d8 = 1;
  }
  if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  lVar3 = Raid_manager_Sorted_Index_List_0x600090e(0);
  puVar1 = PTR_DAT_05e63128;
  lVar4 = *(long *)(param_1 + 0x20);
  if (lVar4 != 0) {
    uVar5 = 0;
    do {
      if ((int)*(uint *)(lVar4 + 0x18) <= (int)uVar5) {
        return;
      }
      if (*(uint *)(lVar4 + 0x18) <= uVar5) {
                    /* WARNING: Subroutine does not return */
        Throw_Index_Wrapper();
      }
      if (lVar3 == 0) break;
      lVar4 = *(long *)(lVar4 + (long)(int)uVar5 * 8 + 0x20);
      if ((int)uVar5 < *(int *)(lVar3 + 0x18)) {
        uVar2 = func_0x044f7718(lVar3,uVar5,*(undefined8 *)puVar1);
      }
      else {
        uVar2 = 0xffffffff;
      }
      if (lVar4 == 0) break;
      Raid_GunSelect_item_Reload_0x6000956(lVar4,uVar2);
      lVar4 = *(long *)(param_1 + 0x20);
      uVar5 = uVar5 + 1;
    } while (lVar4 != 0);
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

