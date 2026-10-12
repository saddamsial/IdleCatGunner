/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b6b748, Ghidra VA 02c6b748. */

long Safe_HUD_ScaleTo(undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
                     undefined8 param_5)

{
  undefined *puVar1;
  long lVar2;
  
  puVar1 = PTR_DAT_05e63ae0;
  if ((bRam000000000625c28d & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e63ae0);
    bRam000000000625c28d = 1;
  }
  lVar2 = func_0x029f5cec(*(undefined8 *)puVar1);
  Object__ctor_0x600100e(lVar2,0);
  *(undefined4 *)(lVar2 + 0x10) = 0;
  *(undefined8 *)(lVar2 + 0x20) = param_5;
  Managed_WriteBarrier((undefined8 *)(lVar2 + 0x20),param_5);
  *(undefined4 *)(lVar2 + 0x30) = param_2;
  *(undefined4 *)(lVar2 + 0x34) = param_3;
  *(undefined4 *)(lVar2 + 0x28) = param_4;
  *(undefined4 *)(lVar2 + 0x2c) = param_1;
  return lVar2;
}

