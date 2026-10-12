/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x455bddc, Ghidra VA 0465bddc. */

void InfVal_InfVal_change(long param_1)

{
  int iVar1;
  undefined *puVar2;
  long lVar3;
  undefined8 uStack_30;
  undefined8 uStack_28;
  
  puVar2 = PTR_DAT_05e58fe0;
  if ((bRam0000000006260a2e & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e58fe0);
    bRam0000000006260a2e = 1;
  }
  uStack_28 = *(undefined8 *)(param_1 + 0x18);
  uStack_30 = *(undefined8 *)(param_1 + 0x10);
  if (*(int *)(*(long *)puVar2 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  lVar3 = BigInteger_ToString_0x6000032(&uStack_30,0);
  if (lVar3 != 0) {
    iVar1 = *(int *)(param_1 + 8) + *(int *)(lVar3 + 0x10);
    if (3 < iVar1) {
      iVar1 = (iVar1 - 1U) % 3 + 3;
    }
    InfVal_ToString_0x600009f(param_1,iVar1,0);
    return;
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

