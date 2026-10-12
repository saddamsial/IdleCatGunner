/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b362b0, Ghidra VA 02c362b0. */

void Adventure_Reward_popup_UpdateSliderText(long param_1,int param_2,undefined4 param_3)

{
  undefined *puVar1;
  undefined *puVar2;
  ulong uVar3;
  undefined8 uVar4;
  undefined8 uVar5;
  long *plVar6;
  undefined4 uStack_44;
  undefined4 uStack_38;
  int iStack_34;
  
  puVar1 = PTR_DAT_05e591c0;
  if ((bRam000000000625c070 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e591c0);
    func_0x029f5a50(PTR_DAT_05e61f18);
    func_0x029f5a50(PTR_DAT_05e61f28);
    bRam000000000625c070 = 1;
  }
  uVar5 = *(undefined8 *)(param_1 + 0x50);
  if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  uVar3 = Object_op_Inequality_0x6000ded(uVar5,0,0);
  puVar2 = PTR_DAT_05e61f18;
  if ((uVar3 & 1) != 0) {
    iStack_34 = param_2 + 1;
    plVar6 = *(long **)(param_1 + 0x50);
    uVar5 = func_0x029f5bd8(*(undefined8 *)(PTR_DAT_05e58a10 + 0x48),&iStack_34);
    uVar5 = String_Format_0x600029c(*(undefined8 *)puVar2,uVar5,0);
    if (plVar6 == (long *)0x0) goto LAB_02c36448;
    (**(code **)(*plVar6 + 0x558))(plVar6,uVar5,*(undefined8 *)(*plVar6 + 0x560));
  }
  uVar5 = *(undefined8 *)(param_1 + 0x58);
  if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  uVar3 = Object_op_Inequality_0x6000ded(uVar5,0,0);
  puVar1 = PTR_DAT_05e58a10;
  if ((uVar3 & 1) != 0) {
    plVar6 = *(long **)(param_1 + 0x58);
    uStack_38 = param_3;
    uVar5 = func_0x029f5bd8(*(undefined8 *)(PTR_DAT_05e58a10 + 0x48),&uStack_38);
    uStack_44 = Adventure_Reward_popup_Need(uVar5,param_2);
    uVar4 = func_0x029f5bd8(*(undefined8 *)(puVar1 + 0x48),&uStack_44);
    uVar5 = String_Format_0x600029d(*(undefined8 *)PTR_DAT_05e61f28,uVar5,uVar4,0);
    if (plVar6 == (long *)0x0) {
LAB_02c36448:
                    /* WARNING: Subroutine does not return */
      Throw_NullReference_Wrapper();
    }
    (**(code **)(*plVar6 + 0x558))(plVar6,uVar5,*(undefined8 *)(*plVar6 + 0x560));
  }
  return;
}

