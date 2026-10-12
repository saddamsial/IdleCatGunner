/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b4c8b8, Ghidra VA 02c4c8b8. */

long Monster_Knockback_Coroutine(undefined4 param_1,undefined8 param_2)

{
  undefined *puVar1;
  long lVar2;
  
  puVar1 = PTR_DAT_05e63490;
  if ((bRam000000000625c12f & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e63490);
    bRam000000000625c12f = 1;
  }
  lVar2 = func_0x029f5cec(*(undefined8 *)puVar1);
  Object__ctor_0x600100e(lVar2,0);
  *(undefined4 *)(lVar2 + 0x10) = 0;
  *(undefined8 *)(lVar2 + 0x20) = param_2;
  Managed_WriteBarrier((undefined8 *)(lVar2 + 0x20),param_2);
  *(undefined4 *)(lVar2 + 0x28) = param_1;
  return lVar2;
}

