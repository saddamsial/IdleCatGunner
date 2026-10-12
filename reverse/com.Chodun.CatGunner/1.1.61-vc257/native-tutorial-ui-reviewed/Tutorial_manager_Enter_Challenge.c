/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2baf87c, Ghidra VA 02caf87c. */

void Tutorial_manager_Enter_Challenge(long param_1)

{
  undefined8 uVar1;
  
  if (*(long *)(param_1 + 0x48) != 0) {
    GameObject_SetActive_0x6000cfe(*(long *)(param_1 + 0x48),0,0);
    uVar1 = Tutorial_manager_CheckSpeedRunClear(param_1);
    MonoBehaviour_StartCoroutine_0x6000d43(param_1,uVar1,0);
    return;
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

