/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x455311c, Ghidra VA 0465311c. */

undefined4 Configuration_get_displayOptions(void)

{
  undefined *puVar1;
  long lVar2;
  
  puVar1 = PTR_DAT_05e718d8;
  if ((bRam0000000006260a5f & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e718d8);
    bRam0000000006260a5f = 1;
  }
  if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  lVar2 = Configuration_get_instance_0x600010a();
  if (lVar2 != 0) {
    return *(undefined4 *)(lVar2 + 0x30);
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

