/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b38b0c, Ghidra VA 02c38b0c. */

undefined8 Cat__get_is_Helper(undefined8 param_1)

{
  undefined *puVar1;
  undefined *puVar2;
  ulong uVar3;
  long lVar4;
  undefined8 uVar5;
  
  puVar2 = PTR_DAT_05e5d5b0;
  puVar1 = PTR_DAT_05e591c0;
  if ((bRam000000000625c085 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5d5b0);
    func_0x029f5a50(PTR_DAT_05e591c0);
    bRam000000000625c085 = 1;
  }
  uVar5 = *(undefined8 *)(*(long *)(*(long *)puVar2 + 0xb8) + 8);
  if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  uVar3 = Object_op_Inequality_0x6000ded(uVar5,0,0);
  if ((uVar3 & 1) != 0) {
    lVar4 = *(long *)(*(long *)(*(long *)puVar2 + 0xb8) + 8);
    if (lVar4 != 0) {
      uVar5 = *(undefined8 *)(lVar4 + 0x28);
      if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
        func_0x029f5bd0();
      }
      uVar5 = Object_op_Equality_0x6000dec(uVar5,param_1,0);
      return uVar5;
    }
                    /* WARNING: Subroutine does not return */
    Throw_NullReference_Wrapper();
  }
  return 0;
}

