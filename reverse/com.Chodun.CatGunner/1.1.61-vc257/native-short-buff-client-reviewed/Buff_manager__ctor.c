/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b38144, Ghidra VA 02c38144. */

void Buff_manager__ctor(long param_1)

{
  undefined *puVar1;
  undefined *puVar2;
  long lVar3;
  undefined8 uVar4;
  
  puVar1 = PTR_DAT_05e5d4c0;
  if ((bRam000000000625c07c & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5d4c0);
    func_0x029f5a50(PTR_DAT_05e5d5e8);
    bRam000000000625c07c = 1;
  }
  puVar2 = PTR_DAT_05e5d5e8;
  lVar3 = *(long *)puVar1;
  if (*(int *)(lVar3 + 0xe4) == 0) {
    func_0x029f5bd0();
    lVar3 = *(long *)puVar1;
  }
  uVar4 = func_0x029f5b40(*(undefined8 *)puVar2,*(undefined4 *)(*(long *)(lVar3 + 0xb8) + 8));
  *(undefined8 *)(param_1 + 0x38) = uVar4;
  Managed_WriteBarrier();
  MonoBehaviour__ctor_0x6000d5a(param_1,0);
  return;
}

