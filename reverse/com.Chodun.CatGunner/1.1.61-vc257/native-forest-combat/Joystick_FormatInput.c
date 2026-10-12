/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2a87b30, Ghidra VA 02b87b30. */

void Joystick_FormatInput(long param_1)

{
  if (*(int *)(param_1 + 0x28) == 2) {
    *(undefined4 *)(param_1 + 0x58) = 0;
  }
  else if (*(int *)(param_1 + 0x28) == 1) {
    *(undefined4 *)(param_1 + 0x5c) = 0;
    return;
  }
  return;
}

