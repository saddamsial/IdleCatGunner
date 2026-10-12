/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b6a994, Ghidra VA 02c6a994. */

void Gun_manager_AdRewardGun_Acquire(long param_1)

{
  undefined4 uVar1;
  
  if (*(int *)(param_1 + 0xc0) != -1) {
    uVar1 = *(undefined4 *)(param_1 + 0xc4);
    *(undefined8 *)(param_1 + 200) = 0;
    *(undefined8 *)(param_1 + 0xc0) = 0xffffffffffffffff;
    Gun_manager_NewGun_UI_ForceShow(param_1,uVar1);
    Gun_manager_OnWeaponAcquired(param_1,uVar1);
    Gun_manager_ReloadGunUI(param_1);
    return;
  }
  return;
}

