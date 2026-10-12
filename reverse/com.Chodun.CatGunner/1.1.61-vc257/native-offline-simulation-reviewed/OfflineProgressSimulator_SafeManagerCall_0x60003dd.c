/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b08a04, Ghidra VA 02c08a04. */

undefined4 OfflineProgressSimulator_SafeManagerCall_0x60003dd(long param_1)

{
  undefined4 uVar1;
  
  if (param_1 != 0) {
    uVar1 = (**(code **)(param_1 + 0x18))
                      (*(undefined8 *)(param_1 + 0x40),*(undefined8 *)(param_1 + 0x28));
    return uVar1;
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

