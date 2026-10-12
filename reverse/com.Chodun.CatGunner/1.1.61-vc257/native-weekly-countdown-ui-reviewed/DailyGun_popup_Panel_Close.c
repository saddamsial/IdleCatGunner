/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b8c4f0, Ghidra VA 02c8c4f0. */

void DailyGun_popup_Panel_Close(long param_1)

{
  long lVar1;
  
  lVar1 = *(long *)(param_1 + 0x30);
  if (lVar1 != 0) {
    MonoBehaviour_StopCoroutine_0x6000d46(param_1,lVar1,0);
    *(undefined8 *)(param_1 + 0x30) = 0;
    Managed_WriteBarrier((long *)(param_1 + 0x30),0);
  }
  lVar1 = Component_get_gameObject_0x6000c83(param_1,0);
  if (lVar1 != 0) {
    GameObject_SetActive_0x6000cfe(lVar1,0,0);
    return;
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

