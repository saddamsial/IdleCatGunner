/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b04eb0, Ghidra VA 02c04eb0. */

void Mission_UI_GetTimeUntilTomorrow(void)

{
  undefined *puVar1;
  undefined *puVar2;
  undefined8 uVar3;
  undefined8 uVar4;
  undefined8 uVar5;
  undefined4 uStack_4c;
  undefined4 uStack_48;
  undefined4 uStack_44;
  undefined8 uStack_40;
  undefined8 uStack_38;
  undefined8 uStack_28;
  
  puVar1 = PTR_DAT_05e5d3c0;
  if ((bRam000000000625be68 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e597d0);
    func_0x029f5a50(PTR_DAT_05e5a180);
    func_0x029f5a50(PTR_DAT_05e5d3c0);
    func_0x029f5a50(PTR_DAT_05e61f48);
    bRam000000000625be68 = 1;
  }
  puVar2 = PTR_DAT_05e597d0;
  uStack_28 = 0;
  uStack_40 = 0;
  uStack_38 = 0;
  if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  puVar1 = PTR_DAT_05e5a180;
  uStack_28 = Time_manager_get_Now_0x6000579(0);
  if (*(int *)(*(long *)puVar2 + 0xe4) == 0) {
    func_0x029f5bd0(*(long *)puVar2);
  }
  puVar2 = PTR_DAT_05e61f48;
  uStack_40 = DateTime_get_Date_0x6000610(&uStack_28,0);
  uVar3 = DateTime_AddDays_0x60005fb(0x3ff0000000000000,&uStack_40,0);
  uStack_38 = DateTime_op_Subtraction_0x600063a(uVar3,uStack_28,0);
  if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
    func_0x029f5bd0(*(long *)puVar1);
  }
  uStack_44 = TimeSpan_get_Hours_0x6000a6f(&uStack_38,0);
  puVar1 = PTR_DAT_05e58a10;
  uVar3 = func_0x029f5bd8(*(undefined8 *)(PTR_DAT_05e58a10 + 0x48),&uStack_44);
  uStack_48 = TimeSpan_get_Minutes_0x6000a70(&uStack_38,0);
  uVar4 = func_0x029f5bd8(*(undefined8 *)(puVar1 + 0x48),&uStack_48);
  uStack_4c = TimeSpan_get_Seconds_0x6000a71(&uStack_38,0);
  uVar5 = func_0x029f5bd8(*(undefined8 *)(puVar1 + 0x48),&uStack_4c);
  String_Format_0x600029e(*(undefined8 *)puVar2,uVar3,uVar4,uVar5,0);
  return;
}

