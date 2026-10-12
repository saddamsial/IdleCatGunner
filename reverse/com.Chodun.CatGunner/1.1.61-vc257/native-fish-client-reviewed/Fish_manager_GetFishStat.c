/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b5f590, Ghidra VA 02c5f590. */

int Fish_manager_GetFishStat(long param_1)

{
  undefined *puVar1;
  long lVar2;
  ulong uVar3;
  int iVar4;
  int iVar5;
  undefined8 uStack_38;
  undefined8 uStack_30;
  undefined8 uStack_28;
  
  if ((bRam000000000625c20f & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e62ff8);
    func_0x029f5a50(PTR_DAT_05e63000);
    func_0x029f5a50(PTR_DAT_05e63008);
    func_0x029f5a50(PTR_DAT_05e63010);
    func_0x029f5a50(PTR_DAT_05e62fe8);
    bRam000000000625c20f = 1;
  }
  lVar2 = *(long *)(param_1 + 0x90);
  uStack_38 = 0;
  uStack_30 = 0;
  uStack_28 = 0;
  iVar4 = 0;
  if (lVar2 != 0) {
    if (*(int *)(lVar2 + 0x18) == 0) {
      iVar4 = 0;
    }
    else {
      func_0x044f84d0(&uStack_38,lVar2,*(undefined8 *)PTR_DAT_05e63010);
      puVar1 = PTR_DAT_05e63000;
      iVar4 = 0;
      iVar5 = -1;
      while (uVar3 = func_0x03f9a744(&uStack_38,*(undefined8 *)puVar1), (uVar3 & 1) != 0) {
        if (iVar5 < (int)uStack_28) {
          iVar4 = 1;
          iVar5 = (int)uStack_28;
        }
        else if ((int)uStack_28 == iVar5) {
          iVar4 = iVar4 + 1;
        }
      }
      func_0x03f9a740(&uStack_38,*(undefined8 *)PTR_DAT_05e62ff8);
      iVar4 = iVar4 + iVar5 * 1000;
    }
  }
  return iVar4;
}

