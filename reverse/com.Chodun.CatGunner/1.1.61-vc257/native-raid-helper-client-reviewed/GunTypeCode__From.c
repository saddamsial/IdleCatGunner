/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b6745c, Ghidra VA 02c6745c. */

uint GunTypeCode__From(int param_1)

{
  undefined *puVar1;
  long lVar2;
  long lVar3;
  uint uVar4;
  
  puVar1 = PTR_DAT_05e632d0;
  if ((bRam000000000625c25a & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e632d0);
    bRam000000000625c25a = 1;
  }
  lVar2 = *(long *)puVar1;
  uVar4 = 0;
  while( true ) {
    if (*(int *)(lVar2 + 0xe4) == 0) {
      func_0x029f5bd0();
      lVar2 = *(long *)puVar1;
    }
    lVar3 = **(long **)(lVar2 + 0xb8);
    if (lVar3 == 0) break;
    if (*(int *)(lVar3 + 0x18) <= (int)uVar4) {
      return 0xffffffff;
    }
    if (*(int *)(lVar2 + 0xe4) == 0) {
      func_0x029f5bd0();
      lVar2 = *(long *)puVar1;
      lVar3 = **(long **)(lVar2 + 0xb8);
      if (lVar3 == 0) break;
    }
    if (*(uint *)(lVar3 + 0x18) <= uVar4) {
                    /* WARNING: Subroutine does not return */
      Throw_Index_Wrapper();
    }
    if (*(int *)(lVar3 + (long)(int)uVar4 * 4 + 0x20) == param_1) {
      return uVar4;
    }
    uVar4 = uVar4 + 1;
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

