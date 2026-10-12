/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b3644c, Ghidra VA 02c3644c. */

long Adventure_Reward_popup_PlaySequence
               (undefined8 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  undefined *puVar1;
  long lVar2;
  
  puVar1 = PTR_DAT_05e63150;
  if ((bRam000000000625c06b & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e63150);
    bRam000000000625c06b = 1;
  }
  lVar2 = func_0x029f5cec(*(undefined8 *)puVar1);
  Object__ctor_0x600100e(lVar2,0);
  *(undefined4 *)(lVar2 + 0x10) = 0;
  *(undefined8 *)(lVar2 + 0x20) = param_1;
  Managed_WriteBarrier((undefined8 *)(lVar2 + 0x20),param_1);
  *(undefined4 *)(lVar2 + 0x28) = param_2;
  *(undefined4 *)(lVar2 + 0x2c) = param_3;
  *(undefined4 *)(lVar2 + 0x30) = param_4;
  return lVar2;
}

