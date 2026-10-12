/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x293e6f4, Ghidra VA 02a3e6f4. */

void Throw_Index_Raise(void)

{
  undefined8 uVar1;
  
  uVar1 = func_0x02a3e704();
                    /* WARNING: Subroutine does not return */
  Managed_Exception_CxaThrow(uVar1,0);
}

