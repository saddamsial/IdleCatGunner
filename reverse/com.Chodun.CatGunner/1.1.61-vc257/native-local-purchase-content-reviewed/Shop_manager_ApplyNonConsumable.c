/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b967e4, Ghidra VA 02c967e4. */

void Shop_manager_ApplyNonConsumable(long param_1,undefined8 param_2)

{
  undefined *puVar1;
  undefined *puVar2;
  undefined *puVar3;
  ulong uVar4;
  long lVar5;
  long lVar6;
  long lVar7;
  undefined8 uVar8;
  
  puVar1 = PTR_DAT_05e64298;
  if ((bRam000000000625c44a & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e62668);
    func_0x029f5a50(PTR_DAT_05e5d338);
    func_0x029f5a50(PTR_DAT_05e5dd48);
    func_0x029f5a50(PTR_DAT_05e591c0);
    func_0x029f5a50(PTR_DAT_05e5d920);
    func_0x029f5a50(PTR_DAT_05e641e0);
    func_0x029f5a50(PTR_DAT_05e64248);
    func_0x029f5a50(PTR_DAT_05e64298);
    func_0x029f5a50(PTR_DAT_05e642a0);
    func_0x029f5a50(PTR_DAT_05e642c0);
    func_0x029f5a50(PTR_DAT_05e642d0);
    bRam000000000625c44a = 1;
  }
  puVar2 = PTR_DAT_05e5d920;
  uVar4 = String_op_Equality_0x600025a(param_2,*(undefined8 *)puVar1,0);
  if ((uVar4 & 1) == 0) {
    uVar4 = String_op_Equality_0x600025a(param_2,*(undefined8 *)PTR_DAT_05e642c0,0);
    if ((uVar4 & 1) == 0) {
      uVar4 = String_op_Equality_0x600025a(param_2,*(undefined8 *)PTR_DAT_05e641e0,0);
      if ((uVar4 & 1) == 0) {
        uVar4 = String_op_Equality_0x600025a(param_2,*(undefined8 *)PTR_DAT_05e64248,0);
        if ((uVar4 & 1) == 0) {
          uVar4 = String_op_Equality_0x600025a(param_2,*(undefined8 *)PTR_DAT_05e642a0,0);
          if ((uVar4 & 1) == 0) {
            uVar4 = String_op_Equality_0x600025a(param_2,*(undefined8 *)PTR_DAT_05e642d0,0);
            if ((uVar4 & 1) != 0) {
              lVar5 = *(long *)puVar2;
              if (*(int *)(lVar5 + 0xe4) == 0) {
                func_0x029f5bd0();
                lVar5 = *(long *)puVar2;
              }
              if (*(char *)(*(long *)(lVar5 + 0xb8) + 0xd) == '\0') {
                if (*(int *)(*(long *)PTR_DAT_05e5d338 + 0xe4) == 0) {
                  func_0x029f5bd0();
                }
                Gamemanager_Get_Dia_0x6000078(500,0);
                lVar5 = *(long *)puVar2;
              }
              if (*(int *)(lVar5 + 0xe4) == 0) {
                func_0x029f5bd0();
                lVar5 = *(long *)puVar2;
              }
              puVar3 = PTR_DAT_05e5dd48;
              puVar1 = PTR_DAT_05e591c0;
              lVar7 = *(long *)PTR_DAT_05e5dd48;
              lVar6 = *(long *)PTR_DAT_05e591c0;
              *(undefined1 *)(*(long *)(lVar5 + 0xb8) + 0xd) = 1;
              uVar8 = **(undefined8 **)(lVar7 + 0xb8);
              if (*(int *)(lVar6 + 0xe4) == 0) {
                func_0x029f5bd0(lVar6);
              }
              uVar4 = Object_op_Inequality_0x6000ded(uVar8,0,0);
              if ((uVar4 & 1) != 0) {
                lVar5 = **(long **)(*(long *)puVar3 + 0xb8);
                if (lVar5 == 0) {
LAB_02c96d4c:
                    /* WARNING: Subroutine does not return */
                  Throw_NullReference_Wrapper();
                }
                uVar8 = *(undefined8 *)(lVar5 + 0x28);
                if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
                  func_0x029f5bd0();
                }
                uVar4 = Object_op_Inequality_0x6000ded(uVar8,0,0);
                if ((uVar4 & 1) != 0) {
                  lVar5 = **(long **)(*(long *)puVar3 + 0xb8);
                  if ((lVar5 == 0) || (lVar5 = *(long *)(lVar5 + 0x28), lVar5 == 0))
                  goto LAB_02c96d4c;
                  Mine_Start_UI_Reload_0x6000822(lVar5,0);
                }
              }
            }
          }
          else {
            lVar5 = *(long *)puVar2;
            if (*(int *)(lVar5 + 0xe4) == 0) {
              func_0x029f5bd0();
              lVar5 = *(long *)puVar2;
            }
            if (*(char *)(*(long *)(lVar5 + 0xb8) + 0xc) == '\0') {
              if (*(int *)(*(long *)PTR_DAT_05e5d338 + 0xe4) == 0) {
                func_0x029f5bd0();
              }
              uVar8 = Gamemanager_Get_Dia_0x6000078(16000,0);
              Shop_manager_SpawnDiaFx_0x6000d76(uVar8,*(undefined8 *)(param_1 + 0xa8));
              lVar5 = *(long *)puVar2;
            }
            if (*(int *)(lVar5 + 0xe4) == 0) {
              func_0x029f5bd0();
              lVar5 = *(long *)puVar2;
            }
            *(undefined1 *)(*(long *)(lVar5 + 0xb8) + 0xc) = 1;
          }
        }
        else {
          lVar5 = *(long *)puVar2;
          if (*(int *)(lVar5 + 0xe4) == 0) {
            func_0x029f5bd0();
            lVar5 = *(long *)puVar2;
          }
          if (*(char *)(*(long *)(lVar5 + 0xb8) + 0xb) == '\0') {
            if (*(int *)(*(long *)PTR_DAT_05e5d338 + 0xe4) == 0) {
              func_0x029f5bd0();
            }
            uVar8 = Gamemanager_Get_Dia_0x6000078(1000,0);
            Shop_manager_SpawnDiaFx_0x6000d76(uVar8,*(undefined8 *)(param_1 + 0xa0));
            lVar5 = *(long *)puVar2;
          }
          if (*(int *)(lVar5 + 0xe4) == 0) {
            func_0x029f5bd0();
            lVar5 = *(long *)puVar2;
          }
          *(undefined1 *)(*(long *)(lVar5 + 0xb8) + 0xb) = 1;
        }
      }
      else {
        lVar5 = *(long *)puVar2;
        if (*(int *)(lVar5 + 0xe4) == 0) {
          func_0x029f5bd0();
          lVar5 = *(long *)puVar2;
        }
        if (*(char *)(*(long *)(lVar5 + 0xb8) + 10) == '\0') {
          if (*(int *)(*(long *)PTR_DAT_05e5d338 + 0xe4) == 0) {
            func_0x029f5bd0();
          }
          uVar8 = Gamemanager_Get_Dia_0x6000078(500,0);
          Shop_manager_SpawnDiaFx_0x6000d76(uVar8,*(undefined8 *)(param_1 + 0x98));
          lVar5 = *(long *)puVar2;
        }
        if (*(int *)(lVar5 + 0xe4) == 0) {
          func_0x029f5bd0();
          lVar5 = *(long *)puVar2;
        }
        *(undefined1 *)(*(long *)(lVar5 + 0xb8) + 10) = 1;
      }
    }
    else {
      lVar5 = *(long *)puVar2;
      if (*(int *)(lVar5 + 0xe4) == 0) {
        func_0x029f5bd0();
        lVar5 = *(long *)puVar2;
      }
      lVar6 = *(long *)(lVar5 + 0xb8);
      if (*(char *)(lVar6 + 8) == '\0') {
        if (*(int *)(lVar5 + 0xe4) == 0) {
          func_0x029f5bd0();
          lVar6 = *(long *)(*(long *)puVar2 + 0xb8);
        }
        puVar1 = PTR_DAT_05e62668;
        if (*(char *)(lVar6 + 9) == '\0') {
          uVar8 = **(undefined8 **)(*(long *)PTR_DAT_05e62668 + 0xb8);
          if (*(int *)(*(long *)PTR_DAT_05e591c0 + 0xe4) == 0) {
            func_0x029f5bd0();
          }
          uVar4 = Object_op_Inequality_0x6000ded(uVar8,0,0);
          if ((uVar4 & 1) != 0) {
            if (**(long **)(*(long *)puVar1 + 0xb8) == 0) goto LAB_02c96d4c;
            DiaPig_Init_0x6000ce9(**(long **)(*(long *)puVar1 + 0xb8),0);
          }
        }
      }
      lVar5 = *(long *)puVar2;
      if (*(int *)(lVar5 + 0xe4) == 0) {
        func_0x029f5bd0();
        lVar5 = *(long *)puVar2;
      }
      *(undefined1 *)(*(long *)(lVar5 + 0xb8) + 9) = 1;
    }
  }
  else {
    lVar5 = *(long *)puVar2;
    if (*(int *)(lVar5 + 0xe4) == 0) {
      func_0x029f5bd0();
      lVar5 = *(long *)puVar2;
    }
    lVar6 = *(long *)(lVar5 + 0xb8);
    if (*(char *)(lVar6 + 8) == '\0') {
      if (*(int *)(lVar5 + 0xe4) == 0) {
        func_0x029f5bd0();
        lVar6 = *(long *)(*(long *)puVar2 + 0xb8);
      }
      puVar1 = PTR_DAT_05e62668;
      if (*(char *)(lVar6 + 9) == '\0') {
        uVar8 = **(undefined8 **)(*(long *)PTR_DAT_05e62668 + 0xb8);
        if (*(int *)(*(long *)PTR_DAT_05e591c0 + 0xe4) == 0) {
          func_0x029f5bd0();
        }
        uVar4 = Object_op_Inequality_0x6000ded(uVar8,0,0);
        if ((uVar4 & 1) != 0) {
          if (**(long **)(*(long *)puVar1 + 0xb8) == 0) goto LAB_02c96d4c;
          DiaPig_Init_0x6000ce9(**(long **)(*(long *)puVar1 + 0xb8),0);
        }
      }
    }
    lVar5 = *(long *)puVar2;
    if (*(int *)(lVar5 + 0xe4) == 0) {
      func_0x029f5bd0();
      lVar5 = *(long *)puVar2;
    }
    *(undefined1 *)(*(long *)(lVar5 + 0xb8) + 8) = 1;
  }
  lVar5 = *(long *)puVar2;
  if (*(int *)(lVar5 + 0xe4) == 0) {
    func_0x029f5bd0();
    lVar5 = *(long *)puVar2;
  }
  lVar5 = *(long *)(*(long *)(lVar5 + 0xb8) + 0x50);
  if (lVar5 != 0) {
                    /* WARNING: Could not recover jumptable at 0x02c96d38. Too many branches */
                    /* WARNING: Treating indirect jump as call */
    (**(code **)(lVar5 + 0x18))(*(undefined8 *)(lVar5 + 0x40),*(undefined8 *)(lVar5 + 0x28));
    return;
  }
  return;
}

