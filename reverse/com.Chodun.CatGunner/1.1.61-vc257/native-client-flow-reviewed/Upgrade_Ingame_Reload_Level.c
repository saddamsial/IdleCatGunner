/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2bb0ecc, Ghidra VA 02cb0ecc. */

void Upgrade_Ingame_Reload_Level(long param_1,int param_2)

{
  undefined4 uVar1;
  undefined *puVar2;
  long lVar3;
  undefined8 uVar4;
  long *plVar5;
  undefined8 uStack_50;
  undefined8 uStack_48;
  undefined8 uStack_40;
  undefined8 uStack_38;
  
  puVar2 = PTR_DAT_05e5d4e8;
  if ((bRam000000000625c548 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5d4e8);
    func_0x029f5a50(PTR_DAT_05e61f18);
    func_0x029f5a50(PTR_DAT_05e63080);
    bRam000000000625c548 = 1;
  }
  lVar3 = *(long *)puVar2;
  uVar1 = *(undefined4 *)(param_1 + 0x20);
  *(int *)(param_1 + 0xbc) = param_2;
  if (*(int *)(lVar3 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  uVar4 = Upgrade_manager_is_MaxLv_0x6000f94(uVar1);
  lVar3 = *(long *)puVar2;
  *(byte *)(param_1 + 0xb8) = (byte)uVar4 & 1;
  if (**(long **)(lVar3 + 0xb8) != 0) {
    plVar5 = *(long **)(param_1 + 0x48);
    uVar4 = Upgrade_manager_Value_str_Return(uVar4,*(undefined4 *)(param_1 + 0x20));
    if (plVar5 != (long *)0x0) {
      (**(code **)(*plVar5 + 0x558))(plVar5,uVar4,*(undefined8 *)(*plVar5 + 0x560));
      if (*(long *)(param_1 + 0x38) != 0) {
        TMP_Text_SetText_0x6000603
                  ((float)param_2,*(long *)(param_1 + 0x38),*(undefined8 *)PTR_DAT_05e61f18,0);
        if (*(char *)(param_1 + 0xb8) == '\0') {
          uVar1 = *(undefined4 *)(param_1 + 0x20);
          if (*(int *)(*(long *)puVar2 + 0xe4) == 0) {
            func_0x029f5bd0();
          }
          Upgrade_manager_Price_return(&uStack_50,uVar1);
          *(undefined8 *)(param_1 + 0xa0) = uStack_48;
          *(undefined8 *)(param_1 + 0x98) = uStack_50;
          *(undefined8 *)(param_1 + 0xb0) = uStack_38;
          *(undefined8 *)(param_1 + 0xa8) = uStack_40;
          Managed_WriteBarrier(param_1 + 0x98,0);
          plVar5 = *(long **)(param_1 + 0x40);
          uVar4 = InfVal_InfVal_change_0x60000a8(param_1 + 0x98,0);
          if (plVar5 != (long *)0x0) {
            (**(code **)(*plVar5 + 0x558))(plVar5,uVar4,*(undefined8 *)(*plVar5 + 0x560));
LAB_02cb1088:
            *(undefined4 *)(param_1 + 0xc0) = 0xffffffff;
            *(undefined4 *)(param_1 + 200) = 0xbf800000;
            return;
          }
        }
        else {
          plVar5 = *(long **)(param_1 + 0x40);
          if (plVar5 != (long *)0x0) {
            (**(code **)(*plVar5 + 0x558))
                      (plVar5,*(undefined8 *)PTR_DAT_05e63080,*(undefined8 *)(*plVar5 + 0x560));
            plVar5 = *(long **)(param_1 + 0x40);
            if (plVar5 != (long *)0x0) {
              (**(code **)(*plVar5 + 0x2a8))
                        (0x3f800000,0x3f800000,0x3f800000,0x3f800000,plVar5,
                         *(undefined8 *)(*plVar5 + 0x2b0));
              if (*(long *)(param_1 + 0x30) != 0) {
                GameObject_SetActive_0x6000cfe(*(long *)(param_1 + 0x30),0,0);
                if (*(long *)(param_1 + 0x28) != 0) {
                  SlicedFilledImage_set_fillAmount_0x60005d0(0,*(long *)(param_1 + 0x28),0);
                  goto LAB_02cb1088;
                }
              }
            }
          }
        }
      }
    }
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

