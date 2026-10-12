/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b44f54, Ghidra VA 02c44f54. */

void Boss_manager_Boss_Destroyed(undefined8 param_1)

{
  undefined *puVar1;
  long lVar2;
  
  puVar1 = PTR_DAT_05e5d338;
  if ((bRam000000000625c0ed & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5d338);
    bRam000000000625c0ed = 1;
  }
  lVar2 = *(long *)puVar1;
  if (*(int *)(lVar2 + 0xe4) == 0) {
    func_0x029f5bd0();
    lVar2 = *(long *)puVar1;
  }
  if (**(char **)(lVar2 + 0xb8) != '\0') {
    Boss_manager_Game_Win(param_1);
    return;
  }
  return;
}

