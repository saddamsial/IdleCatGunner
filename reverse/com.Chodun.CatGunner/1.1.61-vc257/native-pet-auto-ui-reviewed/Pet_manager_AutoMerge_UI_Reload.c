/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b7c6e4, Ghidra VA 02c7c6e4. */

void Pet_manager_AutoMerge_UI_Reload(long param_1)

{
  undefined *puVar1;
  bool bVar2;
  uint uVar3;
  ulong uVar4;
  long lVar5;
  undefined8 uVar6;
  
  if ((bRam000000000625c32f & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e591c0);
    bRam000000000625c32f = 1;
  }
  uVar4 = Pet_manager_get_is_AutoMergeAble();
  if (((uVar4 & 1) == 0) && (*(char *)(param_1 + 0x60) != '\0')) {
    *(undefined1 *)(param_1 + 0x60) = 0;
  }
  puVar1 = PTR_DAT_05e591c0;
  uVar4 = Pet_manager_get_is_AutoMergeAble();
  if ((uVar4 & 1) == 0) {
    bVar2 = false;
  }
  else {
    bVar2 = *(char *)(param_1 + 0x60) != '\0';
  }
  uVar6 = *(undefined8 *)(param_1 + 0x68);
  if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  uVar4 = Object_op_Inequality_0x6000ded(uVar6,0,0);
  if ((uVar4 & 1) != 0) {
    lVar5 = *(long *)(param_1 + 0x68);
    if (bVar2 == false) {
      if (lVar5 == 0) goto LAB_02c7c874;
      OnOff_Off_0x60005b6(lVar5,0);
    }
    else {
      if (lVar5 == 0) goto LAB_02c7c874;
      OnOff_On_0x60005b5(lVar5,0);
    }
  }
  uVar6 = *(undefined8 *)(param_1 + 0x70);
  if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  uVar4 = Object_op_Inequality_0x6000ded(uVar6,0,0);
  if ((uVar4 & 1) != 0) {
    if (*(long *)(param_1 + 0x70) == 0) goto LAB_02c7c874;
    GameObject_SetActive_0x6000cfe(*(long *)(param_1 + 0x70),bVar2,0);
  }
  uVar6 = *(undefined8 *)(param_1 + 0x78);
  if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  uVar4 = Object_op_Inequality_0x6000ded(uVar6,0,0);
  if ((uVar4 & 1) != 0) {
    if (*(long *)(param_1 + 0x78) == 0) goto LAB_02c7c874;
    GameObject_SetActive_0x6000cfe(*(long *)(param_1 + 0x78),bVar2 ^ 1,0);
  }
  uVar6 = *(undefined8 *)(param_1 + 0x80);
  if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  uVar4 = Object_op_Inequality_0x6000ded(uVar6,0,0);
  if ((uVar4 & 1) == 0) {
    return;
  }
  lVar5 = *(long *)(param_1 + 0x80);
  uVar3 = WeeklyShop_Is_VIP_Unlocked_0x6000e7d(0);
  if (lVar5 != 0) {
    GameObject_SetActive_0x6000cfe(lVar5,uVar3 & 1,0);
    return;
  }
LAB_02c7c874:
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

