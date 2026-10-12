/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b226a0, Ghidra VA 02c226a0. */

void Sound_manager_BGM_Change_SpeedRun(long param_1)

{
  undefined *puVar1;
  undefined8 uVar2;
  ulong uVar3;
  long lVar4;
  undefined8 uVar5;
  long lVar6;
  
  if ((bRam000000000625bf71 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e591c0);
    bRam000000000625bf71 = 1;
  }
  puVar1 = PTR_DAT_05e591c0;
  if (*(long *)(param_1 + 0x28) != 0) {
    uVar2 = AudioSource_get_clip_0x6000021(*(long *)(param_1 + 0x28),0);
    uVar5 = *(undefined8 *)(param_1 + 0x60);
    if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
      func_0x029f5bd0(*(long *)puVar1);
    }
    uVar3 = Object_op_Inequality_0x6000ded(uVar2,uVar5,0);
    if ((uVar3 & 1) == 0) {
      return;
    }
    if (*(long *)(param_1 + 0x28) != 0) {
      AudioSource_set_clip_0x6000022(*(long *)(param_1 + 0x28),*(undefined8 *)(param_1 + 0x60),0);
      lVar4 = *(long *)(param_1 + 0x28);
      if (lVar4 != 0) {
        if ((bRam000000000626a662 & 1) == 0) {
          func_0x029f5a50(PTR_DAT_05ed5860);
          func_0x029f5a50(PTR_DAT_05e67db8);
          bRam000000000626a662 = 1;
        }
        if (lVar4 != 0) {
          lVar6 = *(long *)(lVar4 + 0x10);
          if (lVar6 == 0) {
            func_0x057f530c(lVar4,*(undefined8 *)PTR_DAT_05e67db8,0);
          }
          if (pcRam000000000626a680 == (code *)0x0) {
            pcRam000000000626a680 = (code *)func_0x029f5a0c(&UNK_011a494d);
          }
                    /* WARNING: Could not recover jumptable at 0x05788574. Too many branches */
                    /* WARNING: Treating indirect jump as call */
          (*pcRam000000000626a680)(lVar6,0);
          return;
        }
        func_0x057f530c(0,*(undefined8 *)PTR_DAT_05e67db8,0);
                    /* WARNING: Subroutine does not return */
        Throw_NullReference_Wrapper();
      }
    }
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

