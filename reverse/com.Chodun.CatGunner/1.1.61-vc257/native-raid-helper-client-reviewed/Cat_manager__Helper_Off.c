/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b446b4, Ghidra VA 02c446b4. */

void Cat_manager__Helper_Off(long param_1)

{
  undefined *puVar1;
  ulong uVar2;
  long lVar3;
  undefined8 uVar4;
  
  puVar1 = PTR_DAT_05e591c0;
  if ((bRam000000000625c0c9 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e591c0);
    bRam000000000625c0c9 = 1;
  }
  uVar4 = *(undefined8 *)(param_1 + 0x28);
  if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  uVar2 = Object_op_Inequality_0x6000ded(uVar4,0,0);
  if ((uVar2 & 1) != 0) {
    if ((*(long *)(param_1 + 0x28) != 0) &&
       (lVar3 = Component_get_gameObject_0x6000c83(*(long *)(param_1 + 0x28),0), lVar3 != 0)) {
      GameObject_SetActive_0x6000cfe(lVar3,0,0);
      return;
    }
                    /* WARNING: Subroutine does not return */
    Throw_NullReference_Wrapper();
  }
  return;
}

