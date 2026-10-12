/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b4f99c, Ghidra VA 02c4f99c. */

void Monster_manager_SweepBonus_Get(long param_1)

{
  undefined4 uVar1;
  undefined *puVar2;
  long lVar3;
  
  puVar2 = PTR_DAT_05e5d338;
  if ((bRam000000000625c148 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5d338);
    bRam000000000625c148 = 1;
  }
  lVar3 = *(long *)puVar2;
  uVar1 = *(undefined4 *)(param_1 + 0x13c);
  *(undefined1 *)(param_1 + 0xba) = 1;
  if (*(int *)(lVar3 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  Gamemanager_Get_PetCoin_0x600007b(uVar1,0);
  Monster_manager_Sweep_Close_0x6000859(param_1);
  return;
}

