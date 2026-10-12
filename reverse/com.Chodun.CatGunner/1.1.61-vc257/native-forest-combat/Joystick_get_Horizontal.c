/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2a871a8, Ghidra VA 02b871a8. */

void Joystick_get_Horizontal(long param_1)

{
  if (*(char *)(param_1 + 0x2c) != '\0') {
    Joystick_SnapFloat(*(undefined4 *)(param_1 + 0x58),param_1,1);
    return;
  }
  return;
}

