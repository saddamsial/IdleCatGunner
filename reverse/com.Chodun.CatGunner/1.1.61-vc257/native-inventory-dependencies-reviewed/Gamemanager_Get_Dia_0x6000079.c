/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2a7ee50, Ghidra VA 02b7ee50. */

void Gamemanager_Get_Dia_0x6000079
               (undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  undefined *puVar1;
  
  puVar1 = PTR_DAT_05e5d338;
  if ((bRam000000000625b8ba & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5d338);
    bRam000000000625b8ba = 1;
  }
  if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  Gamemanager_Get_Dia_0x6000078(param_4);
  Gamemanager_Dia_Txt_Spawn_0x600008b(param_1,param_2,param_3,param_4);
  return;
}

