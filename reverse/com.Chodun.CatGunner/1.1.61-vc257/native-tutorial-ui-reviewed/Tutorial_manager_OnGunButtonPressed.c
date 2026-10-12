/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2bafb9c, Ghidra VA 02cafb9c. */

void Tutorial_manager_OnGunButtonPressed(long param_1)

{
  if (*(int *)(param_1 + 0x60) != 2) {
    return;
  }
  if (*(long *)(param_1 + 0x30) != 0) {
    GameObject_SetActive_0x6000cfe(*(long *)(param_1 + 0x30),0,0);
    Tutorial_manager_SetStep(param_1,3);
    return;
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

