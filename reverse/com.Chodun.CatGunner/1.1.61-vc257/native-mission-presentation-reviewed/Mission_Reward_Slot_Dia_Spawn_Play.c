/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b049e8, Ghidra VA 02c049e8. */

void Mission_Reward_Slot_Dia_Spawn_Play(long param_1,int param_2)

{
  undefined *puVar1;
  ulong uVar2;
  long lVar3;
  
  puVar1 = PTR_DAT_05e591c0;
  if ((bRam000000000625be64 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e591c0);
    bRam000000000625be64 = 1;
  }
  lVar3 = 0x28;
  if (param_2 != 0) {
    lVar3 = 0x30;
  }
  lVar3 = *(long *)(param_1 + lVar3);
  if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  uVar2 = Object_op_Inequality_0x6000ded(lVar3,0,0);
  if ((uVar2 & 1) != 0) {
    if (lVar3 != 0) {
      Mission_Reward_Item_Dia_Spawn_Play(lVar3);
      return;
    }
                    /* WARNING: Subroutine does not return */
    Throw_NullReference_Wrapper();
  }
  return;
}

