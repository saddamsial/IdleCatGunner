/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b09f58, Ghidra VA 02c09f58. */

void OfflineProgressSimulator_SafeManagerCall_0x60003dc(undefined8 *param_1,long param_2)

{
  undefined8 uStack_80;
  undefined8 uStack_78;
  undefined8 uStack_70;
  undefined8 uStack_68;
  undefined4 uStack_58;
  undefined8 uStack_50;
  undefined8 uStack_48;
  undefined8 uStack_40;
  undefined8 uStack_38;
  
  uStack_58 = 0;
  uStack_48 = 0;
  uStack_50 = 0;
  uStack_38 = 0;
  uStack_40 = 0;
  if (param_2 != 0) {
    (**(code **)(param_2 + 0x18))
              (&uStack_80,*(undefined8 *)(param_2 + 0x40),*(undefined8 *)(param_2 + 0x28));
    param_1[1] = uStack_78;
    *param_1 = uStack_80;
    param_1[3] = uStack_68;
    param_1[2] = uStack_70;
    return;
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

