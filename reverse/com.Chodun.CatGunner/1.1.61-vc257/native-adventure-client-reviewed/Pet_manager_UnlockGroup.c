/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b7ce70, Ghidra VA 02c7ce70. */

void Pet_manager_UnlockGroup(long param_1,int param_2)

{
  ulong uVar1;
  long lVar2;
  int *piVar3;
  
  lVar2 = *(long *)(param_1 + 0x40);
  if ((lVar2 != 0) && (0 < (int)*(ulong *)(lVar2 + 0x18))) {
    uVar1 = *(ulong *)(lVar2 + 0x18) & 0xffffffff;
    piVar3 = (int *)(lVar2 + 0x20);
    do {
      if (*piVar3 == param_2) {
        *piVar3 = -1;
      }
      uVar1 = uVar1 - 1;
      piVar3 = piVar3 + 1;
    } while (uVar1 != 0);
  }
  lVar2 = *(long *)(param_1 + 0x48);
  if ((lVar2 != 0) && (0 < (int)*(ulong *)(lVar2 + 0x18))) {
    uVar1 = *(ulong *)(lVar2 + 0x18) & 0xffffffff;
    piVar3 = (int *)(lVar2 + 0x20);
    do {
      if (*piVar3 == param_2) {
        *piVar3 = -1;
      }
      uVar1 = uVar1 - 1;
      piVar3 = piVar3 + 1;
    } while (uVar1 != 0);
  }
  Pet_manager_ReloadAfterLockChange();
  return;
}

