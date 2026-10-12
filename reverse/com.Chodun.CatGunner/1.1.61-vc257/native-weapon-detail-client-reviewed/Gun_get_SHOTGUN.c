/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2ae08f8, Ghidra VA 02be08f8. */

void Gun_get_SHOTGUN(void)

{
  undefined *puVar1;
  undefined *puVar2;
  
  puVar1 = PTR_DAT_05e5e528;
  if ((bRam000000000625bc5f & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5e528);
    func_0x029f5a50(PTR_DAT_05e60da0);
    bRam000000000625bc5f = 1;
  }
  puVar2 = PTR_DAT_05e60da0;
  if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  LocalizationManager_GetTranslation_0x60011b3(*(undefined8 *)puVar2,1,0,1,0,0,0,1,0);
  return;
}

