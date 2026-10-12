/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b0b3cc, Ghidra VA 02c0b3cc. */

void OfflineResult_FormatTime(float param_1)

{
  int iVar1;
  int iVar2;
  undefined *puVar3;
  undefined *puVar4;
  undefined8 uVar5;
  undefined8 uVar6;
  undefined8 uVar7;
  float fVar8;
  int iStack_28;
  int iStack_24;
  
  if ((bRam000000000625be96 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5e540);
    func_0x029f5a50(PTR_DAT_05e5e6d0);
    func_0x029f5a50(PTR_DAT_05e62128);
    bRam000000000625be96 = 1;
  }
  iVar1 = -0x80000000;
  if (param_1 / 3600.0 != INFINITY) {
    iVar1 = (int)(param_1 / 3600.0);
  }
  fVar8 = (float)func_0x05afb260(param_1);
  iStack_28 = -0x80000000;
  if (fVar8 / 60.0 != INFINITY) {
    iStack_28 = (int)(fVar8 / 60.0);
  }
  fVar8 = (float)func_0x05afb260(param_1);
  puVar4 = PTR_DAT_05e5e540;
  puVar3 = PTR_DAT_05e58a10;
  iVar2 = -0x80000000;
  if (fVar8 != INFINITY) {
    iVar2 = (int)fVar8;
  }
  if (iVar1 < 1) {
    if (iStack_28 < 1) {
      iStack_24 = iVar2;
      uVar5 = func_0x029f5bd8(*(undefined8 *)(PTR_DAT_05e58a10 + 0x48),&iStack_24);
      String_Format_0x600029c(*(undefined8 *)PTR_DAT_05e5e6d0,uVar5,0);
      return;
    }
    iStack_24 = iStack_28;
    uVar5 = func_0x029f5bd8(*(undefined8 *)(PTR_DAT_05e58a10 + 0x48),&iStack_24);
    iStack_28 = iVar2;
    uVar6 = func_0x029f5bd8(*(undefined8 *)(puVar3 + 0x48),&iStack_28);
    uVar7 = *(undefined8 *)PTR_DAT_05e62128;
  }
  else {
    iStack_24 = iVar1;
    uVar5 = func_0x029f5bd8(*(undefined8 *)(PTR_DAT_05e58a10 + 0x48),&iStack_24);
    uVar6 = func_0x029f5bd8(*(undefined8 *)(puVar3 + 0x48),&iStack_28);
    uVar7 = *(undefined8 *)puVar4;
  }
  String_Format_0x600029d(uVar7,uVar5,uVar6,0);
  return;
}

