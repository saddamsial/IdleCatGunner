/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b6e94c, Ghidra VA 02c6e94c. */

void StarUpgrade_popup_OnEnable(long param_1)

{
  undefined *puVar1;
  undefined *puVar2;
  undefined *puVar3;
  undefined8 uVar4;
  
  puVar3 = PTR_DAT_05e63b48;
  puVar2 = PTR_DAT_05e5d338;
  puVar1 = PTR_DAT_05e59288;
  if ((bRam000000000625c2b4 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e59288);
    func_0x029f5a50(PTR_DAT_05e5d338);
    func_0x029f5a50(PTR_DAT_05e63b48);
    bRam000000000625c2b4 = 1;
  }
  uVar4 = func_0x029f5cec(*(undefined8 *)puVar1);
  Action__ctor_0x60003a5(uVar4,param_1,*(undefined8 *)puVar3,0);
  if (*(int *)(*(long *)puVar2 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  Gamemanager_add_OnStarGemChanged_0x6000052(uVar4,0);
  if (*(long *)(param_1 + 0x80) != 0) {
    ParticleImage_Clear_0x60000d9(*(long *)(param_1 + 0x80),0);
    return;
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

