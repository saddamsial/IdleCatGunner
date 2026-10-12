/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b693b4, Ghidra VA 02c693b4. */

void Gun_manager_AD_Gun_Clear(long param_1,ulong param_2)

{
  uint uVar1;
  int *piVar2;
  long lVar3;
  
  if ((param_2 & 1) != 0) {
    uVar1 = *(uint *)(param_1 + 0xc0);
    if (-1 < (int)uVar1) {
      lVar3 = *(long *)(param_1 + 0x40);
      if (lVar3 == 0) {
                    /* WARNING: Subroutine does not return */
        Throw_NullReference_Wrapper();
      }
      if (((int)uVar1 < *(int *)(lVar3 + 0x18)) &&
         (piVar2 = (int *)(lVar3 + (ulong)uVar1 * 4 + 0x20), *piVar2 == *(int *)(param_1 + 0xc4))) {
        *piVar2 = -1;
        Gun_manager_Owned_Pause_Set_0x6000a50(param_1,*(undefined4 *)(param_1 + 0xc0),0);
      }
    }
  }
  *(undefined8 *)(param_1 + 200) = 0;
  *(undefined8 *)(param_1 + 0xc0) = 0xffffffffffffffff;
  return;
}

