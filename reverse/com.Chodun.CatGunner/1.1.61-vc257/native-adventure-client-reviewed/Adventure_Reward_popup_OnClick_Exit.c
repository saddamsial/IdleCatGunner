/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b36774, Ghidra VA 02c36774. */

void Adventure_Reward_popup_OnClick_Exit(long param_1)

{
  long lVar1;
  
  lVar1 = *(long *)(param_1 + 0x98);
  if (lVar1 != 0) {
    MonoBehaviour_StopCoroutine_0x6000d46(param_1,lVar1,0);
    *(undefined8 *)(param_1 + 0x98) = 0;
    Managed_WriteBarrier((long *)(param_1 + 0x98),0);
  }
  lVar1 = Component_get_gameObject_0x6000c83(param_1,0);
  if (lVar1 != 0) {
    GameObject_SetActive_0x6000cfe(lVar1,0,0);
    return;
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

