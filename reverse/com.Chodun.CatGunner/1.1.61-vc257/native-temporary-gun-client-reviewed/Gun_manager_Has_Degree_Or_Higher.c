/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b6a65c, Ghidra VA 02c6a65c. */

bool Gun_manager_Has_Degree_Or_Higher(long param_1,int param_2)

{
  bool bVar1;
  uint uVar2;
  int iVar3;
  uint uVar4;
  long lVar5;
  char *pcVar6;
  int iVar7;
  
  lVar5 = *(long *)(param_1 + 0x30);
  if (lVar5 != 0) {
    uVar4 = param_2 * 5;
    uVar2 = *(uint *)(lVar5 + 0x18);
    if ((int)uVar4 < (int)uVar2) {
      iVar3 = 0;
      if (uVar4 <= uVar2) {
        iVar3 = uVar2 + param_2 * -5;
      }
      pcVar6 = (char *)(lVar5 + (int)uVar4 + 0x20);
      iVar7 = ~uVar4 + uVar2;
      while( true ) {
        if (iVar3 == 0) {
                    /* WARNING: Subroutine does not return */
          Throw_Index_Wrapper(param_1);
        }
        if (*pcVar6 != '\0') break;
        iVar3 = iVar3 + -1;
        bVar1 = iVar7 == 0;
        param_1 = 0;
        pcVar6 = pcVar6 + 1;
        iVar7 = iVar7 + -1;
        if (bVar1) {
          return false;
        }
      }
      return *pcVar6 != '\0';
    }
  }
  return false;
}

