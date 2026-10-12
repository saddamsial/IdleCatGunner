/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2ba3414, Ghidra VA 02ca3414. */

void StepUp__Popup_Open(long param_1,undefined8 param_2)

{
  *(undefined8 *)(param_1 + 0x48) = param_2;
  Managed_WriteBarrier((undefined8 *)(param_1 + 0x48));
  if (*(long *)(param_1 + 0x28) != 0) {
    StepUp_popup__Reload();
    return;
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

