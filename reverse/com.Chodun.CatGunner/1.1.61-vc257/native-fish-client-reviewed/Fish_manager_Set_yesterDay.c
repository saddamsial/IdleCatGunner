/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b5e094, Ghidra VA 02c5e094. */

void Fish_manager_Set_yesterDay(long param_1)

{
  undefined *puVar1;
  ulong uVar2;
  undefined8 uVar3;
  undefined8 uStack_18;
  
  if ((bRam000000000625c1fd & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e597d0);
    func_0x029f5a50(PTR_DAT_05e5d3c0);
    bRam000000000625c1fd = 1;
  }
  uStack_18 = 0;
  uVar2 = Cheat_manager_get_IsCheatBuild_0x6000281(0);
  puVar1 = PTR_DAT_05e597d0;
  if ((uVar2 & 1) != 0) {
    if (*(int *)(*(long *)PTR_DAT_05e5d3c0 + 0xe4) == 0) {
      func_0x029f5bd0();
    }
    uStack_18 = Time_manager_get_Now_0x6000579(0);
    if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
      func_0x029f5bd0(*(long *)puVar1);
    }
    uVar3 = DateTime_AddDays_0x60005fb(0xbff0000000000000,&uStack_18,0);
    *(undefined8 *)(param_1 + 0x70) = uVar3;
  }
  return;
}

