/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b2e128, Ghidra VA 02c2e128. */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

int Adventure_manager_Adventure_Reward_Core_return(long param_1,long param_2,uint param_3)

{
  undefined *puVar1;
  int iVar2;
  ulong uVar3;
  long lVar4;
  float fVar5;
  float fVar6;
  undefined8 uStack_58;
  undefined8 uStack_50;
  undefined8 uStack_48;
  
  if ((bRam000000000625c010 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e62ff8);
    func_0x029f5a50(PTR_DAT_05e63000);
    func_0x029f5a50(PTR_DAT_05e63008);
    func_0x029f5a50(PTR_DAT_05e63010);
    func_0x029f5a50(PTR_DAT_05e62fe8);
    bRam000000000625c010 = 1;
  }
  uStack_58 = 0;
  uStack_50 = 0;
  uStack_48 = 0;
  if ((param_2 == 0) || (*(int *)(param_2 + 0x18) == 0)) {
    iVar2 = 0;
  }
  else {
    func_0x044f84d0(&uStack_58,param_2,*(undefined8 *)PTR_DAT_05e63010);
    puVar1 = PTR_DAT_05e63000;
    fVar5 = _UNK_0116c174;
    fVar6 = 0.0;
    while (uVar3 = func_0x03f9a744(&uStack_58,*(undefined8 *)puVar1), (uVar3 & 1) != 0) {
      fVar6 = fVar6 + (float)(int)uStack_48 * fVar5 + 1.0;
    }
    func_0x03f9a740(&uStack_58,*(undefined8 *)PTR_DAT_05e62ff8);
    lVar4 = *(long *)(param_1 + 0x68);
    if (lVar4 == 0) {
                    /* WARNING: Subroutine does not return */
      Throw_NullReference_Wrapper();
    }
    if (*(uint *)(lVar4 + 0x18) <= param_3) {
                    /* WARNING: Subroutine does not return */
      Throw_Index_Wrapper();
    }
    fVar5 = fVar6 * 20.0 * (float)*(int *)(lVar4 + (long)(int)param_3 * 4 + 0x20);
    iVar2 = -0x80000000;
    if (fVar5 != INFINITY) {
      iVar2 = (int)fVar5;
    }
  }
  return iVar2;
}

