/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2a9c18c, Ghidra VA 02b9c18c. */

void Bounce_Position_OnEnable(long param_1)

{
  long lVar1;
  
  *(undefined1 *)(param_1 + 0x38) = 0;
  lVar1 = Component_get_transform_0x6000c82(param_1,0);
  if (lVar1 != 0) {
    Transform_set_localPosition_0x6000f50
              (*(undefined4 *)(param_1 + 0x3c),*(undefined4 *)(param_1 + 0x40),
               *(undefined4 *)(param_1 + 0x44),lVar1,0);
    return;
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

