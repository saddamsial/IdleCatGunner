/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b463bc, Ghidra VA 02c463bc. */

float Boss_manager_GameTime_Max_return(long param_1)

{
  undefined *puVar1;
  ulong uVar2;
  float fVar3;
  float fVar4;
  
  puVar1 = PTR_DAT_05e5e0b8;
  if ((bRam000000000625c0de & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5e0b8);
    bRam000000000625c0de = 1;
  }
  if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  uVar2 = PlusPack_Is_Active_0x6000d35(0,0);
  fVar3 = *(float *)(param_1 + 0x84);
  fVar4 = fVar3 + fVar3;
  if ((uVar2 & 1) == 0) {
    fVar4 = fVar3;
  }
  return fVar4;
}

