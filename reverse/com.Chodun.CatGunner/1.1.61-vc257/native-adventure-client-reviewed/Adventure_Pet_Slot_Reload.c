/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b33b78, Ghidra VA 02c33b78. */

void Adventure_Pet_Slot_Reload(long param_1,int param_2,undefined4 param_3)

{
  *(int *)(param_1 + 0x24) = param_2;
  if (*(long *)(param_1 + 0x28) != 0) {
    GameObject_SetActive_0x6000cfe(*(long *)(param_1 + 0x28),param_2 == 0,0);
    if (*(long *)(param_1 + 0x30) != 0) {
      GameObject_SetActive_0x6000cfe(*(long *)(param_1 + 0x30),param_2 == 1,0);
      if (*(long *)(param_1 + 0x38) != 0) {
        GameObject_SetActive_0x6000cfe(*(long *)(param_1 + 0x38),param_2 == 2,0);
        if (param_2 != 0) {
          return;
        }
        if (*(long *)(param_1 + 0x40) != 0) {
          Pet_Item_Demo_Reload_0x6000c3e(*(long *)(param_1 + 0x40),param_3,0);
          return;
        }
      }
    }
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

