/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2bae91c, Ghidra VA 02cae91c. */

float TutorialArrow_UI_GetTargetPos
                (undefined1 param_1 [16],undefined4 param_2,undefined4 param_3,long param_4,
                long param_5)

{
  undefined *puVar1;
  long *plVar2;
  ulong uVar3;
  undefined4 uVar4;
  undefined8 uStack_48;
  
  if ((bRam000000000625c531 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e591c0);
    func_0x029f5a50(PTR_DAT_05e5cf00);
    func_0x029f5a50(PTR_DAT_05e5bfa8);
    bRam000000000625c531 = 1;
  }
  uStack_48 = 0;
  if (param_5 != 0) {
    uVar4 = Transform_get_position_0x6000f4d(param_5,0);
    puVar1 = PTR_DAT_05e591c0;
    if (*(long *)(param_4 + 0x48) != 0) {
      plVar2 = (long *)Transform_get_parent_0x6000f5f(*(long *)(param_4 + 0x48),0);
      if (plVar2 == (long *)0x0) {
        plVar2 = (long *)0x0;
      }
      else if (*plVar2 != *(long *)PTR_DAT_05e5bfa8) {
        plVar2 = (long *)0x0;
      }
      if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
        func_0x029f5bd0();
      }
      uVar3 = Object_op_Inequality_0x6000ded(plVar2,0,0);
      if ((uVar3 & 1) == 0) {
        uStack_48._0_4_ = (float)RectTransform_get_anchoredPosition_0x6000f2b(param_5,0);
      }
      else {
        if (*(int *)(*(long *)PTR_DAT_05e5cf00 + 0xe4) == 0) {
          func_0x029f5bd0();
        }
        RectTransformUtility_WorldToScreenPoint_0x6000051(uVar4,param_2,param_3,0,0);
        RectTransformUtility_ScreenPointToLocalPointInRectangle_0x600004f(plVar2,0,&uStack_48,0);
      }
      return (float)uStack_48 + *(float *)(param_4 + 0x38);
    }
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

