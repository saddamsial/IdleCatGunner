/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2a87424, Ghidra VA 02b87424. */

undefined4 Joystick_get_Direction(long param_1)

{
  undefined4 uVar1;
  
  uVar1 = *(undefined4 *)(param_1 + 0x58);
  if (*(char *)(param_1 + 0x2c) != '\0') {
    uVar1 = Joystick_SnapFloat(uVar1,param_1,1);
  }
  if (*(char *)(param_1 + 0x2d) != '\0') {
    Joystick_SnapFloat(*(undefined4 *)(param_1 + 0x5c),param_1,2);
  }
  return uVar1;
}

