/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b53124, Ghidra VA 02c53124. */

void Raid_Mission_Item_onClick_Reward(long param_1)

{
  undefined *puVar1;
  undefined *puVar2;
  ulong uVar3;
  long lVar4;
  undefined8 uVar5;
  
  puVar2 = PTR_DAT_05e5e068;
  puVar1 = PTR_DAT_05e591c0;
  if ((bRam000000000625c16a & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e591c0);
    func_0x029f5a50(PTR_DAT_05e5e068);
    bRam000000000625c16a = 1;
  }
  uVar5 = **(undefined8 **)(*(long *)puVar2 + 0xb8);
  if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  uVar3 = Object_op_Equality_0x6000dec(uVar5,0,0);
  if ((uVar3 & 1) != 0) {
    return;
  }
  lVar4 = **(long **)(*(long *)puVar2 + 0xb8);
  if (lVar4 != 0) {
    Raid_Mission_manager_Reward_Get(lVar4,*(undefined4 *)(param_1 + 0x60));
    return;
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

