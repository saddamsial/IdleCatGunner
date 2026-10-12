/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2aa638c, Ghidra VA 02ba638c. */

uint Mission_manager_First_Unclaimed_Reward_Lv_return(long param_1)

{
  undefined *puVar1;
  long lVar2;
  uint uVar3;
  
  if ((bRam000000000625ba53 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5dd50);
    bRam000000000625ba53 = 1;
  }
  puVar1 = PTR_DAT_05e5dd50;
  lVar2 = *(long *)(param_1 + 0x38);
  if (lVar2 != 0) {
    uVar3 = 0;
    do {
      if ((int)*(uint *)(lVar2 + 0x18) <= (int)uVar3) {
        return 0xffffffff;
      }
      if (*(uint *)(lVar2 + 0x18) <= uVar3) {
LAB_02ba645c:
                    /* WARNING: Subroutine does not return */
        Throw_Index_Wrapper();
      }
      if (*(char *)(lVar2 + (int)uVar3 + 0x20) == '\0') {
        return uVar3;
      }
      lVar2 = *(long *)puVar1;
      if (*(int *)(lVar2 + 0xe4) == 0) {
        func_0x029f5bd0();
        lVar2 = *(long *)puVar1;
      }
      if (**(char **)(lVar2 + 0xb8) != '\0') {
        lVar2 = *(long *)(param_1 + 0x40);
        if (lVar2 == 0) break;
        if (*(uint *)(lVar2 + 0x18) <= uVar3) goto LAB_02ba645c;
        if (*(char *)(lVar2 + (int)uVar3 + 0x20) == '\0') {
          return uVar3;
        }
      }
      lVar2 = *(long *)(param_1 + 0x38);
      uVar3 = uVar3 + 1;
    } while (lVar2 != 0);
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

