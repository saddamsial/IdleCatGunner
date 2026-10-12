/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b69420, Ghidra VA 02c69420. */

void Gun_manager_Balance_Reload(undefined8 param_1)

{
  undefined8 uVar1;
  
  uVar1 = Gun_manager_Request_Sheet_0x6000a60();
  MonoBehaviour_StartCoroutine_0x6000d43(param_1,uVar1,0);
  return;
}

