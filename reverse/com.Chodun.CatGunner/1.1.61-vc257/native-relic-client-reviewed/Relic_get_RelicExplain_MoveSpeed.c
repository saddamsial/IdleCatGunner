/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2ae1318, Ghidra VA 02be1318. */

void Relic_get_RelicExplain_MoveSpeed(void)

{
  undefined *puVar1;
  undefined *puVar2;
  
  puVar1 = PTR_DAT_05e5e528;
  if ((bRam000000000625bc71 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5e528);
    func_0x029f5a50(PTR_DAT_05e60e30);
    bRam000000000625bc71 = 1;
  }
  puVar2 = PTR_DAT_05e60e30;
  if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  LocalizationManager_GetTranslation_0x60011b3(*(undefined8 *)puVar2,1,0,1,0,0,0,1,0);
  return;
}

