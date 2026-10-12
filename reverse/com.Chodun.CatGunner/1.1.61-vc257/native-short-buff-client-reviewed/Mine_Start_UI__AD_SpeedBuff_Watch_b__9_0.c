/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b4c154, Ghidra VA 02c4c154. */

void Mine_Start_UI__AD_SpeedBuff_Watch_b__9_0(undefined8 param_1)

{
  undefined *puVar1;
  
  puVar1 = PTR_DAT_05e5dd48;
  if ((bRam000000000625c12a & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5dd48);
    bRam000000000625c12a = 1;
  }
  Mine_Start_UI_SpeedBuff_Reload(param_1);
  if (**(long **)(*(long *)puVar1 + 0xb8) != 0) {
    Mine_manager_Game_Start_0x60007ef();
    return;
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

