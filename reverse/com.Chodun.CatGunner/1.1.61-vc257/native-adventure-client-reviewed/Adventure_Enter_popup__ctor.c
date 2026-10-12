/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b34234, Ghidra VA 02c34234. */

void Adventure_Enter_popup__ctor(long param_1)

{
  undefined *puVar1;
  undefined *puVar2;
  undefined8 uVar3;
  
  puVar2 = PTR_DAT_05e62fd8;
  puVar1 = PTR_DAT_05e62fc8;
  if ((bRam000000000625c052 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e62fc8);
    func_0x029f5a50(PTR_DAT_05e62fd8);
    bRam000000000625c052 = 1;
  }
  uVar3 = func_0x029f5cec(*(undefined8 *)puVar2);
  func_0x045c0d0c(uVar3,*(undefined8 *)puVar1);
  *(undefined8 *)(param_1 + 200) = uVar3;
  Managed_WriteBarrier((undefined8 *)(param_1 + 200),uVar3);
  MonoBehaviour__ctor_0x6000d5a(param_1,0);
  return;
}

