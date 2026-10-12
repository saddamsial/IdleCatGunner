/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2aa6834, Ghidra VA 02ba6834. */

void Mission_manager_Check_All_Reward_Get(long param_1)

{
  uint uVar1;
  undefined *puVar2;
  long lVar3;
  uint uVar4;
  
  if ((bRam000000000625ba4f & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5dd50);
    bRam000000000625ba4f = 1;
  }
  puVar2 = PTR_DAT_05e5dd50;
  lVar3 = *(long *)(param_1 + 0x38);
  if (lVar3 != 0) {
    uVar1 = *(uint *)(lVar3 + 0x18);
    if (0 < (int)uVar1) {
      uVar4 = 0;
      do {
        if (uVar1 == uVar4) goto LAB_02ba6928;
        if (*(char *)(lVar3 + (int)uVar4 + 0x20) == '\0') {
          return;
        }
        uVar4 = uVar4 + 1;
      } while ((uVar1 & ((int)uVar1 >> 0x1f ^ 0xffffffffU)) != uVar4);
    }
    lVar3 = *(long *)PTR_DAT_05e5dd50;
    if (*(int *)(lVar3 + 0xe4) == 0) {
      func_0x029f5bd0();
      lVar3 = *(long *)puVar2;
    }
    if (**(char **)(lVar3 + 0xb8) != '\0') {
      lVar3 = *(long *)(param_1 + 0x40);
      if (lVar3 == 0) goto LAB_02ba692c;
      uVar1 = *(uint *)(lVar3 + 0x18);
      if (0 < (int)uVar1) {
        uVar4 = 0;
        do {
          if (uVar1 == uVar4) {
LAB_02ba6928:
                    /* WARNING: Subroutine does not return */
            Throw_Index_Wrapper();
          }
          if (*(char *)(lVar3 + (int)uVar4 + 0x20) == '\0') {
            return;
          }
          uVar4 = uVar4 + 1;
        } while ((uVar1 & ((int)uVar1 >> 0x1f ^ 0xffffffffU)) != uVar4);
      }
    }
    if (*(long *)(param_1 + 0xe8) != 0) {
      GameObject_SetActive_0x6000cfe(*(long *)(param_1 + 0xe8),1,0);
      return;
    }
  }
LAB_02ba692c:
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

