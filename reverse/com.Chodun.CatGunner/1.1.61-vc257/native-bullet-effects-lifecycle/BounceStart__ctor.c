/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2a9b7ac, Ghidra VA 02b9b7ac. */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void BounceStart__ctor(long param_1)

{
  *(undefined8 *)(param_1 + 0x24) = _UNK_0116fca0;
  *(undefined4 *)(param_1 + 0x2c) = 0x3f19999a;
  MonoBehaviour__ctor_0x6000d5a(param_1,0);
  return;
}

