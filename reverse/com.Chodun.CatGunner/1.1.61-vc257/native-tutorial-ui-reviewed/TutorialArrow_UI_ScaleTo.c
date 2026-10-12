/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2bae878, Ghidra VA 02cae878. */

long TutorialArrow_UI_ScaleTo(undefined4 param_1,undefined8 param_2)

{
  undefined *puVar1;
  long lVar2;
  
  puVar1 = PTR_DAT_05e64ae8;
  if ((bRam000000000625c530 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e64ae8);
    bRam000000000625c530 = 1;
  }
  lVar2 = func_0x029f5cec(*(undefined8 *)puVar1);
  Object__ctor_0x600100e(lVar2,0);
  *(undefined4 *)(lVar2 + 0x10) = 0;
  *(undefined8 *)(lVar2 + 0x20) = param_2;
  Managed_WriteBarrier((undefined8 *)(lVar2 + 0x20),param_2);
  *(undefined4 *)(lVar2 + 0x28) = param_1;
  return lVar2;
}

