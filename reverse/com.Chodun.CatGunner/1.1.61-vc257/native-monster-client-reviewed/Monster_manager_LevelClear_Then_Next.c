/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b4e05c, Ghidra VA 02c4e05c. */

long Monster_manager_LevelClear_Then_Next(undefined8 param_1)

{
  undefined *puVar1;
  long lVar2;
  
  puVar1 = PTR_DAT_05e634f0;
  if ((bRam000000000625c13d & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e634f0);
    bRam000000000625c13d = 1;
  }
  lVar2 = func_0x029f5cec(*(undefined8 *)puVar1);
  Object__ctor_0x600100e(lVar2,0);
  *(undefined4 *)(lVar2 + 0x10) = 0;
  *(undefined8 *)(lVar2 + 0x20) = param_1;
  Managed_WriteBarrier((undefined8 *)(lVar2 + 0x20),param_1);
  return lVar2;
}

