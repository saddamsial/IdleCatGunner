/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b30320, Ghidra VA 02c30320. */

void Relic_DrawMode_Btn_Reload(long param_1,uint param_2)

{
  if (*(long *)(param_1 + 0x30) != 0) {
    GameObject_SetActive_0x6000cfe(*(long *)(param_1 + 0x30),param_2 & 1,0);
    if (*(long *)(param_1 + 0x38) != 0) {
      GameObject_SetActive_0x6000cfe(*(long *)(param_1 + 0x38),(param_2 ^ 0xffffffff) & 1,0);
      return;
    }
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

