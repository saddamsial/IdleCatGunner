/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b17950, Ghidra VA 02c17950. */

void Destroy_OnDisable(long param_1)

{
  long lVar1;
  
  if (*(long *)(param_1 + 0x28) == 0) {
    return;
  }
  MonoBehaviour_StopCoroutine_0x6000d45(param_1,*(long *)(param_1 + 0x28),0);
  lVar1 = Component_get_gameObject_0x6000c83(param_1,0);
  if (lVar1 != 0) {
    GameObject_SetActive_0x6000cfe(lVar1,0,0);
    return;
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

