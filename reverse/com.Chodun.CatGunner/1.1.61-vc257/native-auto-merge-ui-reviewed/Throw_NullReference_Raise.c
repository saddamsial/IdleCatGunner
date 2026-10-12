/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x293e6bc, Ghidra VA 02a3e6bc. */

void Throw_NullReference_Raise(void)

{
  undefined8 uVar1;
  
  uVar1 = func_0x02a3e6cc();
                    /* WARNING: Subroutine does not return */
  Managed_Exception_CxaThrow(uVar1,0);
}

