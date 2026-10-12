/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2a87fc0, Ghidra VA 02b87fc0. */

void FloatingJoystick_Start(long param_1)

{
  long lVar1;
  
  Joystick_Start();
  if ((*(long *)(param_1 + 0x30) != 0) &&
     (lVar1 = Component_get_gameObject_0x6000c83(*(long *)(param_1 + 0x30),0), lVar1 != 0)) {
    GameObject_SetActive_0x6000cfe(lVar1,0,0);
    return;
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

