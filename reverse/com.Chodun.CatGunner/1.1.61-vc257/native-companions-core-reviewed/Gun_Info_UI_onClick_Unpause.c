/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b70500, Ghidra VA 02c70500. */

void Gun_Info_UI_onClick_Unpause(undefined8 param_1)

{
  undefined *puVar1;
  ulong uVar2;
  
  if ((bRam000000000625c2c3 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5dd40);
    bRam000000000625c2c3 = 1;
  }
  uVar2 = Gun_Info_UI_Is_Still_Valid(param_1);
  if (((uVar2 & 1) == 0) || (uVar2 = Gun_Info_UI_Can_Toggle_Pause(param_1), (uVar2 & 1) == 0)) {
    puVar1 = PTR_DAT_05e5dd40;
    Gun_Info_UI_Close(param_1);
    if (**(long **)(*(long *)puVar1 + 0xb8) != 0) {
      Gun_manager_ReloadGunUI_0x6000a6b(**(long **)(*(long *)puVar1 + 0xb8),0);
      return;
    }
  }
  else {
    Gun_Info_UI_Set_Pause_0x6000b03(param_1,0);
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

