/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b5454c, Ghidra VA 02c5454c. */

undefined8 Raid_Mission_manager_Info_return(long param_1,uint param_2)

{
  undefined8 uVar1;
  long lVar2;
  
  if (param_2 < 8) {
    lVar2 = *(long *)(param_1 + 0x20);
    if (lVar2 == 0) {
                    /* WARNING: Subroutine does not return */
      Throw_NullReference_Wrapper();
    }
    if (*(uint *)(lVar2 + 0x18) <= param_2) {
                    /* WARNING: Subroutine does not return */
      Throw_Index_Wrapper();
    }
    uVar1 = *(undefined8 *)(lVar2 + (ulong)param_2 * 8 + 0x20);
  }
  else {
    uVar1 = 0;
  }
  return uVar1;
}

