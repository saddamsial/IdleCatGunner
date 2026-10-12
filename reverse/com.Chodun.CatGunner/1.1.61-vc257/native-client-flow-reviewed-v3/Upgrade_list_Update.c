/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2bb1c78, Ghidra VA 02cb1c78. */

void Upgrade_list_Update(long param_1)

{
  undefined *puVar1;
  ulong uVar2;
  long lVar3;
  long lVar4;
  
  if ((bRam000000000625c550 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e62670);
    func_0x029f5a50(PTR_DAT_05e5d4e8);
    bRam000000000625c550 = 1;
  }
  puVar1 = PTR_DAT_05e5d4e8;
  if (*(char *)(param_1 + 0x28) == '\0') {
    return;
  }
  if (*(int *)(*(long *)PTR_DAT_05e5d4e8 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  uVar2 = Upgrade_manager_get_Is_AutoUpgrade_Enabled_0x6000fa4();
  if (((uVar2 & 1) != 0) && (**(char **)(*(long *)PTR_DAT_05e62670 + 0xb8) == '\0')) {
    lVar3 = *(long *)puVar1;
    if (*(int *)(lVar3 + 0xe4) == 0) {
      func_0x029f5bd0();
      lVar3 = *(long *)puVar1;
    }
    if (**(long **)(lVar3 + 0xb8) == 0) goto LAB_02cb1d64;
    uVar2 = Upgrade_manager_AutoUpgrade_All_0x6000f9c();
    if ((uVar2 & 1) != 0) {
LAB_02cb1d18:
      *(undefined1 *)(param_1 + 0x28) = 0;
      return;
    }
  }
  lVar3 = *(long *)(param_1 + 0x20);
  if (lVar3 != 0) {
    lVar4 = 0;
    do {
      if ((int)*(uint *)(lVar3 + 0x18) <= (int)(uint)lVar4) goto LAB_02cb1d18;
      if (*(uint *)(lVar3 + 0x18) <= (uint)lVar4) {
                    /* WARNING: Subroutine does not return */
        Throw_Index_Wrapper();
      }
      if (*(long *)(lVar3 + lVar4 * 8 + 0x20) == 0) break;
      Upgrade_Ingame_Reload();
      lVar3 = *(long *)(param_1 + 0x20);
      lVar4 = lVar4 + 1;
    } while (lVar3 != 0);
  }
LAB_02cb1d64:
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

