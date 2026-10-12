/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2ba7550, Ghidra VA 02ca7550. */

void Skin_manager_Start(undefined8 param_1)

{
  undefined *puVar1;
  long lVar2;
  
  puVar1 = PTR_DAT_05e5d5b0;
  if ((bRam000000000625c4e2 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5d5b0);
    bRam000000000625c4e2 = 1;
  }
  Skin_manager_UI_First_Reload(param_1);
  Skin_manager_Skin_Value_Reload(param_1);
  lVar2 = *(long *)(*(long *)(*(long *)puVar1 + 0xb8) + 8);
  if (lVar2 != 0) {
    Cat_manager_Skin_Reload(lVar2,0);
    return;
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

