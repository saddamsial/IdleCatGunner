/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b7aa70, Ghidra VA 02c7aa70. */

void Pet__ctor(long param_1)

{
  *(undefined8 *)(param_1 + 0x68) = **(undefined8 **)(*(long *)(PTR_DAT_05e58a10 + 0x90) + 0xb8);
  Managed_WriteBarrier();
  MonoBehaviour__ctor_0x6000d5a(param_1,0);
  return;
}

