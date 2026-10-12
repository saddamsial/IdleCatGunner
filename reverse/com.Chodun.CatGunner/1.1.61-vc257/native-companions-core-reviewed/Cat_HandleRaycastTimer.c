/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b3ba74, Ghidra VA 02c3ba74. */

void Cat_HandleRaycastTimer(long param_1)

{
  undefined8 uVar1;
  float fVar2;
  float fVar3;
  
  fVar3 = *(float *)(param_1 + 0x1dc);
  fVar2 = (float)Time_get_deltaTime_0x6000ee5(0);
  fVar3 = fVar3 + fVar2;
  *(float *)(param_1 + 0x1dc) = fVar3;
  if (fVar3 < *(float *)(param_1 + 0xa8)) {
    return;
  }
  *(undefined4 *)(param_1 + 0x1dc) = 0;
  uVar1 = Cat_FindNearestEnemyByRaycast_0x6000756(param_1);
  *(undefined8 *)(param_1 + 0x1e0) = uVar1;
  Managed_WriteBarrier(param_1 + 0x1e0);
  return;
}

