/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b52888, Ghidra VA 02c52888. */

void Raid_Mission_HUD_onClick_Open(void)

{
  undefined *puVar1;
  undefined *puVar2;
  ulong uVar3;
  undefined8 uVar4;
  
  puVar2 = PTR_DAT_05e5e068;
  puVar1 = PTR_DAT_05e591c0;
  if ((bRam000000000625c168 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e591c0);
    func_0x029f5a50(PTR_DAT_05e5e068);
    bRam000000000625c168 = 1;
  }
  uVar4 = **(undefined8 **)(*(long *)puVar2 + 0xb8);
  if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  uVar3 = Object_op_Equality_0x6000dec(uVar4,0,0);
  if ((uVar3 & 1) != 0) {
    return;
  }
  if (**(long **)(*(long *)puVar2 + 0xb8) != 0) {
    Raid_Mission_manager_Open_Popup();
    return;
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

