/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2ba1b04, Ghidra VA 02ca1b04. */

void StarGem_Pig___ctor(long param_1)

{
  *(undefined4 *)(param_1 + 0x20) = 1;
  *(undefined4 *)(param_1 + 0x2c) = 0xffffffff;
  MonoBehaviour__ctor_0x6000d5a(param_1,0);
  return;
}

