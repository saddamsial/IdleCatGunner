/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b46c20, Ghidra VA 02c46c20. */

void Boss_manager_SweepBonus_Get(long param_1)

{
  int iVar1;
  undefined *puVar2;
  long lVar3;
  
  puVar2 = PTR_DAT_05e5d338;
  if ((bRam000000000625c0eb & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5d338);
    bRam000000000625c0eb = 1;
  }
  lVar3 = *(long *)puVar2;
  iVar1 = *(int *)(param_1 + 0xd0);
  *(undefined1 *)(param_1 + 0x7e) = 1;
  if (*(int *)(lVar3 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  Gamemanager_Get_Dia_0x6000078(iVar1 << 1,0);
  Boss_manager_Sweep_Close(param_1);
  return;
}

