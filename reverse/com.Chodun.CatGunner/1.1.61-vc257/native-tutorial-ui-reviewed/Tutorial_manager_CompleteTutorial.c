/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2baf298, Ghidra VA 02caf298. */

void Tutorial_manager_CompleteTutorial(long param_1)

{
  undefined *puVar1;
  undefined *puVar2;
  long lVar3;
  ulong uVar4;
  long lVar5;
  undefined8 uVar6;
  ulong uVar7;
  
  if ((bRam000000000625c537 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5e4d0);
    func_0x029f5a50(PTR_DAT_05e591c0);
    bRam000000000625c537 = 1;
  }
  *(undefined4 *)(param_1 + 0x60) = 5;
  if (*(long *)(param_1 + 0x28) != 0) {
    GameObject_SetActive_0x6000cfe(*(long *)(param_1 + 0x28),0,0);
    if (*(long *)(param_1 + 0x30) != 0) {
      GameObject_SetActive_0x6000cfe(*(long *)(param_1 + 0x30),0,0);
      if (*(long *)(param_1 + 0x38) != 0) {
        GameObject_SetActive_0x6000cfe(*(long *)(param_1 + 0x38),0,0);
        if ((*(long *)(param_1 + 0x40) != 0) &&
           (lVar3 = Component_get_gameObject_0x6000c83(*(long *)(param_1 + 0x40),0), lVar3 != 0)) {
          GameObject_SetActive_0x6000cfe(lVar3,0,0);
          puVar1 = PTR_DAT_05e591c0;
          lVar3 = *(long *)(param_1 + 0x20);
          if (lVar3 != 0) {
            if (0 < (int)*(ulong *)(lVar3 + 0x18)) {
              uVar7 = 0;
              uVar4 = *(ulong *)(lVar3 + 0x18) & 0xffffffff;
              do {
                if (uVar4 <= uVar7) {
                    /* WARNING: Subroutine does not return */
                  Throw_Index_Wrapper();
                }
                lVar5 = *(long *)(lVar3 + 0x20 + uVar7 * 8);
                if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
                  func_0x029f5bd0();
                }
                uVar4 = Object_op_Inequality_0x6000ded(lVar5,0,0);
                if ((uVar4 & 1) != 0) {
                  if (lVar5 == 0) goto LAB_02caf45c;
                  GameObject_SetActive_0x6000cfe(lVar5,1,0);
                }
                uVar4 = (ulong)*(uint *)(lVar3 + 0x18);
                uVar7 = uVar7 + 1;
              } while ((long)uVar7 < (long)(int)*(uint *)(lVar3 + 0x18));
            }
            puVar2 = PTR_DAT_05e5e4d0;
            lVar3 = *(long *)PTR_DAT_05e5e4d0;
            if (*(int *)(lVar3 + 0xe4) == 0) {
              func_0x029f5bd0();
              lVar3 = *(long *)puVar2;
            }
            lVar5 = *(long *)puVar1;
            uVar6 = **(undefined8 **)(lVar3 + 0xb8);
            if (*(int *)(lVar5 + 0xe4) == 0) {
              func_0x029f5bd0(lVar5);
            }
            uVar7 = Object_op_Inequality_0x6000ded(uVar6,0,0);
            if ((uVar7 & 1) != 0) {
              lVar3 = *(long *)puVar2;
              if (*(int *)(lVar3 + 0xe4) == 0) {
                func_0x029f5bd0();
                lVar3 = *(long *)puVar2;
              }
              if (**(long **)(lVar3 + 0xb8) == 0) goto LAB_02caf45c;
              Contents_Unlock_manager_Reload_0x60002ad(**(long **)(lVar3 + 0xb8),0);
            }
            lVar3 = Component_get_gameObject_0x6000c83(param_1,0);
            if (lVar3 != 0) {
              GameObject_SetActive_0x6000cfe(lVar3,0,0);
              return;
            }
          }
        }
      }
    }
  }
LAB_02caf45c:
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

