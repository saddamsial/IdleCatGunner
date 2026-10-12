/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2a87ff4, Ghidra VA 02b87ff4. */

void FloatingJoystick_OnPointerDown(long param_1,long param_2)

{
  long lVar1;
  
  if (param_2 != 0) {
    lVar1 = *(long *)(param_1 + 0x30);
    Joystick_ScreenPointToAnchoredPosition
              (*(undefined4 *)(param_2 + 0x104),*(undefined4 *)(param_2 + 0x108));
    if (lVar1 != 0) {
      RectTransform_set_anchoredPosition_0x6000f2c(lVar1,0);
      if ((*(long *)(param_1 + 0x30) != 0) &&
         (lVar1 = Component_get_gameObject_0x6000c83(*(long *)(param_1 + 0x30),0), lVar1 != 0)) {
        GameObject_SetActive_0x6000cfe(lVar1,1,0);
        Joystick_OnDrag(param_1,param_2);
        return;
      }
    }
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

