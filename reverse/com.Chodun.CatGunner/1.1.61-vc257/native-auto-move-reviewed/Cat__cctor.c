/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b430c4, Ghidra VA 02c430c4. */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void Cat__cctor(void)

{
  undefined *puVar1;
  undefined *puVar2;
  undefined *puVar3;
  undefined *puVar4;
  undefined *puVar5;
  undefined8 uVar6;
  undefined8 uVar7;
  undefined8 *puVar8;
  long lVar9;
  long lVar10;
  undefined4 uVar11;
  undefined4 uVar12;
  undefined4 uVar13;
  undefined4 in_s3;
  
  puVar5 = PTR_DAT_05e63280;
  puVar4 = PTR_DAT_05e63278;
  puVar1 = PTR_DAT_05e631d8;
  if ((bRam000000000625c0bc & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e631d8);
    func_0x029f5a50(PTR_DAT_05e63280);
    func_0x029f5a50(PTR_DAT_05e63278);
    func_0x029f5a50(PTR_DAT_05e63268);
    func_0x029f5a50(PTR_DAT_05e63270);
    bRam000000000625c0bc = 1;
  }
  puVar3 = PTR_DAT_05e63270;
  puVar2 = PTR_DAT_05e63268;
  uVar6 = func_0x029f5cec(*(undefined8 *)puVar4);
  func_0x045a69e0(uVar6,*(undefined8 *)puVar5);
  **(undefined8 **)(*(long *)puVar1 + 0xb8) = uVar6;
  Managed_WriteBarrier(*(undefined8 *)(*(long *)puVar1 + 0xb8),uVar6);
  uVar6 = _UNK_01170920;
  lVar9 = *(long *)puVar1;
  uVar13 = 0;
  lVar10 = *(long *)(lVar9 + 0xb8);
  *(undefined4 *)(lVar10 + 0x1c) = 0x3e99999a;
  *(undefined8 *)(lVar10 + 0x14) = uVar6;
  lVar10 = *(long *)(lVar9 + 0xb8);
  *(undefined8 *)(lVar10 + 0x20) = _UNK_01170308;
  uVar6 = _UNK_0116fa80;
  *(undefined4 *)(lVar10 + 0x28) = 0;
  uVar12 = _UNK_0116c0e0;
  lVar9 = *(long *)(lVar9 + 0xb8);
  *(undefined8 *)(lVar9 + 0x2c) = uVar6;
  *(undefined4 *)(lVar9 + 0x34) = 0;
  uVar11 = Quaternion_Internal_FromEulerRad_0x6000a4b(_UNK_0116c248,0);
  if (cRam000000000625b5d7 == '\0') {
    func_0x029f5a50(PTR_DAT_05e58bf8);
    cRam000000000625b5d7 = '\x01';
  }
  uVar11 = Quaternion_op_Multiply_0x6000a54(uVar11,0);
  lVar9 = *(long *)(*(long *)puVar1 + 0xb8);
  *(undefined4 *)(lVar9 + 0x38) = uVar11;
  *(undefined4 *)(lVar9 + 0x3c) = uVar12;
  *(undefined4 *)(lVar9 + 0x40) = uVar13;
  uVar13 = 0;
  uVar12 = _UNK_0116bf18;
  uVar11 = Quaternion_Internal_FromEulerRad_0x6000a4b(0,0);
  lVar9 = *(long *)puVar1;
  uVar7 = *(undefined8 *)puVar3;
  lVar10 = *(long *)(lVar9 + 0xb8);
  *(undefined4 *)(lVar10 + 0x44) = uVar11;
  *(undefined4 *)(lVar10 + 0x48) = uVar12;
  uVar6 = _UNK_0116fb78;
  *(undefined4 *)(lVar10 + 0x4c) = uVar13;
  *(undefined4 *)(lVar10 + 0x50) = in_s3;
  lVar10 = *(long *)(lVar9 + 0xb8);
  *(undefined8 *)(lVar10 + 0x54) = uVar6;
  *(undefined4 *)(lVar10 + 0x5c) = 0;
  *(undefined4 *)(*(long *)(lVar9 + 0xb8) + 0x60) = 0x3f99999a;
  uVar6 = func_0x029f5cec(uVar7);
  func_0x037167c8(uVar6,*(undefined8 *)puVar2);
  puVar8 = (undefined8 *)(*(long *)(*(long *)puVar1 + 0xb8) + 0x70);
  *puVar8 = uVar6;
  Managed_WriteBarrier(puVar8,uVar6);
  return;
}

