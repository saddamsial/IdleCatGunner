/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2a9e050, Ghidra VA 02b9e050. */

int Contents_Unlock_manager_get_MaxStage_Display(void)

{
  undefined *puVar1;
  undefined *puVar2;
  int iVar3;
  long lVar4;
  ulong uVar5;
  undefined8 uVar6;
  
  puVar2 = PTR_DAT_05e5dc20;
  if ((bRam000000000625b9e3 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e591c0);
    func_0x029f5a50(PTR_DAT_05e5dc20);
    bRam000000000625b9e3 = 1;
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
    iVar3 = 0;
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
    iVar3 = *(int *)(lVar4 + 0x30) / 10 + 1;
  }
  return iVar3;
}

