/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2ba74a8, Ghidra VA 02ca74a8. */

void WeeklyShop__ctor(long param_1)

{
  undefined *puVar1;
  
  puVar1 = PTR_DAT_05e5d958;
  if ((bRam000000000625c4e0 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5d958);
    bRam000000000625c4e0 = 1;
  }
  *(undefined8 *)(param_1 + 0x20) = *(undefined8 *)puVar1;
  Managed_WriteBarrier();
  MonoBehaviour__ctor_0x6000d5a(param_1,0);
  return;
}

