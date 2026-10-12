/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2a9bd70, Ghidra VA 02b9bd70. */

void Bounce_Custom_OnEnable(long param_1)

{
  long lVar1;
  
  *(undefined1 *)(param_1 + 0x3c) = 0;
  lVar1 = Component_get_transform_0x6000c82(param_1,0);
  if (lVar1 != 0) {
    Transform_set_localScale_0x6000f5e
              (*(undefined4 *)(param_1 + 0x40),*(undefined4 *)(param_1 + 0x44),
               *(undefined4 *)(param_1 + 0x48),lVar1,0);
    return;
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

