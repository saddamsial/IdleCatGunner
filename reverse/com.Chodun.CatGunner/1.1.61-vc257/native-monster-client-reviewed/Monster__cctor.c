/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b4ce60, Ghidra VA 02c4ce60. */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void Monster__cctor(void)

{
  undefined *puVar1;
  undefined *puVar2;
  undefined *puVar3;
  undefined *puVar4;
  undefined4 uVar5;
  undefined8 uVar6;
  undefined8 *puVar7;
  
  puVar4 = PTR_DAT_05e634b8;
  puVar3 = PTR_DAT_05e634b0;
  puVar2 = PTR_DAT_05e634a8;
  puVar1 = PTR_DAT_05e63488;
  if ((bRam000000000625c132 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e63488);
    func_0x029f5a50(PTR_DAT_05e634b0);
    func_0x029f5a50(PTR_DAT_05e634a8);
    func_0x029f5a50(PTR_DAT_05e634b8);
    bRam000000000625c132 = 1;
  }
  puVar7 = *(undefined8 **)(*(long *)puVar1 + 0xb8);
  *puVar7 = _UNK_0116fb78;
  uVar6 = *(undefined8 *)puVar2;
  *(undefined4 *)(puVar7 + 1) = 0;
  uVar5 = Shader_PropertyToID_0x6000590(uVar6,0);
  uVar6 = *(undefined8 *)puVar3;
  *(undefined4 *)(*(long *)(*(long *)puVar1 + 0xb8) + 0xc) = uVar5;
  uVar5 = Shader_PropertyToID_0x6000590(uVar6,0);
  uVar6 = *(undefined8 *)puVar4;
  *(undefined4 *)(*(long *)(*(long *)puVar1 + 0xb8) + 0x10) = uVar5;
  uVar5 = Shader_PropertyToID_0x6000590(uVar6,0);
  *(undefined4 *)(*(long *)(*(long *)puVar1 + 0xb8) + 0x14) = uVar5;
  return;
}

