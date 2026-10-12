/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b6d80c, Ghidra VA 02c6d80c. */

bool StarUpgrade_manager_IsUnlocked(void)

{
  undefined *puVar1;
  undefined *puVar2;
  bool bVar3;
  long lVar4;
  ulong uVar5;
  undefined8 uVar6;
  
  puVar2 = PTR_DAT_05e5dc20;
  if ((bRam000000000625c2a9 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e591c0);
    func_0x029f5a50(PTR_DAT_05e5dc20);
    bRam000000000625c2a9 = 1;
  }
  puVar1 = PTR_DAT_05e591c0;
  lVar4 = *(long *)puVar2;
  if (*(int *)(lVar4 + 0xe4) == 0) {
    func_0x029f5bd0();
    lVar4 = *(long *)puVar2;
  }
  uVar6 = *(undefined8 *)(*(long *)(lVar4 + 0xb8) + 0x10);
  if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
    func_0x029f5bd0(*(long *)puVar1);
  }
  uVar5 = Object_op_Inequality_0x6000ded(uVar6,0,0);
  if ((uVar5 & 1) == 0) {
    bVar3 = false;
  }
  else {
    lVar4 = *(long *)puVar2;
    if (*(int *)(lVar4 + 0xe4) == 0) {
      func_0x029f5bd0();
      lVar4 = *(long *)puVar2;
    }
    lVar4 = *(long *)(*(long *)(lVar4 + 0xb8) + 0x10);
    if (lVar4 == 0) {
                    /* WARNING: Subroutine does not return */
      Throw_NullReference_Wrapper();
    }
    bVar3 = 0x185 < *(int *)(lVar4 + 0x30);
  }
  return bVar3;
}

