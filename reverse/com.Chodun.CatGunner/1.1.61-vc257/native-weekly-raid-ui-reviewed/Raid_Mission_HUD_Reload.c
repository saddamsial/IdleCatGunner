/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b52608, Ghidra VA 02c52608. */

void Raid_Mission_HUD_Reload(long param_1)

{
  undefined *puVar1;
  undefined *puVar2;
  uint uVar3;
  ulong uVar4;
  long lVar5;
  long lVar6;
  undefined8 uVar7;
  
  puVar2 = PTR_DAT_05e5e068;
  puVar1 = PTR_DAT_05e591c0;
  if ((bRam000000000625c167 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e591c0);
    func_0x029f5a50(PTR_DAT_05e5e068);
    bRam000000000625c167 = 1;
  }
  lVar6 = **(long **)(*(long *)puVar2 + 0xb8);
  if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  uVar4 = Object_op_Equality_0x6000dec(lVar6,0,0);
  if ((uVar4 & 1) == 0) {
    uVar7 = *(undefined8 *)(param_1 + 0x20);
    if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
      func_0x029f5bd0();
    }
    uVar4 = Object_op_Inequality_0x6000ded(uVar7,0,0);
    if ((uVar4 & 1) != 0) {
      if (lVar6 != 0) {
        lVar5 = *(long *)(param_1 + 0x20);
        uVar3 = Raid_Mission_manager_get_Has_Claimable(lVar6);
        if (lVar5 != 0) {
          GameObject_SetActive_0x6000cfe(lVar5,uVar3 & 1,0);
          return;
        }
      }
                    /* WARNING: Subroutine does not return */
      Throw_NullReference_Wrapper();
    }
  }
  return;
}

