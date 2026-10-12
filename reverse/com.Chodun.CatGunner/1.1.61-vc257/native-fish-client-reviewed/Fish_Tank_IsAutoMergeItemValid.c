/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b63e78, Ghidra VA 02c63e78. */

bool Fish_Tank_IsAutoMergeItemValid(undefined8 param_1,long param_2,int param_3)

{
  undefined *puVar1;
  int iVar2;
  ulong uVar3;
  long lVar4;
  
  puVar1 = PTR_DAT_05e591c0;
  if ((bRam000000000625c23d & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5dd38);
    func_0x029f5a50(PTR_DAT_05e62fe8);
    func_0x029f5a50(PTR_DAT_05e63128);
    func_0x029f5a50(PTR_DAT_05e591c0);
    bRam000000000625c23d = 1;
  }
  if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  uVar3 = Object_op_Equality_0x6000dec(param_2,0,0);
  if ((uVar3 & 1) == 0) {
    if (param_2 == 0) {
LAB_02c63f90:
                    /* WARNING: Subroutine does not return */
      Throw_NullReference_Wrapper();
    }
    if ((((*(char *)(param_2 + 0x48) != '\0') && (*(char *)(param_2 + 0x86) != '\0')) &&
        (*(int *)(param_2 + 0x40) == param_3)) &&
       ((*(char *)(param_2 + 0x84) == '\0' && (*(char *)(param_2 + 0x49) == '\0')))) {
      if (**(long **)(*(long *)PTR_DAT_05e5dd38 + 0xb8) == 0) goto LAB_02c63f90;
      iVar2 = *(int *)(param_2 + 0x44);
      if (-1 < iVar2) {
        lVar4 = *(long *)(**(long **)(*(long *)PTR_DAT_05e5dd38 + 0xb8) + 0x90);
        if (lVar4 == 0) goto LAB_02c63f90;
        if (iVar2 < *(int *)(lVar4 + 0x18)) {
          iVar2 = func_0x044f7718(lVar4,iVar2,*(undefined8 *)PTR_DAT_05e63128);
          return iVar2 == param_3;
        }
      }
    }
  }
  return false;
}

