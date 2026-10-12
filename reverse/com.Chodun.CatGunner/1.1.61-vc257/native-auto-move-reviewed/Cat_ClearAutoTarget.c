/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b3af70, Ghidra VA 02c3af70. */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void Cat_ClearAutoTarget(long param_1)

{
  float fVar1;
  undefined4 uVar2;
  float fVar3;
  
  *(undefined8 *)(param_1 + 0x178) = 0;
  Managed_WriteBarrier(param_1 + 0x178,0);
  *(undefined4 *)(param_1 + 0x174) = 0;
  fVar1 = (float)*(undefined8 *)(param_1 + 0x18c);
  fVar3 = (float)((ulong)*(undefined8 *)(param_1 + 0x18c) >> 0x20);
  if (_UNK_0116c268 <
      *(float *)(param_1 + 0x188) * *(float *)(param_1 + 0x188) + fVar1 * fVar1 + fVar3 * fVar3) {
    if (cRam000000000625b26f == '\0') {
      func_0x029f5a50(PTR_DAT_05e58bf8);
      cRam000000000625b26f = '\x01';
    }
    uVar2 = *(undefined4 *)(*(undefined8 **)(*(long *)PTR_DAT_05e58bf8 + 0xb8) + 1);
    *(undefined8 *)(param_1 + 0x188) = **(undefined8 **)(*(long *)PTR_DAT_05e58bf8 + 0xb8);
    *(undefined4 *)(param_1 + 400) = uVar2;
  }
  return;
}

