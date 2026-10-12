/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b4c4d0, Ghidra VA 02c4c4d0. */

void Monster_Awake_0x6000830(long param_1)

{
  undefined *puVar1;
  undefined8 uVar2;
  
  puVar1 = PTR_DAT_05e5b6f8;
  if ((bRam000000000625c12d & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5b6f8);
    bRam000000000625c12d = 1;
  }
  uVar2 = func_0x029f5cec(*(undefined8 *)puVar1);
  MaterialPropertyBlock__ctor_0x60004fa(uVar2,0);
  *(undefined8 *)(param_1 + 0x40) = uVar2;
  Managed_WriteBarrier((undefined8 *)(param_1 + 0x40),uVar2);
  return;
}

