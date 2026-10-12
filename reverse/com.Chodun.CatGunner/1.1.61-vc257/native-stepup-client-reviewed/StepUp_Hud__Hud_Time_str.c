/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2ba41a8, Ghidra VA 02ca41a8. */

void StepUp_Hud__Hud_Time_str(undefined8 param_1)

{
  undefined *puVar1;
  undefined *puVar2;
  undefined *puVar3;
  undefined8 uVar4;
  undefined8 uVar5;
  undefined8 uVar6;
  undefined8 *puVar7;
  double dVar8;
  undefined4 uStack_30;
  int iStack_2c;
  undefined8 uStack_28;
  
  puVar2 = PTR_DAT_05e5a180;
  uStack_28 = param_1;
  if ((bRam000000000625c4ab & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5a180);
    func_0x029f5a50(PTR_DAT_05e64938);
    func_0x029f5a50(PTR_DAT_05e64940);
    func_0x029f5a50(PTR_DAT_05e64948);
    bRam000000000625c4ab = 1;
  }
  if (*(int *)(*(long *)puVar2 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  dVar8 = (double)TimeSpan_get_TotalDays_0x6000a72(&uStack_28,0);
  puVar3 = PTR_DAT_05e64938;
  puVar1 = PTR_DAT_05e58a10;
  iStack_2c = -0x80000000;
  if (dVar8 != INFINITY) {
    iStack_2c = (int)dVar8;
  }
  if (iStack_2c < 1) {
    if (*(int *)(*(long *)puVar2 + 0xe4) == 0) {
      func_0x029f5bd0();
    }
    dVar8 = (double)TimeSpan_get_TotalHours_0x6000a73(&uStack_28,0);
    if (1.0 <= dVar8) {
      if (*(int *)(*(long *)puVar2 + 0xe4) == 0) {
        func_0x029f5bd0();
      }
      iStack_2c = TimeSpan_get_Hours_0x6000a6f(&uStack_28,0);
      puVar2 = PTR_DAT_05e58a10;
      uVar4 = func_0x029f5bd8(*(undefined8 *)(PTR_DAT_05e58a10 + 0x48),&iStack_2c);
      uStack_30 = TimeSpan_get_Minutes_0x6000a70(&uStack_28,0);
      uVar5 = func_0x029f5bd8(*(undefined8 *)(puVar2 + 0x48),&uStack_30);
      puVar7 = (undefined8 *)PTR_DAT_05e64948;
    }
    else {
      if (*(int *)(*(long *)puVar2 + 0xe4) == 0) {
        func_0x029f5bd0();
      }
      iStack_2c = TimeSpan_get_Minutes_0x6000a70(&uStack_28,0);
      puVar2 = PTR_DAT_05e58a10;
      uVar4 = func_0x029f5bd8(*(undefined8 *)(PTR_DAT_05e58a10 + 0x48),&iStack_2c);
      uStack_30 = TimeSpan_get_Seconds_0x6000a71(&uStack_28,0);
      uVar5 = func_0x029f5bd8(*(undefined8 *)(puVar2 + 0x48),&uStack_30);
      puVar7 = (undefined8 *)PTR_DAT_05e64940;
    }
    uVar6 = *puVar7;
  }
  else {
    uVar4 = func_0x029f5bd8(*(undefined8 *)(PTR_DAT_05e58a10 + 0x48),&iStack_2c);
    if (*(int *)(*(long *)puVar2 + 0xe4) == 0) {
      func_0x029f5bd0(*(long *)puVar2);
    }
    uStack_30 = TimeSpan_get_Hours_0x6000a6f(&uStack_28,0);
    uVar5 = func_0x029f5bd8(*(undefined8 *)(puVar1 + 0x48),&uStack_30);
    uVar6 = *(undefined8 *)puVar3;
  }
  String_Format_0x600029d(uVar6,uVar4,uVar5,0);
  return;
}

