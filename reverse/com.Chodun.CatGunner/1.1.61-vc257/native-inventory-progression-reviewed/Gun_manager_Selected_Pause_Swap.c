/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b682c4, Ghidra VA 02c682c4. */

void Gun_manager_Selected_Pause_Swap(long param_1,ulong param_2,uint param_3)

{
  bool bVar1;
  bool bVar2;
  uint uVar3;
  long lVar4;
  
  uVar3 = (uint)param_2;
  if (uVar3 == param_3) {
    return;
  }
  lVar4 = *(long *)(param_1 + 0x68);
  bVar1 = false;
  if ((-1 < (int)uVar3) && (lVar4 != 0)) {
    if ((int)uVar3 < *(int *)(lVar4 + 0x18)) {
      bVar1 = *(char *)(lVar4 + (param_2 & 0xffffffff) + 0x20) != '\0';
    }
    else {
      bVar1 = false;
    }
  }
  bVar2 = false;
  if ((-1 < (int)param_3) && (lVar4 != 0)) {
    if ((int)param_3 < *(int *)(lVar4 + 0x18)) {
      bVar2 = *(char *)(lVar4 + (ulong)param_3 + 0x20) != '\0';
    }
    else {
      bVar2 = false;
    }
  }
  Gun_manager_Selected_Pause_Set_0x6000a51(param_1,param_2,bVar2);
  Gun_manager_Selected_Pause_Set_0x6000a51(param_1,(ulong)param_3,bVar1);
  return;
}

