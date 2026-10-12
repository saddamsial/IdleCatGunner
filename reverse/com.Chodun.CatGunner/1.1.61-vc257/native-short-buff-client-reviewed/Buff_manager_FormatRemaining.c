/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b3804c, Ghidra VA 02c3804c. */

undefined8 Buff_manager_FormatRemaining(float param_1)

{
  int iVar1;
  undefined *puVar2;
  undefined *puVar3;
  undefined8 uVar4;
  undefined8 uVar5;
  float fVar6;
  int iStack_48;
  int iStack_44;
  
  if ((bRam000000000625c07b & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e631b0);
    func_0x029f5a50(PTR_DAT_05e59050);
    bRam000000000625c07b = 1;
  }
  puVar3 = PTR_DAT_05e631b0;
  if (0.0 <= param_1) {
    iVar1 = -0x80000000;
    if (param_1 / 60.0 != INFINITY) {
      iVar1 = (int)(param_1 / 60.0);
    }
    fVar6 = (float)func_0x05afb260(param_1);
    puVar2 = PTR_DAT_05e58a10;
    iStack_48 = -0x80000000;
    if (fVar6 != INFINITY) {
      iStack_48 = (int)fVar6;
    }
    iStack_44 = iVar1;
    uVar4 = func_0x029f5bd8(*(undefined8 *)(PTR_DAT_05e58a10 + 0x48),&iStack_44);
    uVar5 = func_0x029f5bd8(*(undefined8 *)(puVar2 + 0x48),&iStack_48);
    uVar4 = String_Format_0x600029d(*(undefined8 *)puVar3,uVar4,uVar5,0);
  }
  else {
    uVar4 = *(undefined8 *)PTR_DAT_05e59050;
  }
  return uVar4;
}

