/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2a87190, Ghidra VA 02b87190. */

void Joystick_get_Vertical(long param_1)

{
  if (*(char *)(param_1 + 0x2d) != '\0') {
    Joystick_SnapFloat(*(undefined4 *)(param_1 + 0x5c),param_1,2);
    return;
  }
  return;
}

