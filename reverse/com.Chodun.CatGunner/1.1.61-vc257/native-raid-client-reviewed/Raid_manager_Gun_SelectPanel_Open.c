/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b58694, Ghidra VA 02c58694. */

void Raid_manager_Gun_SelectPanel_Open(long param_1,undefined4 param_2)

{
  *(undefined4 *)(param_1 + 0x98) = param_2;
  if (*(long *)(param_1 + 0x38) != 0) {
    Raid_GunSelect_Panel_Panel_Open_0x6000959(*(long *)(param_1 + 0x38),0);
    return;
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

