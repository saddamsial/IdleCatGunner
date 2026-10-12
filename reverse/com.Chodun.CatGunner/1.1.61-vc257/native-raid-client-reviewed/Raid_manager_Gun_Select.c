/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b586b4, Ghidra VA 02c586b4. */

void Raid_manager_Gun_Select(long param_1,undefined4 param_2)

{
  undefined *puVar1;
  int iVar2;
  ulong uVar3;
  long lVar4;
  long lVar5;
  
  puVar1 = PTR_DAT_05e5e070;
  if ((bRam000000000625c1ac & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5e070);
    bRam000000000625c1ac = 1;
  }
  if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  iVar2 = Raid_manager_GunNum_By_Index(param_2);
  if ((iVar2 == -1) ||
     (uVar3 = Raid_manager_Is_Index_Used_By_AnySlot(param_1,param_2), (uVar3 & 1) != 0)) {
    return;
  }
  lVar4 = *(long *)(param_1 + 0x88);
  if (lVar4 != 0) {
    if (*(uint *)(lVar4 + 0x18) <= *(uint *)(param_1 + 0x98)) {
LAB_02c587b4:
                    /* WARNING: Subroutine does not return */
      Throw_Index_Wrapper();
    }
    lVar5 = *(long *)(param_1 + 0x90);
    *(int *)(lVar4 + (long)(int)*(uint *)(param_1 + 0x98) * 4 + 0x20) = iVar2;
    if (lVar5 != 0) {
      if (*(uint *)(lVar5 + 0x18) <= *(uint *)(param_1 + 0x98)) goto LAB_02c587b4;
      lVar4 = *(long *)(param_1 + 0x38);
      *(undefined4 *)(lVar5 + (long)(int)*(uint *)(param_1 + 0x98) * 4 + 0x20) = param_2;
      if ((lVar4 != 0) && (lVar4 = Component_get_gameObject_0x6000c83(lVar4,0), lVar4 != 0)) {
        GameObject_SetActive_0x6000cfe(lVar4,0,0);
        if (*(long *)(param_1 + 0x30) != 0) {
          Raid_Start_UI_Reload_Slots(*(long *)(param_1 + 0x30),0);
          return;
        }
      }
    }
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

