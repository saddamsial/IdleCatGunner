/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b4da8c, Ghidra VA 02c4da8c. */

void Monster_manager_Game_Start(undefined8 param_1)

{
  undefined *puVar1;
  long lVar2;
  
  puVar1 = PTR_DAT_05e5d338;
  if ((bRam000000000625c13a & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5d338);
    bRam000000000625c13a = 1;
  }
  lVar2 = *(long *)puVar1;
  if (*(int *)(lVar2 + 0xe4) == 0) {
    func_0x029f5bd0();
    lVar2 = *(long *)puVar1;
  }
  **(undefined1 **)(lVar2 + 0xb8) = 1;
  Monster_manager_StartNextLevel(param_1);
  return;
}

