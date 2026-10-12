/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b2e304, Ghidra VA 02c2e304. */

void Adventure_manager_Exp_Get(long param_1,int param_2)

{
  uint uVar1;
  int iVar2;
  long lVar3;
  
  uVar1 = *(uint *)(param_1 + 0x30);
  if (uVar1 != 0xf) {
    *(int *)(param_1 + 0x34) = *(int *)(param_1 + 0x34) + param_2;
    do {
      lVar3 = *(long *)(param_1 + 0x38);
      if (lVar3 == 0) {
LAB_02c2e37c:
                    /* WARNING: Subroutine does not return */
        Throw_NullReference_Wrapper();
      }
      if (*(uint *)(lVar3 + 0x18) <= uVar1) {
                    /* WARNING: Subroutine does not return */
        Throw_Index_Wrapper();
      }
      iVar2 = *(int *)(lVar3 + (long)(int)uVar1 * 4 + 0x20);
      if (*(int *)(param_1 + 0x34) < iVar2) {
        return;
      }
      *(uint *)(param_1 + 0x30) = uVar1 + 1;
      *(int *)(param_1 + 0x34) = *(int *)(param_1 + 0x34) - iVar2;
      if (*(long *)(param_1 + 0x40) == 0) goto LAB_02c2e37c;
      Adventure_Panel_Exp_Reload(*(long *)(param_1 + 0x40),0);
      uVar1 = *(uint *)(param_1 + 0x30);
    } while (uVar1 != 0xf);
    *(undefined4 *)(param_1 + 0x34) = 0;
  }
  return;
}

