/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2ba93c0, Ghidra VA 02ca93c0. */

void SpeedRun_manager_Bonus_Get(long param_1)

{
  int iVar1;
  undefined *puVar2;
  long lVar3;
  
  if ((bRam000000000625c4f9 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5d338);
    func_0x029f5a50(PTR_DAT_05e5dd68);
    bRam000000000625c4f9 = 1;
  }
  puVar2 = PTR_DAT_05e5dd68;
  if (*(char *)(param_1 + 200) != '\0') {
    SpeedRun_manager_SweepBonus_Get_0x6000eb8(param_1);
    return;
  }
  *(undefined1 *)(param_1 + 0x56) = 1;
  lVar3 = *(long *)puVar2;
  if (*(int *)(lVar3 + 0xe4) == 0) {
    func_0x029f5bd0();
    lVar3 = *(long *)puVar2;
  }
  iVar1 = **(int **)(lVar3 + 0xb8);
  if (*(int *)(*(long *)PTR_DAT_05e5d338 + 0xe4) == 0) {
    func_0x029f5bd0(*(long *)PTR_DAT_05e5d338);
  }
  Gamemanager_Get_Dia_0x6000078(iVar1 * 3,0);
  SpeedRun_manager_Game_Exit_0x6000eac(param_1);
  return;
}

