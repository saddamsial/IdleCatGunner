/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2badce4, Ghidra VA 02cadce4. */

void Tree_manager_Reload_Map(long param_1)

{
  undefined *puVar1;
  long lVar2;
  long lVar3;
  
  puVar1 = PTR_DAT_05e5d338;
  if ((bRam000000000625c525 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5d338);
    bRam000000000625c525 = 1;
  }
  lVar2 = *(long *)puVar1;
  if (*(int *)(lVar2 + 0xe4) == 0) {
    func_0x029f5bd0();
    lVar2 = *(long *)puVar1;
  }
  lVar3 = *(long *)(param_1 + 0xc0);
  **(undefined1 **)(lVar2 + 0xb8) = 0;
  if (lVar3 != 0) {
    MonoBehaviour_StopCoroutine_0x6000d45(param_1,lVar3,0);
  }
  Tree_manager_Game_Start(param_1);
  if (*(long *)(param_1 + 0x58) != 0) {
    GameObject_SetActive_0x6000cfe(*(long *)(param_1 + 0x58),0,0);
    if (*(long *)(param_1 + 0x60) != 0) {
      GameObject_SetActive_0x6000cfe(*(long *)(param_1 + 0x60),0,0);
      return;
    }
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

