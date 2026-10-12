/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b60270, Ghidra VA 02c60270. */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void Fish_DeleteZone__ctor(long param_1)

{
  undefined8 uVar1;
  undefined8 uVar2;
  undefined1 auVar3 [16];
  
  uVar2 = _UNK_0116d948;
  uVar1 = _UNK_0116d940;
  auVar3 = NEON_fmov(0x3f800000,4);
  *(long *)(param_1 + 0x38) = auVar3._8_8_;
  *(long *)(param_1 + 0x30) = auVar3._0_8_;
  *(undefined8 *)(param_1 + 0x48) = uVar2;
  *(undefined8 *)(param_1 + 0x40) = uVar1;
  MonoBehaviour__ctor_0x6000d5a(param_1,0);
  return;
}

