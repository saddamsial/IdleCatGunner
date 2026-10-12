/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2aa5c4c, Ghidra VA 02ba5c4c. */

void Mission_manager_Alert_Check(long param_1)

{
  uint uVar1;
  int iVar2;
  undefined *puVar3;
  long lVar4;
  int iVar5;
  long lVar6;
  uint uVar7;
  
  if ((bRam000000000625ba4a & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5dd50);
    bRam000000000625ba4a = 1;
  }
  puVar3 = PTR_DAT_05e5dd50;
  lVar6 = *(long *)(param_1 + 0x20);
  if (lVar6 != 0) {
    uVar7 = 0;
    do {
      uVar1 = *(uint *)(lVar6 + 0x18);
      if ((int)uVar1 <= (int)uVar7) goto LAB_02ba5d68;
      if (uVar1 <= uVar7) {
                    /* WARNING: Subroutine does not return */
        Throw_Index_Wrapper();
      }
      lVar6 = *(long *)(lVar6 + (long)(int)uVar7 * 8 + 0x20);
      if (lVar6 == 0) break;
      if (*(char *)(lVar6 + 0x26) == '\0') {
LAB_02ba5cd4:
        iVar2 = *(int *)(lVar6 + 0x18);
        iVar5 = 0;
        if (iVar2 < 2) {
          if (iVar2 == 0) {
            iVar5 = *(int *)(param_1 + 0x50);
          }
          else if (iVar2 == 1) {
            iVar5 = *(int *)(param_1 + 0x54);
          }
        }
        else if (iVar2 == 2) {
          iVar5 = *(int *)(param_1 + 0x58);
        }
        else if (iVar2 == 3) {
          iVar5 = *(int *)(param_1 + 0x5c);
        }
        if (*(int *)(lVar6 + 0x1c) <= iVar5) {
          if (*(char *)(lVar6 + 0x24) != '\0') {
            lVar4 = *(long *)puVar3;
            if (*(int *)(lVar4 + 0xe4) == 0) {
              func_0x029f5bd0();
              lVar4 = *(long *)puVar3;
            }
            if ((*(char *)(*(long *)(lVar4 + 0xb8) + 1) == '\0') ||
               (*(char *)(lVar6 + 0x25) != '\0')) goto LAB_02ba5d58;
          }
LAB_02ba5d68:
          if (*(long *)(param_1 + 0xb8) != 0) {
            GameObject_SetActive_0x6000cfe(*(long *)(param_1 + 0xb8),(int)uVar7 < (int)uVar1,0);
            return;
          }
          break;
        }
      }
      else {
        lVar4 = *(long *)puVar3;
        if (*(int *)(lVar4 + 0xe4) == 0) {
          func_0x029f5bd0();
          lVar4 = *(long *)puVar3;
        }
        if (**(char **)(lVar4 + 0xb8) != '\0') goto LAB_02ba5cd4;
      }
LAB_02ba5d58:
      lVar6 = *(long *)(param_1 + 0x20);
      uVar7 = uVar7 + 1;
    } while (lVar6 != 0);
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

