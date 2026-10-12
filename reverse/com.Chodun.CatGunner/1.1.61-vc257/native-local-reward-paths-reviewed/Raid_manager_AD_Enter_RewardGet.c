/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b57c14, Ghidra VA 02c57c14. */

void Raid_manager_AD_Enter_RewardGet(long param_1)

{
  if (*(char *)(param_1 + 0x74) != '\0') {
    return;
  }
  *(undefined1 *)(param_1 + 0x74) = 1;
  Raid_manager_Game_Enter_0x6000916(param_1,2);
  return;
}

