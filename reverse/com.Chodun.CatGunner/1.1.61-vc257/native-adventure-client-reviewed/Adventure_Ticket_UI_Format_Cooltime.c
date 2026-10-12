/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b2f8e4, Ghidra VA 02c2f8e4. */

void Adventure_Ticket_UI_Format_Cooltime(undefined8 param_1)

{
  undefined *puVar1;
  undefined *puVar2;
  int iVar3;
  int iVar4;
  long lVar5;
  ulong uVar6;
  undefined8 uVar7;
  undefined8 uVar8;
  undefined8 uVar9;
  double dVar10;
  int iStack_40;
  int iStack_3c;
  undefined8 uStack_38;
  
  puVar1 = PTR_DAT_05e5a180;
  uStack_38 = param_1;
  if ((bRam000000000625c021 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5a180);
    func_0x029f5a50(PTR_DAT_05e5e540);
    func_0x029f5a50(PTR_DAT_05e5e6d0);
    func_0x029f5a50(PTR_DAT_05e62128);
    bRam000000000625c021 = 1;
  }
  lVar5 = *(long *)puVar1;
  if (*(int *)(lVar5 + 0xe4) == 0) {
    func_0x029f5bd0();
    lVar5 = *(long *)puVar1;
  }
  uVar6 = TimeSpan_op_LessThan_0x6000a95(param_1,**(undefined8 **)(lVar5 + 0xb8),0);
  lVar5 = *(long *)puVar1;
  if ((uVar6 & 1) != 0) {
    if (*(int *)(lVar5 + 0xe4) == 0) {
      func_0x029f5bd0();
      lVar5 = *(long *)puVar1;
    }
    uStack_38 = **(undefined8 **)(lVar5 + 0xb8);
  }
  if (*(int *)(lVar5 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  dVar10 = (double)TimeSpan_get_TotalHours_0x6000a73(&uStack_38,0);
  iStack_3c = -0x80000000;
  if (dVar10 != INFINITY) {
    iStack_3c = (int)dVar10;
  }
  iVar3 = TimeSpan_get_Minutes_0x6000a70(&uStack_38,0);
  iVar4 = TimeSpan_get_Seconds_0x6000a71(&uStack_38,0);
  puVar2 = PTR_DAT_05e5e540;
  puVar1 = PTR_DAT_05e58a10;
  if (iStack_3c < 1) {
    if (iVar3 < 1) {
      iStack_3c = iVar4;
      uVar7 = func_0x029f5bd8(*(undefined8 *)(PTR_DAT_05e58a10 + 0x48),&iStack_3c);
      String_Format_0x600029c(*(undefined8 *)PTR_DAT_05e5e6d0,uVar7,0);
      return;
    }
    iStack_3c = iVar3;
    uVar7 = func_0x029f5bd8(*(undefined8 *)(PTR_DAT_05e58a10 + 0x48),&iStack_3c);
    iStack_40 = iVar4;
    uVar8 = func_0x029f5bd8(*(undefined8 *)(puVar1 + 0x48),&iStack_40);
    uVar9 = *(undefined8 *)PTR_DAT_05e62128;
  }
  else {
    uVar7 = func_0x029f5bd8(*(undefined8 *)(PTR_DAT_05e58a10 + 0x48),&iStack_3c);
    iStack_40 = iVar3;
    uVar8 = func_0x029f5bd8(*(undefined8 *)(puVar1 + 0x48),&iStack_40);
    uVar9 = *(undefined8 *)puVar2;
  }
  String_Format_0x600029d(uVar9,uVar7,uVar8,0);
  return;
}

