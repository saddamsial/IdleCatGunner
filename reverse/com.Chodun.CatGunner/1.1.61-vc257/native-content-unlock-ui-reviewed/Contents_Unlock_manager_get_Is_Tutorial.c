/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2a9e198, Ghidra VA 02b9e198. */

bool Contents_Unlock_manager_get_Is_Tutorial(void)

{
  undefined *puVar1;
  undefined *puVar2;
  bool bVar3;
  ulong uVar4;
  long lVar5;
  undefined8 uVar6;
  
  puVar2 = PTR_DAT_05e5e4d8;
  puVar1 = PTR_DAT_05e591c0;
  if ((bRam000000000625b9e5 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e591c0);
    func_0x029f5a50(PTR_DAT_05e5e4d8);
    bRam000000000625b9e5 = 1;
  }
  uVar6 = **(undefined8 **)(*(long *)puVar2 + 0xb8);
  if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  uVar4 = Object_op_Inequality_0x6000ded(uVar6,0,0);
  if ((uVar4 & 1) == 0) {
    bVar3 = false;
  }
  else {
    lVar5 = **(long **)(*(long *)puVar2 + 0xb8);
    if (lVar5 == 0) {
                    /* WARNING: Subroutine does not return */
      Throw_NullReference_Wrapper();
    }
    bVar3 = *(int *)(lVar5 + 0x60) != 5;
  }
  return bVar3;
}

