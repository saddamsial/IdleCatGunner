/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b6c7f4, Ghidra VA 02c6c7f4. */

void Safe_manager__ctor(long param_1)

{
  undefined *puVar1;
  undefined8 uVar2;
  
  puVar1 = PTR_DAT_05e5d790;
  if ((bRam000000000625c29a & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5d790);
    bRam000000000625c29a = 1;
  }
  uVar2 = func_0x029f5b40(*(undefined8 *)puVar1,0x10);
  *(undefined8 *)(param_1 + 0x20) = uVar2;
  Managed_WriteBarrier();
  MonoBehaviour__ctor_0x6000d5a(param_1,0);
  return;
}

