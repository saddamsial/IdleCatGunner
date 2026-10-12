/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2a9af1c, Ghidra VA 02b9af1c. */

void Bounce_OnEnable(long param_1)

{
  long lVar1;
  
  *(undefined1 *)(param_1 + 0x34) = 0;
  lVar1 = Component_get_transform_0x6000c82(param_1,0);
  if (lVar1 != 0) {
    Transform_set_localScale_0x6000f5e
              (*(undefined4 *)(param_1 + 0x38),*(undefined4 *)(param_1 + 0x3c),
               *(undefined4 *)(param_1 + 0x40),lVar1,0);
    return;
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

