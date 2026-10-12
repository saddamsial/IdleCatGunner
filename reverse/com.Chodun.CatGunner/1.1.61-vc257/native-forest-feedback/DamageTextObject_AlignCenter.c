/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2a85ad4, Ghidra VA 02b85ad4. */

void DamageTextObject_AlignCenter(long param_1)

{
  long lVar1;
  int iVar2;
  
  lVar1 = *(long *)(param_1 + 0x78);
  if (lVar1 != 0) {
    iVar2 = *(int *)(param_1 + 0x50);
    do {
      *(float *)(lVar1 + 0x30) = *(float *)(lVar1 + 0x30) - (float)iVar2 * 0.5;
      lVar1 = *(long *)(lVar1 + 0x10);
    } while (lVar1 != 0);
  }
  return;
}

