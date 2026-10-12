/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b4a034, Ghidra VA 02c4a034. */

void Mine_manager_SweepBonus_Get(long param_1)

{
  int iVar1;
  undefined *puVar2;
  long lVar3;
  
  puVar2 = PTR_DAT_05e5d338;
  if ((bRam000000000625c116 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5d338);
    bRam000000000625c116 = 1;
  }
  lVar3 = *(long *)puVar2;
  iVar1 = *(int *)(param_1 + 0xd0);
  *(undefined1 *)(param_1 + 0x6a) = 1;
  if (*(int *)(lVar3 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  Gamemanager_Get_Dia_0x6000078(iVar1 * 3,0);
  Mine_manager_Sweep_Close(param_1);
  return;
}

