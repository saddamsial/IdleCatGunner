/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2baf460, Ghidra VA 02caf460. */

void Tutorial_manager_BeginTutorial(long param_1)

{
  undefined *puVar1;
  undefined *puVar2;
  ulong uVar3;
  long lVar4;
  undefined8 uVar5;
  long lVar6;
  ulong uVar7;
  
  if ((bRam000000000625c536 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5e4d0);
    func_0x029f5a50(PTR_DAT_05e591c0);
    bRam000000000625c536 = 1;
  }
  puVar1 = PTR_DAT_05e591c0;
  lVar6 = *(long *)(param_1 + 0x20);
  if (lVar6 != 0) {
    if (0 < (int)*(ulong *)(lVar6 + 0x18)) {
      uVar7 = 0;
      uVar3 = *(ulong *)(lVar6 + 0x18) & 0xffffffff;
      do {
        if (uVar3 <= uVar7) {
                    /* WARNING: Subroutine does not return */
          Throw_Index_Wrapper();
        }
        lVar4 = *(long *)(lVar6 + 0x20 + uVar7 * 8);
        if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
          func_0x029f5bd0();
        }
        uVar3 = Object_op_Inequality_0x6000ded(lVar4,0,0);
        if ((uVar3 & 1) != 0) {
          if (lVar4 == 0) goto LAB_02caf634;
          GameObject_SetActive_0x6000cfe(lVar4,0,0);
        }
        uVar3 = (ulong)*(uint *)(lVar6 + 0x18);
        uVar7 = uVar7 + 1;
      } while ((long)uVar7 < (long)(int)*(uint *)(lVar6 + 0x18));
    }
    if (*(long *)(param_1 + 0x28) != 0) {
      GameObject_SetActive_0x6000cfe(*(long *)(param_1 + 0x28),0,0);
      if (*(long *)(param_1 + 0x30) != 0) {
        GameObject_SetActive_0x6000cfe(*(long *)(param_1 + 0x30),0,0);
        if (*(long *)(param_1 + 0x38) != 0) {
          GameObject_SetActive_0x6000cfe(*(long *)(param_1 + 0x38),0,0);
          if ((*(long *)(param_1 + 0x40) != 0) &&
             (lVar6 = Component_get_gameObject_0x6000c83(*(long *)(param_1 + 0x40),0), lVar6 != 0))
          {
            GameObject_SetActive_0x6000cfe(lVar6,0,0);
            if (*(long *)(param_1 + 0x48) != 0) {
              GameObject_SetActive_0x6000cfe(*(long *)(param_1 + 0x48),0,0);
              puVar2 = PTR_DAT_05e5e4d0;
              if (*(long *)(param_1 + 0x50) != 0) {
                GameObject_SetActive_0x6000cfe(*(long *)(param_1 + 0x50),0,0);
                lVar6 = *(long *)puVar2;
                if (*(int *)(lVar6 + 0xe4) == 0) {
                  func_0x029f5bd0();
                  lVar6 = *(long *)puVar2;
                }
                lVar4 = *(long *)puVar1;
                uVar5 = **(undefined8 **)(lVar6 + 0xb8);
                if (*(int *)(lVar4 + 0xe4) == 0) {
                  func_0x029f5bd0(lVar4);
                }
                uVar7 = Object_op_Inequality_0x6000ded(uVar5,0,0);
                if ((uVar7 & 1) != 0) {
                  lVar6 = *(long *)puVar2;
                  if (*(int *)(lVar6 + 0xe4) == 0) {
                    func_0x029f5bd0();
                    lVar6 = *(long *)puVar2;
                  }
                  if (**(long **)(lVar6 + 0xb8) == 0) goto LAB_02caf634;
                  Contents_Unlock_manager_Reload_0x60002ad(**(long **)(lVar6 + 0xb8),0);
                }
                Tutorial_manager_SetStep(param_1,0);
                return;
              }
            }
          }
        }
      }
    }
  }
LAB_02caf634:
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

