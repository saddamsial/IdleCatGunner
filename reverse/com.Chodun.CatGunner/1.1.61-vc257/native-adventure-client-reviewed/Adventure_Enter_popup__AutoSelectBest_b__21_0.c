/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b342bc, Ghidra VA 02c342bc. */

void Adventure_Enter_popup__AutoSelectBest_b__21_0
               (undefined8 param_1,undefined8 param_2,undefined8 param_3)

{
  undefined4 uVar1;
  undefined8 uVar2;
  undefined4 uStack_14;
  
  uStack_14 = 0;
  uVar2 = Adventure_Enter_popup_GradeOf(param_1,param_3);
  uStack_14 = (undefined4)uVar2;
  uVar1 = Adventure_Enter_popup_GradeOf(uVar2,param_2);
  Int32_CompareTo_0x600080a(&uStack_14,uVar1,0);
  return;
}

