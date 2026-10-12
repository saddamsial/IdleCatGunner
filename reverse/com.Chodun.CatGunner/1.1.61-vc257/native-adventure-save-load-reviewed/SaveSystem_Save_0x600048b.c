/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b16a38, Ghidra VA 02c16a38. */

void SaveSystem_Save_0x600048b(undefined8 param_1)

{
  undefined *puVar1;
  undefined *puVar2;
  undefined *puVar3;
  undefined *puVar4;
  undefined8 uVar5;
  ulong uVar6;
  undefined8 uVar7;
  undefined8 uVar8;
  
  puVar1 = PTR_DAT_05e5df00;
  if ((bRam000000000625bef2 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5df00);
    func_0x029f5a50(PTR_DAT_05e626e8);
    func_0x029f5a50(PTR_DAT_05e626f0);
    func_0x029f5a50(PTR_DAT_05e626f8);
    bRam000000000625bef2 = 1;
  }
  puVar4 = PTR_DAT_05e626f8;
  puVar3 = PTR_DAT_05e626f0;
  puVar2 = PTR_DAT_05e626e8;
  if (**(char **)(*(long *)puVar1 + 0xb8) != '\0') {
    uVar5 = SaveSystem_get_SavePath_0x6000485();
    uVar6 = Directory_Exists_0x60032cf(uVar5,0);
    if ((uVar6 & 1) == 0) {
      uVar5 = SaveSystem_get_SavePath_0x6000485();
      Directory_CreateDirectory_0x60032ce(uVar5,0);
    }
    uVar5 = SaveSystem_get_SavePath_0x6000485();
    uVar5 = String_Concat_0x6000298(uVar5,*(undefined8 *)puVar3,0);
    uVar7 = SaveSystem_get_SavePath_0x6000485();
    uVar7 = String_Concat_0x6000298(uVar7,*(undefined8 *)puVar2,0);
    uVar8 = SaveSystem_get_SavePath_0x6000485();
    uVar8 = String_Concat_0x6000298(uVar8,*(undefined8 *)puVar4,0);
    File_WriteAllText_0x60032fb(uVar7,param_1,0);
    uVar6 = File_Exists_0x60032f3(uVar5,0);
    if ((uVar6 & 1) != 0) {
      uVar6 = File_Exists_0x60032f3(uVar8,0);
      if ((uVar6 & 1) != 0) {
        File_Delete_0x60032f2(uVar8,0);
      }
      File_Move_0x6003300(uVar5,uVar8,0);
    }
    File_Move_0x6003300(uVar7,uVar5,0);
  }
  return;
}

