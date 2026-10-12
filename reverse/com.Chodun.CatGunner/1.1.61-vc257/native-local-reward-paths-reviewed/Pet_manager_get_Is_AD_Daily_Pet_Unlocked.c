/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b7df1c, Ghidra VA 02c7df1c. */

bool Pet_manager_get_Is_AD_Daily_Pet_Unlocked(void)

{
  undefined *puVar1;
  undefined *puVar2;
  bool bVar3;
  long lVar4;
  ulong uVar5;
  long lVar6;
  undefined8 uVar7;
  
  puVar2 = PTR_DAT_05e5dd58;
  if ((bRam000000000625c333 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5dd58);
    func_0x029f5a50(PTR_DAT_05e591c0);
    bRam000000000625c333 = 1;
  }
  puVar1 = PTR_DAT_05e591c0;
  lVar4 = *(long *)puVar2;
  if (*(int *)(lVar4 + 0xe4) == 0) {
    func_0x029f5bd0();
    lVar4 = *(long *)puVar2;
  }
  uVar7 = *(undefined8 *)(*(long *)(lVar4 + 0xb8) + 8);
  if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
    func_0x029f5bd0(*(long *)puVar1);
  }
  uVar5 = Object_op_Inequality_0x6000ded(uVar7,0,0);
  if ((uVar5 & 1) == 0) {
    bVar3 = false;
  }
  else {
    lVar4 = *(long *)puVar2;
    if (*(int *)(lVar4 + 0xe4) == 0) {
      func_0x029f5bd0();
      lVar4 = *(long *)puVar2;
    }
    lVar6 = *(long *)(*(long *)(lVar4 + 0xb8) + 8);
    if (lVar6 == 0) {
LAB_02c7e014:
                    /* WARNING: Subroutine does not return */
      Throw_NullReference_Wrapper();
    }
    if (*(int *)(lVar6 + 0x20) < 1) {
      if (*(int *)(lVar4 + 0xe4) == 0) {
        func_0x029f5bd0();
        lVar6 = *(long *)(*(long *)(*(long *)puVar2 + 0xb8) + 8);
        if (lVar6 == 0) goto LAB_02c7e014;
      }
      bVar3 = 0 < *(int *)(lVar6 + 0x24);
    }
    else {
      bVar3 = true;
    }
  }
  return bVar3;
}

