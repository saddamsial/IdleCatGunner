/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2baf9a8, Ghidra VA 02caf9a8. */

void Tutorial_manager_Enter_GunEquip(undefined8 param_1)

{
  undefined8 uVar1;
  
  uVar1 = Tutorial_manager_SetupGunEquipArrow();
  MonoBehaviour_StartCoroutine_0x6000d43(param_1,uVar1,0);
  uVar1 = Tutorial_manager_CheckGunEquipped(param_1);
  MonoBehaviour_StartCoroutine_0x6000d43(param_1,uVar1,0);
  return;
}

