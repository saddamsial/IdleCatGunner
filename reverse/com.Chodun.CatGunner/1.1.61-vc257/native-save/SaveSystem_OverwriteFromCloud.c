/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b175cc, Ghidra VA 02c175cc. */

undefined8 SaveSystem_OverwriteFromCloud(undefined8 param_1)

{
  ulong uVar1;
  undefined8 uVar2;
  undefined8 uVar3;
  undefined8 uVar4;
  
  if ((bRam000000000625befa & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e626e8);
    func_0x029f5a50(PTR_DAT_05e626f0);
    func_0x029f5a50(PTR_DAT_05e626f8);
    bRam000000000625befa = 1;
  }
  uVar1 = String_IsNullOrEmpty_0x6000277(param_1,0);
  if ((uVar1 & 1) == 0) {
    uVar2 = SaveSystem_get_SavePath();
    uVar1 = Directory_Exists_0x60032cf(uVar2,0);
    if ((uVar1 & 1) == 0) {
      uVar2 = SaveSystem_get_SavePath();
      Directory_CreateDirectory_0x60032ce(uVar2,0);
    }
    uVar2 = SaveSystem_get_SavePath();
    uVar2 = String_Concat_0x6000298(uVar2,*(undefined8 *)PTR_DAT_05e626f0,0);
    uVar3 = SaveSystem_get_SavePath();
    uVar3 = String_Concat_0x6000298(uVar3,*(undefined8 *)PTR_DAT_05e626e8,0);
    uVar4 = SaveSystem_get_SavePath();
    uVar4 = String_Concat_0x6000298(uVar4,*(undefined8 *)PTR_DAT_05e626f8,0);
    File_WriteAllText_0x60032fb(uVar3,param_1,0);
    uVar1 = File_Exists_0x60032f3(uVar2,0);
    if ((uVar1 & 1) != 0) {
      uVar1 = File_Exists_0x60032f3(uVar4,0);
      if ((uVar1 & 1) != 0) {
        File_Delete_0x60032f2(uVar4,0);
      }
      File_Move_0x6003300(uVar2,uVar4,0);
    }
    uVar1 = File_Exists_0x60032f3(uVar2,0);
    if ((uVar1 & 1) != 0) {
      File_Delete_0x60032f2(uVar2,0);
    }
    File_Move_0x6003300(uVar3,uVar2,0);
    uVar2 = 1;
  }
  else {
    uVar2 = 0;
  }
  return uVar2;
}

