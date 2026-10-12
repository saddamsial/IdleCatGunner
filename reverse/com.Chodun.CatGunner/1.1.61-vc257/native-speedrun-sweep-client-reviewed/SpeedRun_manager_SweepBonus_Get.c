/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2ba9474, Ghidra VA 02ca9474. */

void SpeedRun_manager_SweepBonus_Get(long param_1)

{
  int iVar1;
  undefined *puVar2;
  undefined *puVar3;
  long lVar4;
  
  puVar3 = PTR_DAT_05e5dd68;
  if ((bRam000000000625c4ff & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5d338);
    func_0x029f5a50(PTR_DAT_05e5dd68);
    bRam000000000625c4ff = 1;
  }
  puVar2 = PTR_DAT_05e5d338;
  lVar4 = *(long *)puVar3;
  iVar1 = *(int *)(lVar4 + 0xe4);
  *(undefined1 *)(param_1 + 0x56) = 1;
  if (iVar1 == 0) {
    func_0x029f5bd0();
    lVar4 = *(long *)puVar3;
  }
  iVar1 = **(int **)(lVar4 + 0xb8);
  if (*(int *)(*(long *)puVar2 + 0xe4) == 0) {
    func_0x029f5bd0(*(long *)puVar2);
  }
  Gamemanager_Get_Dia_0x6000078(iVar1 * 3,0);
  SpeedRun_manager_Sweep_Close(param_1);
  return;
}

