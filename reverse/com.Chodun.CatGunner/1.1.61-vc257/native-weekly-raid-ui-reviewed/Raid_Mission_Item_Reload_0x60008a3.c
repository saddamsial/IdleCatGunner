/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b529f8, Ghidra VA 02c529f8. */

void Raid_Mission_Item_Reload_0x60008a3(long param_1,undefined4 param_2)

{
  *(undefined4 *)(param_1 + 0x60) = param_2;
  Raid_Mission_Item_Reload_0x60008a4();
  return;
}

