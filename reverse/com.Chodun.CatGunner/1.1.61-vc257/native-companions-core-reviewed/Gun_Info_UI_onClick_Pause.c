/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b7040c, Ghidra VA 02c7040c. */

void Gun_Info_UI_onClick_Pause(undefined8 param_1)

{
  ulong uVar1;
  
  if ((bRam000000000625c2c2 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5dd40);
    bRam000000000625c2c2 = 1;
  }
  uVar1 = Gun_Info_UI_get_Content_Open_0x6000afe();
  if ((uVar1 & 1) == 0) {
    Gun_Info_UI_onClick_PauseLock_0x6000b05();
    return;
  }
  uVar1 = Gun_Info_UI_Is_Still_Valid(param_1);
  if (((uVar1 & 1) == 0) || (uVar1 = Gun_Info_UI_Can_Toggle_Pause(param_1), (uVar1 & 1) == 0)) {
    Gun_Info_UI_Close(param_1);
    if (**(long **)(*(long *)PTR_DAT_05e5dd40 + 0xb8) != 0) {
      Gun_manager_ReloadGunUI_0x6000a6b(**(long **)(*(long *)PTR_DAT_05e5dd40 + 0xb8),0);
      return;
    }
  }
  else {
    Gun_Info_UI_Set_Pause_0x6000b03(param_1,1);
    if (cRam000000000625ba57 == '\0') {
      func_0x029f5a50(PTR_DAT_05e5dd70);
      cRam000000000625ba57 = '\x01';
    }
    if (**(long **)(*(long *)PTR_DAT_05e5dd70 + 0xb8) != 0) {
      Sound_manager_PlaySfx_0x600054a
                (0x3f800000,**(long **)(*(long *)PTR_DAT_05e5dd70 + 0xb8),1,0,0);
      Gun_Info_UI_Buttons_Reload(param_1);
      return;
    }
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

