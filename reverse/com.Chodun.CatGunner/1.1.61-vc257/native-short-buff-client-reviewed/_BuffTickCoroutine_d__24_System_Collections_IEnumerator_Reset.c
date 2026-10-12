/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b38418, Ghidra VA 02c38418. */

undefined8 _BuffTickCoroutine_d__24_System_Collections_IEnumerator_Reset(void)

{
  undefined8 uVar1;
  undefined8 uVar2;
  long lVar3;
  
  func_0x029f5a64(PTR_DAT_05e5a3b8);
  uVar1 = func_0x029f5cec();
  NotSupportedException__ctor_0x60008f0(uVar1,0);
  uVar2 = func_0x029f5a64(PTR_DAT_05e631c0);
  lVar3 = func_0x029f5bc0(uVar1,uVar2);
  return *(undefined8 *)(lVar3 + 0x18);
}

