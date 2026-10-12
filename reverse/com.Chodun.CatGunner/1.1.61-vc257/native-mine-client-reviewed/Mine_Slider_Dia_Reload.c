/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b49cf0, Ghidra VA 02c49cf0. */

void Mine_Slider_Dia_Reload(long param_1,int param_2)

{
  undefined *puVar1;
  undefined8 uVar2;
  long *plVar3;
  float fStack_24;
  
  puVar1 = PTR_DAT_05e633c0;
  if ((bRam000000000625c121 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e633c0);
    bRam000000000625c121 = 1;
  }
  plVar3 = *(long **)(param_1 + 0x30);
  fStack_24 = (float)param_2 / 10.0;
  uVar2 = Single_ToString_0x60009fb(&fStack_24,*(undefined8 *)puVar1,0);
  if (plVar3 != (long *)0x0) {
    (**(code **)(*plVar3 + 0x558))(plVar3,uVar2,*(undefined8 *)(*plVar3 + 0x560));
    return;
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

