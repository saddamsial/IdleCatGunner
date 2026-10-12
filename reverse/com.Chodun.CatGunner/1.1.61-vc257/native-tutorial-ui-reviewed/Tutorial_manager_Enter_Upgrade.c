/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2baf810, Ghidra VA 02caf810. */

void Tutorial_manager_Enter_Upgrade(long param_1)

{
  undefined8 uVar1;
  long lVar2;
  
  if (*(long *)(param_1 + 0x28) != 0) {
    GameObject_SetActive_0x6000cfe(*(long *)(param_1 + 0x28),0,0);
    lVar2 = *(long *)(param_1 + 0x68);
    if (lVar2 != 0) {
      MonoBehaviour_StopCoroutine_0x6000d46(param_1,lVar2,0);
    }
    uVar1 = Tutorial_manager_MoneyCheckLoop(param_1);
    uVar1 = MonoBehaviour_StartCoroutine_0x6000d43(param_1,uVar1,0);
    *(undefined8 *)(param_1 + 0x68) = uVar1;
    Managed_WriteBarrier((long *)(param_1 + 0x68));
    return;
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

