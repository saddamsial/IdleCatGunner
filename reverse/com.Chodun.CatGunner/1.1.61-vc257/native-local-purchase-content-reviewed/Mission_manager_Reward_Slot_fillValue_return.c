/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2aa6b30, Ghidra VA 02ba6b30. */

float Mission_manager_Reward_Slot_fillValue_return(long param_1,int param_2)

{
  float fVar1;
  
  fVar1 = 1.0;
  if ((*(int *)(param_1 + 0x48) <= param_2) && (fVar1 = 0.0, *(int *)(param_1 + 0x48) == param_2)) {
    fVar1 = (float)*(int *)(param_1 + 0x4c) / 100.0;
  }
  return fVar1;
}

