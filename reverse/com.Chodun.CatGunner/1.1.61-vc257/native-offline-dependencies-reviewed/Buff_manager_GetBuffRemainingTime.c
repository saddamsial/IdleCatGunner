/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b3752c, Ghidra VA 02c3752c. */

undefined4 Buff_manager_GetBuffRemainingTime(long param_1,uint param_2)

{
  undefined *puVar1;
  long lVar2;
  undefined4 uVar3;
  
  if (cRam000000000625c0bd == '\0') {
    func_0x029f5a50(PTR_DAT_05e5d920);
    cRam000000000625c0bd = '\x01';
  }
  puVar1 = PTR_DAT_05e5d920;
  lVar2 = *(long *)PTR_DAT_05e5d920;
  if (*(int *)(lVar2 + 0xe4) == 0) {
    func_0x029f5bd0();
    lVar2 = *(long *)puVar1;
  }
  uVar3 = 0xbf800000;
  if (*(char *)(*(long *)(lVar2 + 0xb8) + 0xb) == '\0') {
    lVar2 = *(long *)(param_1 + 0x38);
    if (lVar2 == 0) {
                    /* WARNING: Subroutine does not return */
      Throw_NullReference_Wrapper(0xbf800000);
    }
    if (*(uint *)(lVar2 + 0x18) <= param_2) {
                    /* WARNING: Subroutine does not return */
      Throw_Index_Wrapper();
    }
    uVar3 = *(undefined4 *)(lVar2 + (long)(int)param_2 * 4 + 0x20);
  }
  return uVar3;
}

