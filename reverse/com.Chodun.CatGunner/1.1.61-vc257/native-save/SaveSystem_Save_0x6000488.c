/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b16900, Ghidra VA 02c16900. */

void SaveSystem_Save_0x6000488(undefined8 param_1)

{
  undefined *puVar1;
  
  puVar1 = PTR_DAT_05e5df00;
  if ((bRam000000000625bef0 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e58f08);
    func_0x029f5a50(PTR_DAT_05e5df00);
    func_0x029f5a50(PTR_DAT_05e626e0);
    bRam000000000625bef0 = 1;
  }
  if (**(char **)(*(long *)puVar1 + 0xb8) != '\0') {
    SaveSystem_PlayerData_return(param_1);
    SaveSystem_Save_0x600048b();
    return;
  }
  if (*(int *)(*(long *)PTR_DAT_05e58f08 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  Debug_LogWarning_0x6000346(*(undefined8 *)PTR_DAT_05e626e0,0);
  return;
}

