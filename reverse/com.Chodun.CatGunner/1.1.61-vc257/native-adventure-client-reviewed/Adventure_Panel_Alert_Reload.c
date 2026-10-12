/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b35930, Ghidra VA 02c35930. */

void Adventure_Panel_Alert_Reload(long param_1)

{
  undefined *puVar1;
  uint uVar2;
  long lVar3;
  uint uVar4;
  long lVar5;
  
  puVar1 = PTR_DAT_05e5dd28;
  if ((bRam000000000625c063 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5dd28);
    bRam000000000625c063 = 1;
  }
  lVar3 = *(long *)puVar1;
  if (*(int *)(lVar3 + 0xe4) == 0) {
    func_0x029f5bd0();
    lVar3 = *(long *)puVar1;
  }
  lVar3 = *(long *)(*(long *)(lVar3 + 0xb8) + 0x10);
  if ((lVar3 != 0) && (lVar5 = *(long *)(lVar3 + 0x28), lVar5 != 0)) {
    uVar2 = *(uint *)(lVar5 + 0x18);
    if ((int)uVar2 < 1) {
      uVar4 = 0;
    }
    else {
      uVar4 = 0;
      do {
        if (uVar2 == uVar4) {
                    /* WARNING: Subroutine does not return */
          Throw_Index_Wrapper();
        }
      } while ((*(int *)(lVar5 + (long)(int)uVar4 * 4 + 0x20) < 0x14) &&
              (uVar4 = uVar4 + 1, (uVar2 & ((int)uVar2 >> 0x1f ^ 0xffffffffU)) != uVar4));
    }
    if (*(long *)(param_1 + 0x88) != 0) {
      GameObject_SetActive_0x6000cfe(*(long *)(param_1 + 0x88),(int)uVar4 < (int)uVar2,0);
      lVar5 = *(long *)(param_1 + 0x80);
      uVar2 = Adventure_manager_HasAnyFinish_Any_return(lVar3,0);
      if (lVar5 != 0) {
        GameObject_SetActive_0x6000cfe(lVar5,uVar2 & 1,0);
        return;
      }
    }
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

