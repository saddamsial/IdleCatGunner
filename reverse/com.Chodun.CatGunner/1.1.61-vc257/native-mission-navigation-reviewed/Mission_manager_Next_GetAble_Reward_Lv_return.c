/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2aa6930, Ghidra VA 02ba6930. */

int Mission_manager_Next_GetAble_Reward_Lv_return(long param_1)

{
  char cVar1;
  undefined *puVar2;
  long lVar3;
  long lVar4;
  int iVar5;
  ulong uVar6;
  
  if ((bRam000000000625ba54 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5dd50);
    bRam000000000625ba54 = 1;
  }
  puVar2 = PTR_DAT_05e5dd50;
  lVar4 = *(long *)(param_1 + 0x38);
  if (lVar4 != 0) {
    uVar6 = 0;
    do {
      if ((long)(int)*(uint *)(lVar4 + 0x18) <= (long)uVar6) {
        return -1;
      }
      if (*(uint *)(lVar4 + 0x18) <= uVar6) {
LAB_02ba6a14:
                    /* WARNING: Subroutine does not return */
        Throw_Index_Wrapper();
      }
      lVar3 = *(long *)puVar2;
      cVar1 = *(char *)(lVar4 + uVar6 + 0x20);
      if (*(int *)(lVar3 + 0xe4) == 0) {
        func_0x029f5bd0();
        lVar3 = *(long *)puVar2;
      }
      if ((**(char **)(lVar3 + 0xb8) == '\0') || (cVar1 == '\0')) {
        if ((cVar1 == '\0') || (**(char **)(lVar3 + 0xb8) != '\0')) {
LAB_02ba69f8:
          iVar5 = (int)uVar6;
          if (*(int *)(param_1 + 0x48) <= iVar5) {
            iVar5 = -1;
          }
          return iVar5;
        }
      }
      else {
        lVar4 = *(long *)(param_1 + 0x40);
        if (lVar4 == 0) break;
        if (*(uint *)(lVar4 + 0x18) <= uVar6) goto LAB_02ba6a14;
        if (*(char *)(lVar4 + uVar6 + 0x20) == '\0') goto LAB_02ba69f8;
      }
      lVar4 = *(long *)(param_1 + 0x38);
      uVar6 = uVar6 + 1;
    } while (lVar4 != 0);
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

