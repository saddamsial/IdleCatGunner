/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b27404, Ghidra VA 02c27404. */

void Scrolling_Start(long param_1)

{
  undefined *puVar1;
  undefined8 uVar2;
  
  puVar1 = PTR_DAT_05e62d58;
  if ((bRam000000000625bfbb & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e62d58);
    bRam000000000625bfbb = 1;
  }
  uVar2 = func_0x02fe5f2c(param_1,*(undefined8 *)puVar1);
  *(undefined8 *)(param_1 + 0x28) = uVar2;
  Managed_WriteBarrier((undefined8 *)(param_1 + 0x28),uVar2);
  return;
}

