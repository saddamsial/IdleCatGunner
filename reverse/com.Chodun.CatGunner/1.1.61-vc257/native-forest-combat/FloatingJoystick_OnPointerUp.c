/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2a88060, Ghidra VA 02b88060. */

void FloatingJoystick_OnPointerUp(long param_1)

{
  long lVar1;
  
  if ((*(long *)(param_1 + 0x30) != 0) &&
     (lVar1 = Component_get_gameObject_0x6000c83(*(long *)(param_1 + 0x30),0), lVar1 != 0)) {
    GameObject_SetActive_0x6000cfe(lVar1,0,0);
    Joystick_OnPointerUp(param_1);
    return;
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

