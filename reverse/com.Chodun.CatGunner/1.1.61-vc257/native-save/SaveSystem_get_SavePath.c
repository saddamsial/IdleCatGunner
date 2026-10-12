/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b16848, Ghidra VA 02c16848. */

void SaveSystem_get_SavePath(void)

{
  undefined *puVar1;
  undefined *puVar2;
  undefined8 uVar3;
  
  puVar1 = PTR_DAT_05e58a78;
  if ((bRam000000000625beed & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e58a78);
    func_0x029f5a50(PTR_DAT_05e626d8);
    bRam000000000625beed = 1;
  }
  puVar2 = PTR_DAT_05e626d8;
  if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  uVar3 = Application_get_persistentDataPath_0x600022f(0);
  String_Concat_0x6000298(uVar3,*(undefined8 *)puVar2,0);
  return;
}

