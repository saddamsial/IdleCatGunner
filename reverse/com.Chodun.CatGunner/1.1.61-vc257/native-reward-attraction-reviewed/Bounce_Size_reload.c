/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2a9ae54, Ghidra VA 02b9ae54. */

void Bounce_Size_reload(long param_1)

{
  float fVar1;
  undefined8 uVar2;
  float fVar3;
  
  if (*(char *)(param_1 + 0x50) != '\0') {
    return;
  }
  fVar3 = *(float *)(param_1 + 0x24);
  if (cRam000000000625b279 == '\0') {
    func_0x029f5a50(PTR_DAT_05e58bf8);
    cRam000000000625b279 = '\x01';
  }
  uVar2 = *(undefined8 *)(*(long *)(*(long *)PTR_DAT_05e58bf8 + 0xb8) + 0xc);
  fVar1 = *(float *)(*(long *)(*(long *)PTR_DAT_05e58bf8 + 0xb8) + 0x14);
  *(float *)(param_1 + 0x30) = *(float *)(param_1 + 0x2c) * 0.5;
  *(undefined1 *)(param_1 + 0x50) = 1;
  *(ulong *)(param_1 + 0x44) = CONCAT44((float)((ulong)uVar2 >> 0x20) * fVar3,(float)uVar2 * fVar3);
  *(float *)(param_1 + 0x4c) = fVar3 * fVar1;
  return;
}

