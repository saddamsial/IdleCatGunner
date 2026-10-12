/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b55864, Ghidra VA 02c55864. */

void Raid_Mission_UI_Update(long param_1)

{
  float fVar1;
  float fVar2;
  
  fVar2 = *(float *)(param_1 + 0x30);
  fVar1 = (float)Time_get_unscaledDeltaTime_0x6000ee8(0);
  fVar2 = fVar2 + fVar1;
  *(float *)(param_1 + 0x30) = fVar2;
  if (fVar2 < 1.0) {
    return;
  }
  *(undefined4 *)(param_1 + 0x30) = 0;
  Raid_Mission_UI_Remain_Reload(param_1);
  return;
}

