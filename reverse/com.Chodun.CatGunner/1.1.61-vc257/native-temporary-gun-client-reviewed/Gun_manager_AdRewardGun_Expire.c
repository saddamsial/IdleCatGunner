/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b6a9e4, Ghidra VA 02c6a9e4. */

void Gun_manager_AdRewardGun_Expire(long param_1)

{
  if (*(int *)(param_1 + 0xc0) != -1) {
    Gun_manager_AD_Gun_Clear(param_1,1);
    Gun_manager_ReloadGunUI(param_1);
    return;
  }
  return;
}

