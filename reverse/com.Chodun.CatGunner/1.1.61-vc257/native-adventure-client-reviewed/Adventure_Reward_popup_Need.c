/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b3621c, Ghidra VA 02c3621c. */

int Adventure_Reward_popup_Need(undefined8 param_1,uint param_2)

{
  undefined *puVar1;
  int iVar2;
  long lVar3;
  
  puVar1 = PTR_DAT_05e5dd28;
  if ((bRam000000000625c06f & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5dd28);
    bRam000000000625c06f = 1;
  }
  lVar3 = *(long *)puVar1;
  if (*(int *)(lVar3 + 0xe4) == 0) {
    func_0x029f5bd0();
    lVar3 = *(long *)puVar1;
  }
  lVar3 = *(long *)(*(long *)(lVar3 + 0xb8) + 0x10);
  if (lVar3 == 0) {
                    /* WARNING: Subroutine does not return */
    Throw_NullReference_Wrapper();
  }
  if ((((int)param_2 < 0) || (lVar3 = *(long *)(lVar3 + 0x38), lVar3 == 0)) ||
     (*(int *)(lVar3 + 0x18) <= (int)param_2)) {
    iVar2 = 1;
  }
  else {
    iVar2 = *(int *)(lVar3 + (ulong)param_2 * 4 + 0x20);
    if (iVar2 < 2) {
      iVar2 = 1;
    }
  }
  return iVar2;
}

