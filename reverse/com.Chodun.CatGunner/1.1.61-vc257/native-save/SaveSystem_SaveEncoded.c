/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b16c50, Ghidra VA 02c16c50. */

void SaveSystem_SaveEncoded(undefined8 param_1,undefined8 param_2)

{
  undefined *puVar1;
  undefined *puVar2;
  undefined *puVar3;
  undefined *puVar4;
  undefined8 uVar5;
  undefined8 uVar6;
  undefined8 uVar7;
  undefined8 uVar8;
  ulong uVar9;
  
  puVar1 = PTR_DAT_05e5df00;
  if ((bRam000000000625bef1 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e58f08);
    func_0x029f5a50(PTR_DAT_05e5df00);
    func_0x029f5a50(PTR_DAT_05e626e8);
    func_0x029f5a50(PTR_DAT_05e626f0);
    func_0x029f5a50(PTR_DAT_05e626f8);
    func_0x029f5a50(PTR_DAT_05e626d8);
    func_0x029f5a50(PTR_DAT_05e626e0);
    bRam000000000625bef1 = 1;
  }
  puVar4 = PTR_DAT_05e626f8;
  puVar3 = PTR_DAT_05e626f0;
  puVar2 = PTR_DAT_05e626e8;
  if (**(char **)(*(long *)puVar1 + 0xb8) != '\0') {
    uVar5 = String_Concat_0x6000298(param_2,*(undefined8 *)PTR_DAT_05e626d8,0);
    uVar6 = String_Concat_0x6000298(uVar5,*(undefined8 *)puVar3,0);
    uVar7 = String_Concat_0x6000298(uVar5,*(undefined8 *)puVar2,0);
    uVar8 = String_Concat_0x6000298(uVar5,*(undefined8 *)puVar4,0);
    uVar9 = Directory_Exists_0x60032cf(uVar5,0);
    if ((uVar9 & 1) == 0) {
      Directory_CreateDirectory_0x60032ce(uVar5,0);
    }
    File_WriteAllText_0x60032fb(uVar7,param_1,0);
    uVar9 = File_Exists_0x60032f3(uVar6,0);
    if ((uVar9 & 1) != 0) {
      uVar9 = File_Exists_0x60032f3(uVar8,0);
      if ((uVar9 & 1) != 0) {
        File_Delete_0x60032f2(uVar8,0);
      }
      File_Move_0x6003300(uVar6,uVar8,0);
    }
    File_Move_0x6003300(uVar7,uVar6,0);
    return;
  }
  if (*(int *)(*(long *)PTR_DAT_05e58f08 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  Debug_LogWarning_0x6000346(*(undefined8 *)PTR_DAT_05e626e0,0);
  return;
}

