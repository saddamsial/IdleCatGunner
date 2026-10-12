/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b06c64, Ghidra VA 02c06c64. */

void OfflineProgressManager__ctor(long param_1)

{
  *(undefined4 *)(param_1 + 0x20) = 0x46e10000;
  *(undefined8 *)(param_1 + 0x28) = 0x404e000000000000;
  MonoBehaviour__ctor_0x6000d5a(param_1,0);
  return;
}

