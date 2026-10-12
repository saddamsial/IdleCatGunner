/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b2029c, Ghidra VA 02c2029c. */

void Sound_manager_ApplyBGMMute(long param_1,ulong param_2)

{
  undefined *puVar1;
  ulong uVar2;
  long lVar3;
  long lVar4;
  undefined8 uVar5;
  undefined4 uVar6;
  
  puVar1 = PTR_DAT_05e591c0;
  if ((bRam000000000625bf6f & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e591c0);
    bRam000000000625bf6f = 1;
  }
  uVar5 = *(undefined8 *)(param_1 + 0x28);
  if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  uVar2 = Object_op_Equality_0x6000dec(uVar5,0,0);
  if ((uVar2 & 1) != 0) {
    return;
  }
  lVar3 = *(long *)(param_1 + 0x28);
  if (lVar3 == 0) {
                    /* WARNING: Subroutine does not return */
    Throw_NullReference_Wrapper();
  }
  uVar6 = 0;
  if ((param_2 & 1) == 0) {
    uVar6 = 0x3f800000;
  }
  if ((bRam000000000626a665 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05ed5860,0);
    bRam000000000626a665 = 1;
  }
  if (lVar3 != 0) {
    lVar4 = *(long *)(lVar3 + 0x10);
    if (lVar4 == 0) {
      func_0x057f539c(lVar3,0);
    }
    if (pcRam000000000626a698 == (code *)0x0) {
      pcRam000000000626a698 = (code *)func_0x029f5a0c(&UNK_0118bd7e);
    }
                    /* WARNING: Could not recover jumptable at 0x0578888c. Too many branches */
                    /* WARNING: Treating indirect jump as call */
    (*pcRam000000000626a698)(uVar6,lVar4);
    return;
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

