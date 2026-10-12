/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x293e6a8, Ghidra VA 02a3e6a8. */

void Throw_NullReference_Create(void)

{
  undefined8 uStack_20;
  undefined8 uStack_18;
  
  uStack_18 = 0;
  uStack_20 = 0;
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Raise(&uStack_20);
}

