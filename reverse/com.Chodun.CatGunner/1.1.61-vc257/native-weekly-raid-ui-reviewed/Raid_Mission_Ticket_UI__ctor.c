/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b555cc, Ghidra VA 02c555cc. */

void Raid_Mission_Ticket_UI__ctor(long param_1)

{
  undefined *puVar1;
  
  puVar1 = PTR_DAT_05e63620;
  if ((bRam000000000625c18a & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e63620);
    bRam000000000625c18a = 1;
  }
  *(undefined8 *)(param_1 + 0x38) = *(undefined8 *)puVar1;
  Managed_WriteBarrier();
  MonoBehaviour__ctor_0x6000d5a(param_1,0);
  return;
}

