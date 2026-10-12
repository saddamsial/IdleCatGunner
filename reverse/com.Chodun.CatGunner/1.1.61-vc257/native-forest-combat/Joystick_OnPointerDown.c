/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2a87878, Ghidra VA 02b87878. */

void Joystick_OnPointerDown(void)

{
  Joystick_OnDrag();
  return;
}

