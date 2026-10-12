/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b52384, Ghidra VA 02c52384. */

void Raid_manager__Helper_Purchase(undefined8 param_1)

{
  undefined *puVar1;
  ulong uVar2;
  long lVar3;
  
  if ((bRam000000000625c1cb & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5d920);
    func_0x029f5a50(PTR_DAT_05e635a8);
    bRam000000000625c1cb = 1;
  }
  uVar2 = Raid_manager__get_Is_Helper_Active(param_1);
  puVar1 = PTR_DAT_05e5d920;
  if ((uVar2 & 1) == 0) {
    if (*(int *)(*(long *)PTR_DAT_05e5d920 + 0xe4) == 0) {
      func_0x029f5bd0();
    }
    if (cRam000000000625b960 == '\0') {
      func_0x029f5a50(PTR_DAT_05e5d920);
      cRam000000000625b960 = '\x01';
    }
    lVar3 = *(long *)puVar1;
    if (*(int *)(lVar3 + 0xe4) == 0) {
      func_0x029f5bd0();
      lVar3 = *(long *)puVar1;
    }
    if (**(long **)(lVar3 + 0xb8) != 0) {
      Shop_manager_Purchase_RaidHelper_0x6000dcb
                (**(long **)(lVar3 + 0xb8),*(undefined8 *)PTR_DAT_05e635a8,0);
      return;
    }
  }
  else {
    if (cRam000000000625ba57 == '\0') {
      func_0x029f5a50(PTR_DAT_05e5dd70);
      cRam000000000625ba57 = '\x01';
    }
    if (**(long **)(*(long *)PTR_DAT_05e5dd70 + 0xb8) != 0) {
      Sound_manager_PlaySfx_0x600054a
                (0x3f800000,**(long **)(*(long *)PTR_DAT_05e5dd70 + 0xb8),5,0,0);
      Raid_manager__Helper_UI_Reload(param_1);
      return;
    }
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

