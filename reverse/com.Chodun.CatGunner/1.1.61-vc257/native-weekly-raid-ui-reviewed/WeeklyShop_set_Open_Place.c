/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2ba6ea8, Ghidra VA 02ca6ea8. */

void WeeklyShop_set_Open_Place(long param_1,undefined8 param_2)

{
  *(undefined8 *)(param_1 + 0x20) = param_2;
  Managed_WriteBarrier();
  return;
}

