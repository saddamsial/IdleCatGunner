/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2a87bc0, Ghidra VA 02b87bc0. */

void Joystick_OnPointerUp(long param_1)

{
  long lVar1;
  undefined4 *puVar2;
  
  if (cRam000000000625b271 == '\0') {
    func_0x029f5a50(PTR_DAT_05e59608);
    cRam000000000625b271 = '\x01';
  }
  lVar1 = *(long *)PTR_DAT_05e59608;
  *(undefined8 *)(param_1 + 0x58) = **(undefined8 **)(lVar1 + 0xb8);
  if (*(long *)(param_1 + 0x38) != 0) {
    puVar2 = *(undefined4 **)(lVar1 + 0xb8);
    RectTransform_set_anchoredPosition_0x6000f2c(*puVar2,puVar2[1],*(long *)(param_1 + 0x38),0);
    return;
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

