/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b3a370, Ghidra VA 02c3a370. */

void Cat_ApplyHandZ(undefined4 param_1,undefined1 param_2 [16],long param_3)

{
  undefined4 uVar1;
  
  if (param_3 != 0) {
    uVar1 = Transform_get_localEulerAngles_0x6000f53(param_3,0);
    Transform_set_localEulerAngles_0x6000f54(uVar1,param_2,param_1,param_3,0);
    return;
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

