/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b6cea4, Ghidra VA 02c6cea4. */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void Safe_Slot__ctor(long param_1)

{
  undefined8 uVar1;
  undefined8 uVar2;
  undefined1 auVar3 [16];
  
  uVar2 = _UNK_0116f3c8;
  uVar1 = _UNK_0116f3c0;
  auVar3 = NEON_fmov(0x3f800000,4);
  *(undefined4 *)(param_1 + 0x20) = 0xffffffff;
  *(undefined8 *)(param_1 + 0x70) = uVar2;
  *(undefined8 *)(param_1 + 0x68) = uVar1;
  *(long *)(param_1 + 0x60) = auVar3._8_8_;
  *(long *)(param_1 + 0x58) = auVar3._0_8_;
  *(undefined4 *)(param_1 + 0x7c) = 0xffffffff;
  MonoBehaviour__ctor_0x6000d5a(param_1,0);
  return;
}

