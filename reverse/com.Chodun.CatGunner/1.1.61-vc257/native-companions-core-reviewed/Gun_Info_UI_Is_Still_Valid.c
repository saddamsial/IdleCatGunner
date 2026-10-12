/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b7008c, Ghidra VA 02c7008c. */

bool Gun_Info_UI_Is_Still_Valid(long param_1)

{
  int iVar1;
  undefined *puVar2;
  ulong uVar3;
  uint uVar4;
  long lVar5;
  undefined8 uVar6;
  
  if ((bRam000000000625c2bd & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5dd40);
    func_0x029f5a50(PTR_DAT_05e591c0);
    func_0x029f5a50(PTR_DAT_05e62648);
    bRam000000000625c2bd = 1;
  }
  puVar2 = PTR_DAT_05e62648;
  iVar1 = *(int *)(param_1 + 0x88);
  if (iVar1 == 3) {
    uVar6 = **(undefined8 **)(*(long *)PTR_DAT_05e62648 + 0xb8);
    if (*(int *)(*(long *)PTR_DAT_05e591c0 + 0xe4) == 0) {
      func_0x029f5bd0();
    }
    uVar3 = Object_op_Inequality_0x6000ded(uVar6,0,0);
    if ((uVar3 & 1) == 0) {
      return false;
    }
    uVar4 = *(uint *)(param_1 + 0x90);
    if ((int)uVar4 < 0) {
      return false;
    }
    if (**(long **)(*(long *)puVar2 + 0xb8) == 0) goto LAB_02c701c4;
    lVar5 = *(long *)(**(long **)(*(long *)puVar2 + 0xb8) + 0x20);
  }
  else {
    lVar5 = **(long **)(*(long *)PTR_DAT_05e5dd40 + 0xb8);
    if (iVar1 == 2) {
      if (lVar5 == 0) goto LAB_02c701c4;
      lVar5 = *(long *)(lVar5 + 0x28);
      if (lVar5 == 0) {
        return false;
      }
      uVar4 = *(uint *)(param_1 + 0x90);
      if ((int)uVar4 < 0) {
        return false;
      }
      goto LAB_02c70190;
    }
    if (iVar1 != 1) {
      return false;
    }
    uVar4 = *(uint *)(param_1 + 0x90);
    if ((int)uVar4 < 0) {
      return false;
    }
    if (lVar5 == 0) goto LAB_02c701c4;
    lVar5 = *(long *)(lVar5 + 0x40);
  }
  if (lVar5 == 0) {
LAB_02c701c4:
                    /* WARNING: Subroutine does not return */
    Throw_NullReference_Wrapper();
  }
LAB_02c70190:
  if (*(int *)(lVar5 + 0x18) <= (int)uVar4) {
    return false;
  }
  return *(int *)(lVar5 + (ulong)uVar4 * 4 + 0x20) == *(int *)(param_1 + 0x8c);
}

