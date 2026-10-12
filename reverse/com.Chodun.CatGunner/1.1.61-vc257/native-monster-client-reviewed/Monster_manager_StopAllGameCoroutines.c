/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b4e0f0, Ghidra VA 02c4e0f0. */

void Monster_manager_StopAllGameCoroutines(long param_1)

{
  long lVar1;
  
  lVar1 = *(long *)(param_1 + 0xd8);
  if (lVar1 != 0) {
    MonoBehaviour_StopCoroutine_0x6000d45(param_1,lVar1,0);
    *(undefined8 *)(param_1 + 0xd8) = 0;
    Managed_WriteBarrier((long *)(param_1 + 0xd8),0);
  }
  lVar1 = *(long *)(param_1 + 0xe0);
  if (lVar1 != 0) {
    MonoBehaviour_StopCoroutine_0x6000d45(param_1,lVar1,0);
    *(undefined8 *)(param_1 + 0xe0) = 0;
    Managed_WriteBarrier((long *)(param_1 + 0xe0),0);
  }
  if (*(long *)(param_1 + 0x100) != 0) {
    GameObject_SetActive_0x6000cfe(*(long *)(param_1 + 0x100),0,0);
    return;
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

