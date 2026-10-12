/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b47eb4, Ghidra VA 02c47eb4. */

void Boss_Slider_Time_Reload(float param_1,float param_2,long param_3)

{
  undefined *puVar1;
  undefined8 uVar2;
  long *plVar3;
  int iStack_14;
  
  if ((bRam000000000625c0f3 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5e6d0);
    bRam000000000625c0f3 = 1;
  }
  puVar1 = PTR_DAT_05e5e6d0;
  if (*(long *)(param_3 + 0x28) != 0) {
    SlicedFilledImage_set_fillAmount_0x60005d0(param_1 / param_2,*(long *)(param_3 + 0x28),0);
    plVar3 = *(long **)(param_3 + 0x38);
    iStack_14 = -0x80000000;
    if (param_1 + 1.0 != INFINITY) {
      iStack_14 = (int)(param_1 + 1.0);
    }
    uVar2 = func_0x029f5bd8(*(undefined8 *)(PTR_DAT_05e58a10 + 0x48),&iStack_14);
    uVar2 = String_Format_0x600029c(*(undefined8 *)puVar1,uVar2,0);
    if (plVar3 != (long *)0x0) {
      (**(code **)(*plVar3 + 0x558))(plVar3,uVar2,*(undefined8 *)(*plVar3 + 0x560));
      return;
    }
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

