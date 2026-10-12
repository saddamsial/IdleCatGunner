/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b269dc, Ghidra VA 02c269dc. */

void Currency_PetCoin_OnValueChanged(long param_1)

{
  undefined *puVar1;
  long lVar2;
  undefined8 uVar3;
  ulong uVar4;
  long *plVar5;
  
  puVar1 = PTR_DAT_05e5d338;
  if ((bRam000000000625bfb0 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5d338);
    func_0x029f5a50(PTR_DAT_05e591c0);
    bRam000000000625bfb0 = 1;
  }
  lVar2 = *(long *)puVar1;
  plVar5 = *(long **)(param_1 + 0x28);
  if (*(int *)(lVar2 + 0xe4) == 0) {
    func_0x029f5bd0();
    lVar2 = *(long *)puVar1;
  }
  uVar3 = Int32_ToString_0x600080e(*(long *)(lVar2 + 0xb8) + 0xc0,0);
  puVar1 = PTR_DAT_05e591c0;
  if (plVar5 != (long *)0x0) {
    (**(code **)(*plVar5 + 0x558))(plVar5,uVar3,*(undefined8 *)(*plVar5 + 0x560));
    uVar3 = *(undefined8 *)(param_1 + 0x20);
    if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
      func_0x029f5bd0();
    }
    uVar4 = Object_op_Inequality_0x6000ded(uVar3,0,0);
    if ((uVar4 & 1) == 0) {
      return;
    }
    if (*(long *)(param_1 + 0x20) != 0) {
      Bounce_Bounce_Start_0x600023c(*(long *)(param_1 + 0x20),0);
      return;
    }
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

