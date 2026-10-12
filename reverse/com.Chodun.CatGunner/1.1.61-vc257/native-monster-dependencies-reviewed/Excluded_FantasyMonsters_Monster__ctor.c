/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2aee940, Ghidra VA 02bee940. */

void Monster__ctor(long param_1)

{
  undefined *puVar1;
  long lVar2;
  long *plVar3;
  undefined8 *puVar4;
  long lVar5;
  undefined8 uVar6;
  
  puVar1 = PTR_DAT_05e614b8;
  if ((bRam000000000625bd3e & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5b940);
    func_0x029f5a50(PTR_DAT_05e614c0);
    func_0x029f5a50(PTR_DAT_05e614b8);
    bRam000000000625bd3e = 1;
  }
  lVar2 = *(long *)puVar1;
  if (*(int *)(lVar2 + 0xe4) == 0) {
    func_0x029f5bd0();
    lVar2 = *(long *)puVar1;
  }
  puVar4 = *(undefined8 **)(lVar2 + 0xb8);
  lVar5 = puVar4[2];
  if (lVar5 == 0) {
    if (*(int *)(lVar2 + 0xe4) == 0) {
      func_0x029f5bd0();
      puVar4 = *(undefined8 **)(*(long *)puVar1 + 0xb8);
    }
    uVar6 = *puVar4;
    lVar5 = func_0x029f5cec(*(undefined8 *)PTR_DAT_05e5b940);
    func_0x03d323cc(lVar5,uVar6,*(undefined8 *)PTR_DAT_05e614c0,0);
    plVar3 = (long *)(*(long *)(*(long *)puVar1 + 0xb8) + 0x10);
    *plVar3 = lVar5;
    Managed_WriteBarrier(plVar3,lVar5);
  }
  if (param_1 != 0) {
    *(long *)(param_1 + 0x50) = lVar5;
    Managed_WriteBarrier((long *)(param_1 + 0x50),lVar5);
    MonoBehaviour__ctor_0x6000d5a(param_1,0);
    return;
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

