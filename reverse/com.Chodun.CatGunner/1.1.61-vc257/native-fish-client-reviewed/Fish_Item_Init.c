/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b61138, Ghidra VA 02c61138. */

void Fish_Item_Init(long param_1,undefined8 param_2)

{
  Fish_Item_EnsureInit();
  *(undefined8 *)(param_1 + 0x70) = param_2;
  Managed_WriteBarrier((undefined8 *)(param_1 + 0x70),param_2);
  return;
}

