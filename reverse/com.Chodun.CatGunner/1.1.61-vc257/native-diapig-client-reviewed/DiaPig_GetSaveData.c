/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b8d6f0, Ghidra VA 02c8d6f0. */

long DiaPig_GetSaveData(long param_1)

{
  int iVar1;
  undefined *puVar2;
  undefined *puVar3;
  long lVar4;
  undefined8 uVar5;
  
  puVar2 = PTR_DAT_05e63f60;
  if ((bRam000000000625c3be & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e59760);
    func_0x029f5a50(PTR_DAT_05e597d0);
    func_0x029f5a50(PTR_DAT_05e63f60);
    func_0x029f5a50(PTR_DAT_05e62030);
    bRam000000000625c3be = 1;
  }
  lVar4 = func_0x029f5cec(*(undefined8 *)puVar2);
  Object__ctor_0x600100e(lVar4,0);
  puVar2 = PTR_DAT_05e597d0;
  if (lVar4 != 0) {
    iVar1 = *(int *)(*(long *)PTR_DAT_05e59760 + 0xe4);
    *(undefined4 *)(lVar4 + 0x10) = *(undefined4 *)(param_1 + 0x20);
    if (iVar1 == 0) {
      func_0x029f5bd0();
    }
    puVar3 = PTR_DAT_05e62030;
    uVar5 = CultureInfo_get_InvariantCulture_0x6002ba4(0);
    if (*(int *)(*(long *)puVar2 + 0xe4) == 0) {
      func_0x029f5bd0(*(long *)puVar2);
    }
    uVar5 = DateTime_ToString_0x6000631(param_1 + 0x38,*(undefined8 *)puVar3,uVar5,0);
    *(undefined8 *)(lVar4 + 0x18) = uVar5;
    Managed_WriteBarrier();
    return lVar4;
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

