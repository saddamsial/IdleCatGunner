/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b273c4, Ghidra VA 02c273c4. */

void OnOff_Off(long param_1)

{
  if (*(long *)(param_1 + 0x20) != 0) {
    GameObject_SetActive_0x6000cfe(*(long *)(param_1 + 0x20),0,0);
    if (*(long *)(param_1 + 0x28) != 0) {
      GameObject_SetActive_0x6000cfe(*(long *)(param_1 + 0x28),1,0);
      return;
    }
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

