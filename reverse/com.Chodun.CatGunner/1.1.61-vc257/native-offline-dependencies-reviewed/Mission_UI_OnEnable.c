/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b04bc0, Ghidra VA 02c04bc0. */

void Mission_UI_OnEnable(long param_1)

{
  undefined *puVar1;
  undefined *puVar2;
  undefined *puVar3;
  long lVar4;
  undefined8 uVar5;
  long *plVar6;
  
  puVar1 = PTR_DAT_05e5dd50;
  if ((bRam000000000625be66 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e59760);
    func_0x029f5a50(PTR_DAT_05e597d0);
    func_0x029f5a50(PTR_DAT_05e5dd50);
    func_0x029f5a50(PTR_DAT_05e61f30);
    func_0x029f5a50(PTR_DAT_05e61f38);
    bRam000000000625be66 = 1;
  }
  lVar4 = *(long *)puVar1;
  if (*(int *)(lVar4 + 0xe4) == 0) {
    func_0x029f5bd0();
    lVar4 = *(long *)puVar1;
  }
  puVar1 = PTR_DAT_05e597d0;
  lVar4 = *(long *)(*(long *)(lVar4 + 0xb8) + 8);
  if (lVar4 != 0) {
    if (*(int *)(*(long *)PTR_DAT_05e59760 + 0xe4) == 0) {
      func_0x029f5bd0();
    }
    puVar3 = PTR_DAT_05e61f38;
    puVar2 = PTR_DAT_05e61f30;
    uVar5 = CultureInfo_get_CurrentCulture_0x6002ba5(0);
    if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
      func_0x029f5bd0(*(long *)puVar1);
    }
    uVar5 = DateTime_ToString_0x6000631(lVar4 + 0x68,*(undefined8 *)puVar3,uVar5,0);
    plVar6 = *(long **)(param_1 + 0x28);
    uVar5 = String_Format_0x600029c(*(undefined8 *)puVar2,uVar5,0);
    if (plVar6 != (long *)0x0) {
                    /* WARNING: Could not recover jumptable at 0x02c04ce8. Too many branches */
                    /* WARNING: Treating indirect jump as call */
      (**(code **)(*plVar6 + 0x558))(plVar6,uVar5,*(undefined8 *)(*plVar6 + 0x560));
      return;
    }
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

