/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b0b6fc, Ghidra VA 02c0b6fc. */

void OfflineResult_StageLevelString(long param_1)

{
  undefined *puVar1;
  undefined *puVar2;
  undefined8 uVar3;
  undefined8 uVar4;
  undefined4 uStack_28;
  undefined4 uStack_24;
  
  puVar2 = PTR_DAT_05e62140;
  if ((bRam000000000625be98 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e62140);
    bRam000000000625be98 = 1;
  }
  puVar1 = PTR_DAT_05e58a10;
  uStack_24 = *(undefined4 *)(param_1 + 0x90);
  uVar3 = func_0x029f5bd8(*(undefined8 *)(PTR_DAT_05e58a10 + 0x48),&uStack_24);
  uStack_28 = *(undefined4 *)(param_1 + 0x94);
  uVar4 = func_0x029f5bd8(*(undefined8 *)(puVar1 + 0x48),&uStack_28);
  String_Format_0x600029d(*(undefined8 *)puVar2,uVar3,uVar4,0);
  return;
}

