/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b7e510, Ghidra VA 02c7e510. */

void Pet_manager__ctor(long param_1)

{
  undefined *puVar1;
  undefined *puVar2;
  undefined8 uVar3;
  
  puVar2 = PTR_DAT_05e5d790;
  puVar1 = PTR_DAT_05e59050;
  if ((bRam000000000625c33a & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5d790);
    func_0x029f5a50(PTR_DAT_05e59050);
    bRam000000000625c33a = 1;
  }
  uVar3 = func_0x029f5b40(*(undefined8 *)puVar2,0x10);
  *(undefined8 *)(param_1 + 0x38) = uVar3;
  Managed_WriteBarrier();
  uVar3 = *(undefined8 *)puVar1;
  *(undefined1 *)(param_1 + 0x60) = 1;
  *(undefined4 *)(param_1 + 100) = 6;
  *(undefined8 *)(param_1 + 0xb8) = uVar3;
  Managed_WriteBarrier();
  MonoBehaviour__ctor_0x6000d5a(param_1,0);
  return;
}

