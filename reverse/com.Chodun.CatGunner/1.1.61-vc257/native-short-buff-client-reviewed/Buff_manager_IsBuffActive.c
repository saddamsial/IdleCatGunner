/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b37494, Ghidra VA 02c37494. */

bool Buff_manager_IsBuffActive(long param_1,uint param_2)

{
  undefined *puVar1;
  bool bVar2;
  long lVar3;
  
  if (cRam000000000625c0bd == '\0') {
    func_0x029f5a50(PTR_DAT_05e5d920);
    cRam000000000625c0bd = '\x01';
  }
  puVar1 = PTR_DAT_05e5d920;
  lVar3 = *(long *)PTR_DAT_05e5d920;
  if (*(int *)(lVar3 + 0xe4) == 0) {
    func_0x029f5bd0();
    lVar3 = *(long *)puVar1;
  }
  if (*(char *)(*(long *)(lVar3 + 0xb8) + 0xb) == '\0') {
    lVar3 = *(long *)(param_1 + 0x38);
    if (lVar3 == 0) {
                    /* WARNING: Subroutine does not return */
      Throw_NullReference_Wrapper();
    }
    if (*(uint *)(lVar3 + 0x18) <= param_2) {
                    /* WARNING: Subroutine does not return */
      Throw_Index_Wrapper();
    }
    bVar2 = 0.0 < *(float *)(lVar3 + (long)(int)param_2 * 4 + 0x20);
  }
  else {
    bVar2 = true;
  }
  return bVar2;
}

