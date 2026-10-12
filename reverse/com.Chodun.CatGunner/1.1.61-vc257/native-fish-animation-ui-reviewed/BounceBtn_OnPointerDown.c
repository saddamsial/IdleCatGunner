/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2a9b410, Ghidra VA 02b9b410. */

void BounceBtn_OnPointerDown(long param_1)

{
  long lVar1;
  ulong uVar2;
  undefined8 uVar3;
  
  if (*(char *)(param_1 + 0x30) == '\0') {
    *(undefined8 *)(param_1 + 0x20) = 0;
    *(undefined1 *)(param_1 + 0x30) = 1;
    lVar1 = Component_get_gameObject_0x6000c83(param_1,0);
    if (lVar1 == 0) {
                    /* WARNING: Subroutine does not return */
      Throw_NullReference_Wrapper();
    }
    uVar2 = GameObject_get_activeInHierarchy_0x6000d00(lVar1,0);
    if ((uVar2 & 1) != 0) {
      uVar3 = BounceBtn_Btn_Down_Coroutine(param_1);
      MonoBehaviour_StartCoroutine_0x6000d43(param_1,uVar3,0);
      return;
    }
  }
  return;
}

