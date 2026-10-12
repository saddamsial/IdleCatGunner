/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b16ef8, Ghidra VA 02c16ef8. */

undefined8 SaveSystem_GetRawSavedData(void)

{
  undefined *puVar1;
  undefined *puVar2;
  undefined8 uVar3;
  undefined8 uVar4;
  ulong uVar5;
  
  puVar2 = PTR_DAT_05e626f8;
  puVar1 = PTR_DAT_05e626f0;
  if ((bRam000000000625bef4 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e626f0);
    func_0x029f5a50(PTR_DAT_05e62710);
    func_0x029f5a50(PTR_DAT_05e626f8);
    func_0x029f5a50(PTR_DAT_05e62718);
    bRam000000000625bef4 = 1;
  }
  uVar3 = SaveSystem_get_SavePath();
  uVar3 = String_Concat_0x6000298(uVar3,*(undefined8 *)puVar1,0);
  uVar4 = SaveSystem_get_SavePath();
  uVar4 = String_Concat_0x6000298(uVar4,*(undefined8 *)puVar2,0);
  uVar5 = File_Exists_0x60032f3(uVar3,0);
  if ((uVar5 & 1) != 0) {
    uVar3 = File_ReadAllText_0x60032f8(uVar3,0);
    uVar5 = String_IsNullOrEmpty_0x6000277(uVar3,0);
    if ((uVar5 & 1) == 0) {
      return uVar3;
    }
  }
  uVar5 = File_Exists_0x60032f3(uVar4,0);
  if ((uVar5 & 1) != 0) {
    uVar3 = File_ReadAllText_0x60032f8(uVar4,0);
    uVar5 = String_IsNullOrEmpty_0x6000277(uVar3,0);
    if ((uVar5 & 1) == 0) {
      uVar3 = String_Concat_0x6000298(*(undefined8 *)PTR_DAT_05e62710,uVar3,0);
      return uVar3;
    }
  }
  return *(undefined8 *)PTR_DAT_05e62718;
}

