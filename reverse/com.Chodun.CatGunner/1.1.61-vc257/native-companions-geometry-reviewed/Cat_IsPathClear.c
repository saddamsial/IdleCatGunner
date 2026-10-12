/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b40d74, Ghidra VA 02c40d74. */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

uint Cat_IsPathClear(float param_1,undefined1 param_2 [16],float param_3,float param_4,
                    undefined1 param_5 [16],float param_6,long param_7)

{
  undefined *puVar1;
  undefined4 uVar2;
  uint uVar3;
  long lVar4;
  undefined4 uVar5;
  undefined4 uVar6;
  undefined4 uVar7;
  float fVar8;
  undefined4 uVar9;
  float fVar10;
  
  fVar10 = param_3;
  if ((bRam000000000625c0a6 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e631d8);
    func_0x029f5a50(PTR_DAT_05e5b0a0);
    bRam000000000625c0a6 = 1;
  }
  if (cRam000000000625bae8 == '\0') {
    func_0x029f5a50(PTR_DAT_05e59000);
    cRam000000000625bae8 = '\x01';
  }
  if (*(int *)(*(long *)PTR_DAT_05e59000 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  fVar8 = (param_6 - param_3) * (param_6 - param_3);
  if (_UNK_0116c088 <= SQRT((param_4 - param_1) * (param_4 - param_1) + fVar8)) {
    if (*(long *)(param_7 + 0xe8) == 0) {
                    /* WARNING: Subroutine does not return */
      Throw_NullReference_Wrapper();
    }
    uVar5 = Transform_get_position_0x6000f4d(*(long *)(param_7 + 0xe8),0);
    puVar1 = PTR_DAT_05e631d8;
    lVar4 = *(long *)PTR_DAT_05e631d8;
    if (*(int *)(lVar4 + 0xe4) == 0) {
      func_0x029f5bd0();
      lVar4 = *(long *)puVar1;
    }
    lVar4 = *(long *)(lVar4 + 0xb8);
    uVar9 = *(undefined4 *)(lVar4 + 0x14);
    uVar6 = *(undefined4 *)(lVar4 + 0x18);
    uVar7 = *(undefined4 *)(lVar4 + 0x1c);
    if (cRam000000000625b274 == '\0') {
      func_0x029f5a50(PTR_DAT_05e59610);
      cRam000000000625b274 = '\x01';
    }
    uVar2 = LayerMask_op_Implicit_0x6000d2a(*(undefined4 *)(param_7 + 0x1b4),0);
    if (*(int *)(*(long *)PTR_DAT_05e5b0a0 + 0xe4) == 0) {
      func_0x029f5bd0(*(long *)PTR_DAT_05e5b0a0);
    }
    uVar3 = Physics_BoxCast_0x6000039(uVar5,fVar8,fVar10,uVar9,uVar6,uVar7,uVar2,0);
    uVar3 = uVar3 ^ 1;
  }
  else {
    uVar3 = 1;
  }
  return uVar3 & 1;
}

