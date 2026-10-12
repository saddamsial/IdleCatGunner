/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b37fe8, Ghidra VA 02c37fe8. */

ulong Buff_manager_ToAdType(uint param_1)

{
  int iVar1;
  undefined *puVar2;
  undefined *puVar3;
  undefined8 uVar4;
  undefined8 uVar5;
  ulong uVar6;
  float fVar7;
  int iStack_58;
  int iStack_54;
  
  if (param_1 < 3) {
    return (ulong)*(uint *)(&UNK_011b052c + (ulong)param_1 * 4);
  }
  func_0x029f5a64(PTR_DAT_05e59ae0);
  uVar4 = func_0x029f5cec();
  uVar5 = func_0x029f5a64(PTR_DAT_05e5e2c8);
  ArgumentOutOfRangeException__ctor_0x60003f0(uVar4,uVar5,0);
  uVar5 = func_0x029f5a64(PTR_DAT_05e631a8);
  fVar7 = (float)func_0x029f5bc0(uVar4,uVar5);
  if ((bRam000000000625c07b & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e631b0);
    func_0x029f5a50(PTR_DAT_05e59050);
    bRam000000000625c07b = 1;
  }
  puVar3 = PTR_DAT_05e631b0;
  if (0.0 <= fVar7) {
    iVar1 = -0x80000000;
    if (fVar7 / 60.0 != INFINITY) {
      iVar1 = (int)(fVar7 / 60.0);
    }
    fVar7 = (float)func_0x05afb260(fVar7);
    puVar2 = PTR_DAT_05e58a10;
    iStack_58 = -0x80000000;
    if (fVar7 != INFINITY) {
      iStack_58 = (int)fVar7;
    }
    iStack_54 = iVar1;
    uVar4 = func_0x029f5bd8(*(undefined8 *)(PTR_DAT_05e58a10 + 0x48),&iStack_54);
    uVar5 = func_0x029f5bd8(*(undefined8 *)(puVar2 + 0x48),&iStack_58);
    uVar6 = String_Format_0x600029d(*(undefined8 *)puVar3,uVar4,uVar5,0);
  }
  else {
    uVar6 = *(ulong *)PTR_DAT_05e59050;
  }
  return uVar6;
}

