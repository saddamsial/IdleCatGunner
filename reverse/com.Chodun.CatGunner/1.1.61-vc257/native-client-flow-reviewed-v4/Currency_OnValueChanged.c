/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b2659c, Ghidra VA 02c2659c. */

void Currency_OnValueChanged(long param_1)

{
  undefined *puVar1;
  long lVar2;
  undefined8 uVar3;
  long *plVar4;
  
  puVar1 = PTR_DAT_05e5d338;
  if ((bRam000000000625bfad & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5d338);
    bRam000000000625bfad = 1;
  }
  lVar2 = *(long *)puVar1;
  plVar4 = *(long **)(param_1 + 0x20);
  if (*(int *)(lVar2 + 0xe4) == 0) {
    func_0x029f5bd0();
    lVar2 = *(long *)puVar1;
  }
  uVar3 = InfVal_InfVal_change_0x60000a8(*(long *)(lVar2 + 0xb8) + 0x30,0);
  if (plVar4 != (long *)0x0) {
    (**(code **)(*plVar4 + 0x558))(plVar4,uVar3,*(undefined8 *)(*plVar4 + 0x560));
    plVar4 = *(long **)(param_1 + 0x28);
    uVar3 = ObscuredInt_ToString_0x600041a(*(long *)(*(long *)puVar1 + 0xb8) + 0x90,0);
    if (plVar4 != (long *)0x0) {
                    /* WARNING: Could not recover jumptable at 0x02c2664c. Too many branches */
                    /* WARNING: Treating indirect jump as call */
      (**(code **)(*plVar4 + 0x558))(plVar4,uVar3,*(undefined8 *)(*plVar4 + 0x560));
      return;
    }
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

