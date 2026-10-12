/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b2894c, Ghidra VA 02c2894c. */

void SlicedFilledImage__ctor(long param_1)

{
  *(undefined4 *)(param_1 + 0xe4) = 0x3f800000;
  *(undefined1 *)(param_1 + 0xe8) = 1;
  *(undefined4 *)(param_1 + 0xec) = 0x3f800000;
  MaskableGraphic__ctor_0x6000359(param_1,0);
  *(undefined1 *)(param_1 + 0xa0) = 0;
  return;
}

