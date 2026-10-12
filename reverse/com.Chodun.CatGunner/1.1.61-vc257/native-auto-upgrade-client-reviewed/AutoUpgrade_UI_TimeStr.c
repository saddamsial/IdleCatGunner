/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b1d85c, Ghidra VA 02c1d85c. */

void AutoUpgrade_UI_TimeStr(undefined8 param_1)

{
  uint uVar1;
  undefined *puVar2;
  undefined *puVar3;
  undefined8 uVar4;
  undefined8 uVar5;
  double dVar6;
  uint uStack_48;
  uint uStack_44;
  undefined8 uStack_38;
  
  puVar3 = PTR_DAT_05e5a180;
  uStack_38 = param_1;
  if ((bRam000000000625bf37 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e59000);
    func_0x029f5a50(PTR_DAT_05e5a180);
    func_0x029f5a50(PTR_DAT_05e62960);
    bRam000000000625bf37 = 1;
  }
  puVar2 = PTR_DAT_05e59000;
  if (*(int *)(*(long *)puVar3 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  puVar3 = PTR_DAT_05e62960;
  dVar6 = (double)TimeSpan_get_TotalSeconds_0x6000a76(&uStack_38,0);
  if (*(int *)(*(long *)puVar2 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  puVar2 = PTR_DAT_05e58a10;
  uVar1 = 0;
  if ((double)(long)dVar6 != INFINITY) {
    uVar1 = (int)dVar6 & ((int)dVar6 >> 0x1f ^ 0xffffffffU);
  }
  uStack_44 = uVar1 / 0x3c;
  uVar4 = func_0x029f5bd8(*(undefined8 *)(PTR_DAT_05e58a10 + 0x48),&uStack_44);
  uStack_48 = uVar1 % 0x3c;
  uVar5 = func_0x029f5bd8(*(undefined8 *)(puVar2 + 0x48),&uStack_48);
  String_Format_0x600029d(*(undefined8 *)puVar3,uVar4,uVar5,0);
  return;
}

