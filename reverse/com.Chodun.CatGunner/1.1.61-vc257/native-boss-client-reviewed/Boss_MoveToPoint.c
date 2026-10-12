/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b450b8, Ghidra VA 02c450b8. */

long Boss_MoveToPoint(undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined8 param_4)

{
  undefined *puVar1;
  long lVar2;
  
  puVar1 = PTR_DAT_05e632f0;
  if ((bRam000000000625c0d3 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e632f0);
    bRam000000000625c0d3 = 1;
  }
  lVar2 = func_0x029f5cec(*(undefined8 *)puVar1);
  Object__ctor_0x600100e(lVar2,0);
  *(undefined4 *)(lVar2 + 0x10) = 0;
  *(undefined8 *)(lVar2 + 0x30) = param_4;
  Managed_WriteBarrier((undefined8 *)(lVar2 + 0x30),param_4);
  *(undefined4 *)(lVar2 + 0x20) = param_1;
  *(undefined4 *)(lVar2 + 0x24) = param_2;
  *(undefined4 *)(lVar2 + 0x28) = param_3;
  return lVar2;
}

