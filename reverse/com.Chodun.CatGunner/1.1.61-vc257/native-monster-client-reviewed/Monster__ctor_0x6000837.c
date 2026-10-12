/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b4ce44, Ghidra VA 02c4ce44. */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void Monster__ctor_0x6000837(long param_1)

{
  undefined8 uVar1;
  undefined8 uVar2;
  
  uVar1 = _UNK_0116d6a0;
  uVar2 = NEON_fmov(0x3f800000,4);
  *(undefined8 *)(param_1 + 0x50) = _UNK_0116d6a8;
  *(undefined8 *)(param_1 + 0x48) = uVar1;
  *(undefined8 *)(param_1 + 0x58) = uVar2;
  MonoBehaviour__ctor_0x6000d5a(param_1,0);
  return;
}

