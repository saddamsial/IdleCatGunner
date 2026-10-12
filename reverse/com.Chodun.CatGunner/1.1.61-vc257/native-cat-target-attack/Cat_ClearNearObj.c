/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b3aeb4, Ghidra VA 02c3aeb4. */

void Cat_ClearNearObj(long param_1)

{
  undefined *puVar1;
  ulong uVar2;
  undefined8 uVar3;
  
  puVar1 = PTR_DAT_05e591c0;
  if ((bRam000000000625c0ab & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e591c0);
    bRam000000000625c0ab = 1;
  }
  *(undefined8 *)(param_1 + 0x1e0) = 0;
  func_0x029f59f4(param_1 + 0x1e0,0);
  *(undefined8 *)(param_1 + 0x180) = 0;
  func_0x029f59f4(param_1 + 0x180,0);
  uVar3 = *(undefined8 *)(param_1 + 0x110);
  if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  uVar2 = Object_op_Inequality_0x6000ded(uVar3,0,0);
  if ((uVar2 & 1) == 0) {
    return;
  }
  if (*(long *)(param_1 + 0x110) != 0) {
    uVar2 = GameObject_get_activeSelf_0x6000cff(*(long *)(param_1 + 0x110),0);
    if ((uVar2 & 1) == 0) {
      return;
    }
    if (*(long *)(param_1 + 0x110) != 0) {
      GameObject_SetActive_0x6000cfe(*(long *)(param_1 + 0x110),0,0);
      return;
    }
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

