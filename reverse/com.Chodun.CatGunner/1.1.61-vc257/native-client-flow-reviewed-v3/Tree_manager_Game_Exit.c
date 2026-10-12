/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2ba8b2c, Ghidra VA 02ca8b2c. */

void Tree_manager_Game_Exit(long param_1)

{
  if (*(long *)(param_1 + 0xb0) != 0) {
    GameObject_SetActive_0x6000cfe(*(long *)(param_1 + 0xb0),0,0);
    if (*(long *)(param_1 + 0xc0) != 0) {
      MonoBehaviour_StopCoroutine_0x6000d45(param_1,*(long *)(param_1 + 0xc0),0);
    }
    if (*(long *)(param_1 + 200) != 0) {
      MonoBehaviour_StopCoroutine_0x6000d45(param_1,*(long *)(param_1 + 200),0);
    }
    if (*(long *)(param_1 + 0x58) != 0) {
      GameObject_SetActive_0x6000cfe(*(long *)(param_1 + 0x58),0,0);
      if (*(long *)(param_1 + 0x60) != 0) {
        GameObject_SetActive_0x6000cfe(*(long *)(param_1 + 0x60),0,0);
        if (*(long *)(param_1 + 0x68) != 0) {
          GameObject_SetActive_0x6000cfe(*(long *)(param_1 + 0x68),0,0);
          if (*(long *)(param_1 + 0xa8) != 0) {
            GameObject_SetActive_0x6000cfe(*(long *)(param_1 + 0xa8),0,0);
            return;
          }
        }
      }
    }
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

