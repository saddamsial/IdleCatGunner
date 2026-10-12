/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b4fb6c, Ghidra VA 02c4fb6c. */

void Monster_manager_Bonus_Get(long param_1)

{
  undefined4 uVar1;
  undefined *puVar2;
  
  if ((bRam000000000625c14b & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5d338);
    bRam000000000625c14b = 1;
  }
  puVar2 = PTR_DAT_05e5d338;
  if (*(char *)(param_1 + 0x138) != '\0') {
    Monster_manager_SweepBonus_Get(param_1);
    return;
  }
  uVar1 = *(undefined4 *)(param_1 + 0x13c);
  *(undefined1 *)(param_1 + 0xba) = 1;
  if (*(int *)(*(long *)puVar2 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  Gamemanager_Get_PetCoin_0x600007b(uVar1,0);
  Monster_manager_Game_Exit_0x600084d(param_1);
  return;
}

