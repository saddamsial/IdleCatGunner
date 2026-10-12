/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2aa629c, Ghidra VA 02ba629c. */

bool Mission_manager_is_Reward_SequenceLocked(long param_1,undefined8 param_2,int param_3)

{
  undefined *puVar1;
  long lVar2;
  long lVar3;
  bool bVar4;
  
  if ((bRam000000000625ba52 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5dd50);
    bRam000000000625ba52 = 1;
  }
  puVar1 = PTR_DAT_05e5dd50;
  if (param_3 < 1) {
    bVar4 = false;
  }
  else {
    lVar3 = 0;
    bVar4 = true;
    do {
      lVar2 = *(long *)(param_1 + 0x38);
      if (lVar2 == 0) {
LAB_02ba6384:
                    /* WARNING: Subroutine does not return */
        Throw_NullReference_Wrapper();
      }
      if (*(uint *)(lVar2 + 0x18) <= (uint)lVar3) {
LAB_02ba6388:
                    /* WARNING: Subroutine does not return */
        Throw_Index_Wrapper();
      }
      if (*(char *)(lVar2 + lVar3 + 0x20) == '\0') {
        return bVar4;
      }
      lVar2 = *(long *)puVar1;
      if (*(int *)(lVar2 + 0xe4) == 0) {
        func_0x029f5bd0();
        lVar2 = *(long *)puVar1;
      }
      if (**(char **)(lVar2 + 0xb8) != '\0') {
        lVar2 = *(long *)(param_1 + 0x40);
        if (lVar2 == 0) goto LAB_02ba6384;
        if (*(uint *)(lVar2 + 0x18) <= (uint)lVar3) goto LAB_02ba6388;
        if (*(char *)(lVar2 + lVar3 + 0x20) == '\0') {
          return bVar4;
        }
      }
      lVar3 = lVar3 + 1;
      bVar4 = (int)lVar3 < param_3;
    } while (param_3 != (int)lVar3);
  }
  return bVar4;
}

