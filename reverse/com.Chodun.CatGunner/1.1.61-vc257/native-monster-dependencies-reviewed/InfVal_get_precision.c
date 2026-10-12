/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x4554ee0, Ghidra VA 04654ee0. */

int InfVal_get_precision(long *param_1)

{
  long lVar1;
  int iVar2;
  undefined *puVar3;
  int iVar4;
  ulong uVar5;
  
  uVar5 = InfVal_get_isZero_0x6000099();
  puVar3 = PTR_DAT_05e5e048;
  if (((uVar5 & 1) == 0) || (0 < (int)param_1[1])) {
    if ((bRam0000000006260a1d & 1) == 0) {
      func_0x029f5a50(PTR_DAT_05e5e048);
      bRam0000000006260a1d = 1;
    }
    lVar1 = *(long *)puVar3;
    if (*param_1 != 0) {
      lVar1 = *param_1;
    }
    if (lVar1 == 0) {
                    /* WARNING: Subroutine does not return */
      Throw_NullReference_Wrapper();
    }
    iVar2 = *(int *)(lVar1 + 0x10);
    iVar4 = InfVal_get_sign_0x600009d(param_1);
    iVar2 = iVar2 + (iVar4 >> 0x1f);
  }
  else {
    iVar2 = 1 - (int)param_1[1];
  }
  return iVar2;
}

