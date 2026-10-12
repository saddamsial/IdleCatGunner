/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b30850, Ghidra VA 02c30850. */

void Relic_Draw_Panel_Arrow_Reload(long param_1,ulong param_2)

{
  long lVar1;
  
  if (*(char *)(param_1 + 0x78) == '\0') {
    lVar1 = *(long *)(param_1 + 0x48);
    if (*(int *)(param_1 + 0x74) < 2) goto LAB_02c30878;
    if (lVar1 == 0) goto LAB_02c308cc;
    GameObject_SetActive_0x6000cfe(lVar1,0 < *(int *)(param_1 + 0x70),0);
    param_2 = (ulong)(*(int *)(param_1 + 0x70) < *(int *)(param_1 + 0x74) + -1);
  }
  else {
    lVar1 = *(long *)(param_1 + 0x48);
LAB_02c30878:
    if (lVar1 == 0) goto LAB_02c308cc;
    GameObject_SetActive_0x6000cfe(lVar1,0,0);
    param_2 = 0;
  }
  if (*(long *)(param_1 + 0x50) != 0) {
    GameObject_SetActive_0x6000cfe(*(long *)(param_1 + 0x50),param_2,0);
    return;
  }
LAB_02c308cc:
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper(0,param_2);
}

