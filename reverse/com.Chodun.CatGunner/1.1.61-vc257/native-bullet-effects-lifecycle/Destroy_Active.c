/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b17820, Ghidra VA 02c17820. */

void Destroy_Active(long param_1)

{
  long lVar1;
  undefined8 uVar2;
  
  lVar1 = Component_get_gameObject_0x6000c83(param_1,0);
  if (lVar1 != 0) {
    GameObject_SetActive_0x6000cfe(lVar1,1,0);
    lVar1 = *(long *)(param_1 + 0x28);
    if (lVar1 != 0) {
      MonoBehaviour_StopCoroutine_0x6000d45(param_1,lVar1,0);
    }
    uVar2 = Destroy_Disable(param_1);
    *(undefined8 *)(param_1 + 0x28) = uVar2;
    func_0x029f59f4((long *)(param_1 + 0x28),uVar2);
    MonoBehaviour_StartCoroutine_0x6000d43(param_1,*(undefined8 *)(param_1 + 0x28),0);
    return;
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

