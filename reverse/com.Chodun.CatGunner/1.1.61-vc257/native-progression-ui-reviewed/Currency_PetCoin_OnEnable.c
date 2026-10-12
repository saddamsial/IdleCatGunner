/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b2685c, Ghidra VA 02c2685c. */

void Currency_PetCoin_OnEnable(long param_1)

{
  undefined *puVar1;
  undefined *puVar2;
  undefined *puVar3;
  undefined8 uVar4;
  long *plVar5;
  
  puVar3 = PTR_DAT_05e62d20;
  puVar2 = PTR_DAT_05e5d338;
  puVar1 = PTR_DAT_05e59288;
  if ((bRam000000000625bfae & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e59288);
    func_0x029f5a50(PTR_DAT_05e62d20);
    func_0x029f5a50(PTR_DAT_05e5d338);
    bRam000000000625bfae = 1;
  }
  uVar4 = func_0x029f5cec(*(undefined8 *)puVar1);
  Action__ctor_0x60003a5(uVar4,param_1,*(undefined8 *)puVar3,0);
  if (*(int *)(*(long *)puVar2 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  Gamemanager_add_OnPetCoinChanged_0x6000050(uVar4,0);
  plVar5 = *(long **)(param_1 + 0x28);
  uVar4 = Int32_ToString_0x600080e(*(long *)(*(long *)puVar2 + 0xb8) + 0xc0,0);
  if (plVar5 != (long *)0x0) {
                    /* WARNING: Could not recover jumptable at 0x02c26930. Too many branches */
                    /* WARNING: Treating indirect jump as call */
    (**(code **)(*plVar5 + 0x558))(plVar5,uVar4,*(undefined8 *)(*plVar5 + 0x560));
    return;
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

