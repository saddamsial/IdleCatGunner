/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b34dc0, Ghidra VA 02c34dc0. */

void Adventure_Map_info_item_FormatDuration(undefined8 param_1,undefined8 param_2)

{
  undefined *puVar1;
  undefined *puVar2;
  int iVar3;
  int iVar4;
  undefined8 uVar5;
  undefined8 uVar6;
  undefined8 uVar7;
  double dVar8;
  int iStack_44;
  int iStack_40;
  int iStack_3c;
  undefined8 uStack_38;
  
  puVar1 = PTR_DAT_05e5a180;
  uStack_38 = param_2;
  if ((bRam000000000625c059 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5a180);
    func_0x029f5a50(PTR_DAT_05e5e6d0);
    func_0x029f5a50(PTR_DAT_05e62128);
    func_0x029f5a50(PTR_DAT_05e63140);
    bRam000000000625c059 = 1;
  }
  if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  dVar8 = (double)TimeSpan_get_TotalHours_0x6000a73(&uStack_38,0);
  iStack_3c = -0x80000000;
  if (dVar8 != INFINITY) {
    iStack_3c = (int)dVar8;
  }
  iVar3 = TimeSpan_get_Minutes_0x6000a70(&uStack_38,0);
  iVar4 = TimeSpan_get_Seconds_0x6000a71(&uStack_38,0);
  puVar2 = PTR_DAT_05e63140;
  puVar1 = PTR_DAT_05e58a10;
  if (iStack_3c < 1) {
    if (iVar3 < 1) {
      iStack_3c = iVar4;
      uVar5 = func_0x029f5bd8(*(undefined8 *)(PTR_DAT_05e58a10 + 0x48),&iStack_3c);
      String_Format_0x600029c(*(undefined8 *)PTR_DAT_05e5e6d0,uVar5,0);
    }
    else {
      iStack_3c = iVar3;
      uVar5 = func_0x029f5bd8(*(undefined8 *)(PTR_DAT_05e58a10 + 0x48),&iStack_3c);
      iStack_40 = iVar4;
      uVar6 = func_0x029f5bd8(*(undefined8 *)(puVar1 + 0x48),&iStack_40);
      String_Format_0x600029d(*(undefined8 *)PTR_DAT_05e62128,uVar5,uVar6,0);
    }
  }
  else {
    uVar5 = func_0x029f5bd8(*(undefined8 *)(PTR_DAT_05e58a10 + 0x48),&iStack_3c);
    iStack_40 = iVar3;
    uVar6 = func_0x029f5bd8(*(undefined8 *)(puVar1 + 0x48),&iStack_40);
    iStack_44 = iVar4;
    uVar7 = func_0x029f5bd8(*(undefined8 *)(puVar1 + 0x48),&iStack_44);
    String_Format_0x600029e(*(undefined8 *)puVar2,uVar5,uVar6,uVar7,0);
  }
  return;
}

