/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b375b8, Ghidra VA 02c375b8. */

bool Buff_manager_get_IsSuperBuff(long param_1)

{
  long lVar1;
  undefined *puVar2;
  long lVar3;
  bool bVar4;
  long lVar5;
  ulong uVar6;
  
  if ((bRam000000000625c075 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5d4c0);
    bRam000000000625c075 = 1;
  }
  if (cRam000000000625c0bd == '\0') {
    func_0x029f5a50(PTR_DAT_05e5d920);
    cRam000000000625c0bd = '\x01';
  }
  puVar2 = PTR_DAT_05e5d920;
  lVar3 = *(long *)PTR_DAT_05e5d920;
  if (*(int *)(lVar3 + 0xe4) == 0) {
    func_0x029f5bd0();
    lVar3 = *(long *)puVar2;
  }
  puVar2 = PTR_DAT_05e5d4c0;
  if (*(char *)(*(long *)(lVar3 + 0xb8) + 0xb) == '\0') {
    uVar6 = 0;
    lVar3 = *(long *)PTR_DAT_05e5d4c0;
    do {
      if (*(int *)(lVar3 + 0xe4) == 0) {
        func_0x029f5bd0();
        lVar3 = *(long *)puVar2;
      }
      lVar5 = (long)*(int *)(*(long *)(lVar3 + 0xb8) + 8);
      bVar4 = lVar5 <= (long)uVar6;
      if (lVar5 <= (long)uVar6) {
        return bVar4;
      }
      lVar5 = *(long *)(param_1 + 0x38);
      if (lVar5 == 0) {
                    /* WARNING: Subroutine does not return */
        Throw_NullReference_Wrapper();
      }
      if (*(uint *)(lVar5 + 0x18) <= uVar6) {
                    /* WARNING: Subroutine does not return */
        Throw_Index_Wrapper();
      }
      lVar1 = uVar6 * 4;
      uVar6 = uVar6 + 1;
    } while (0.0 < *(float *)(lVar5 + lVar1 + 0x20));
  }
  else {
    bVar4 = true;
  }
  return bVar4;
}

