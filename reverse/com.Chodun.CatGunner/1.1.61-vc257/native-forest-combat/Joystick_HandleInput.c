/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2a87b54, Ghidra VA 02b87b54. */

void Joystick_HandleInput(float param_1,undefined4 param_2,undefined4 param_3,long param_4)

{
  if (param_1 <= *(float *)(param_4 + 0x24)) {
    if (cRam000000000625b271 == '\0') {
      func_0x029f5a50(PTR_DAT_05e59608);
      cRam000000000625b271 = '\x01';
    }
    param_2 = **(undefined4 **)(*(long *)PTR_DAT_05e59608 + 0xb8);
    param_3 = (*(undefined4 **)(*(long *)PTR_DAT_05e59608 + 0xb8))[1];
  }
  else if (param_1 <= 1.0) {
    return;
  }
  *(undefined4 *)(param_4 + 0x58) = param_2;
  *(undefined4 *)(param_4 + 0x5c) = param_3;
  return;
}

