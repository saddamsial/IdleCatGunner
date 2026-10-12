/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b91230, Ghidra VA 02c91230. */

undefined8 PlusPack_Remain_String(undefined4 param_1)

{
  undefined *puVar1;
  undefined *puVar2;
  undefined *puVar3;
  int iVar4;
  undefined8 uVar5;
  undefined8 uVar6;
  undefined8 uVar7;
  long lVar8;
  undefined4 uStack_44;
  undefined4 uStack_40;
  undefined4 uStack_3c;
  undefined8 uStack_38;
  
  puVar3 = PTR_DAT_05e5e0b8;
  if ((bRam000000000625c3f1 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5e0b8);
    func_0x029f5a50(PTR_DAT_05e5a180);
    func_0x029f5a50(PTR_DAT_05e64158);
    func_0x029f5a50(PTR_DAT_05e63f10);
    bRam000000000625c3f1 = 1;
  }
  puVar2 = PTR_DAT_05e5a180;
  uStack_38 = 0;
  if (*(int *)(*(long *)puVar3 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  puVar3 = PTR_DAT_05e63f10;
  uStack_38 = PlusPack_Remain_Duration_0x6000d36(param_1);
  lVar8 = *(long *)puVar2;
  if (*(int *)(lVar8 + 0xe4) == 0) {
    func_0x029f5bd0(lVar8);
  }
  uStack_3c = TimeSpan_get_Hours_0x6000a6f(&uStack_38,0);
  puVar1 = PTR_DAT_05e58a10;
  uVar5 = func_0x029f5bd8(*(undefined8 *)(PTR_DAT_05e58a10 + 0x48),&uStack_3c);
  uStack_40 = TimeSpan_get_Minutes_0x6000a70(&uStack_38,0);
  uVar6 = func_0x029f5bd8(*(undefined8 *)(puVar1 + 0x48),&uStack_40);
  uStack_44 = TimeSpan_get_Seconds_0x6000a71(&uStack_38,0);
  uVar7 = func_0x029f5bd8(*(undefined8 *)(puVar1 + 0x48),&uStack_44);
  uVar5 = String_Format_0x600029e(*(undefined8 *)puVar3,uVar5,uVar6,uVar7,0);
  iVar4 = TimeSpan_get_Days_0x6000a6e(&uStack_38,0);
  puVar3 = PTR_DAT_05e64158;
  if (0 < iVar4) {
    if (*(int *)(*(long *)puVar2 + 0xe4) == 0) {
      func_0x029f5bd0();
    }
    uStack_3c = TimeSpan_get_Days_0x6000a6e(&uStack_38,0);
    uVar6 = func_0x029f5bd8(*(undefined8 *)(puVar1 + 0x48),&uStack_3c);
    uVar5 = String_Format_0x600029d(*(undefined8 *)puVar3,uVar6,uVar5,0);
  }
  return uVar5;
}

