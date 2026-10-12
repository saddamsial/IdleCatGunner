/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b5d5a0, Ghidra VA 02c5d5a0. */

void Fish_manager_Gacha_Btn_UI_Reload(long param_1)

{
  undefined *puVar1;
  long *plVar2;
  undefined8 uVar3;
  ulong uVar4;
  undefined4 uVar5;
  undefined4 uVar6;
  undefined4 uVar7;
  undefined4 uVar8;
  int iStack_24;
  
  if ((bRam000000000625c209 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e591c0);
    func_0x029f5a50(PTR_DAT_05e63800);
    bRam000000000625c209 = 1;
  }
  Fish_manager_FreeGacha_Reload(param_1);
  if (*(long *)(param_1 + 0xd8) != 0) {
    plVar2 = (long *)Selectable_get_image_0x600043d(*(long *)(param_1 + 0xd8),0);
    puVar1 = PTR_DAT_05e63800;
    uVar8 = 0x3f800000;
    uVar7 = 0x3f800000;
    uVar6 = 0x3f800000;
    uVar5 = 0x3f800000;
    if (4 < *(int *)(param_1 + 0x78)) {
      uVar5 = *(undefined4 *)(param_1 + 0xe8);
      uVar6 = *(undefined4 *)(param_1 + 0xec);
      uVar7 = *(undefined4 *)(param_1 + 0xf0);
      uVar8 = *(undefined4 *)(param_1 + 0xf4);
    }
    if (plVar2 != (long *)0x0) {
      (**(code **)(*plVar2 + 0x2a8))
                (uVar5,uVar6,uVar7,uVar8,plVar2,*(undefined8 *)(*plVar2 + 0x2b0));
      plVar2 = *(long **)(param_1 + 0xe0);
      iStack_24 = 5 - *(int *)(param_1 + 0x78);
      uVar3 = func_0x029f5bd8(*(undefined8 *)(PTR_DAT_05e58a10 + 0x48),&iStack_24);
      uVar3 = String_Format_0x600029c(*(undefined8 *)puVar1,uVar3,0);
      puVar1 = PTR_DAT_05e591c0;
      if (plVar2 != (long *)0x0) {
        (**(code **)(*plVar2 + 0x558))(plVar2,uVar3,*(undefined8 *)(*plVar2 + 0x560));
        uVar3 = *(undefined8 *)(param_1 + 0xf8);
        if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
          func_0x029f5bd0();
        }
        uVar4 = Object_op_Inequality_0x6000ded(uVar3,0,0);
        if ((uVar4 & 1) != 0) {
          if (*(long *)(param_1 + 0xf8) == 0) goto LAB_02c5d6f4;
          GameObject_SetActive_0x6000cfe
                    (*(long *)(param_1 + 0xf8),*(int *)(param_1 + 0x78) - 3U < 2,0);
        }
        Fish_manager_AutoMerge_UI_Reload(param_1);
        return;
      }
    }
  }
LAB_02c5d6f4:
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

