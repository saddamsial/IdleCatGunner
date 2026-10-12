/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b17190, Ghidra VA 02c17190. */

void SaveSystem_Load(void)

{
  undefined *puVar1;
  undefined *puVar2;
  undefined *puVar3;
  undefined8 uVar4;
  ulong uVar5;
  long lVar6;
  
  if ((bRam000000000625bef6 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e58a78);
    func_0x029f5a50(PTR_DAT_05e58f08);
    func_0x029f5a50(PTR_DAT_05e62730);
    func_0x029f5a50(PTR_DAT_05e626f0);
    func_0x029f5a50(PTR_DAT_05e626f8);
    func_0x029f5a50(PTR_DAT_05e626d8);
    bRam000000000625bef6 = 1;
  }
  puVar1 = PTR_DAT_05e58a78;
  uVar4 = SaveSystem_get_SavePath_0x6000485();
  uVar5 = Directory_Exists_0x60032cf(uVar4,0);
  if ((uVar5 & 1) == 0) {
    uVar4 = SaveSystem_get_SavePath_0x6000485();
    Directory_CreateDirectory_0x60032ce(uVar4,0);
  }
  puVar3 = PTR_DAT_05e626d8;
  puVar2 = PTR_DAT_05e58f08;
  if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  puVar1 = PTR_DAT_05e626f0;
  uVar4 = Application_get_persistentDataPath_0x600022f(0);
  uVar4 = String_Concat_0x6000298(uVar4,*(undefined8 *)puVar3,0);
  lVar6 = *(long *)puVar2;
  if (*(int *)(lVar6 + 0xe4) == 0) {
    func_0x029f5bd0(lVar6);
  }
  Debug_Log_0x600033c(uVar4,0);
  uVar4 = SaveSystem_get_SavePath_0x6000485();
  String_Concat_0x6000298(uVar4,*(undefined8 *)puVar1,0);
  lVar6 = SaveSystem_TryLoadFrom_0x6000490();
  if (lVar6 != 0) {
    return;
  }
  if (*(int *)(*(long *)puVar2 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  Debug_LogWarning_0x6000346(*(undefined8 *)PTR_DAT_05e62730,0);
  uVar4 = SaveSystem_get_SavePath_0x6000485();
  String_Concat_0x6000298(uVar4,*(undefined8 *)PTR_DAT_05e626f8,0);
  SaveSystem_TryLoadFrom_0x6000490();
  return;
}

