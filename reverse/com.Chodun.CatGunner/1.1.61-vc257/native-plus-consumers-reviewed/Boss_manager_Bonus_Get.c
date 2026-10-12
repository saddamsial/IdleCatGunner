/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b46b9c, Ghidra VA 02c46b9c. */

void Boss_manager_Bonus_Get(long param_1)

{
  int iVar1;
  undefined *puVar2;
  
  if ((bRam000000000625c0e6 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5d338);
    bRam000000000625c0e6 = 1;
  }
  puVar2 = PTR_DAT_05e5d338;
  if (*(char *)(param_1 + 0x108) != '\0') {
    Boss_manager_SweepBonus_Get_0x60007ad(param_1);
    return;
  }
  iVar1 = *(int *)(param_1 + 0xd0);
  *(undefined1 *)(param_1 + 0x7e) = 1;
  if (*(int *)(*(long *)puVar2 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  Gamemanager_Get_Dia_0x6000078(iVar1 << 1,0);
  Boss_manager_Game_Exit_0x60007a1(param_1);
  return;
}

