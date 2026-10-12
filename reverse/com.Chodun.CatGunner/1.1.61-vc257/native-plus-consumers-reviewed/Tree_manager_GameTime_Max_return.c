/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2bad0dc, Ghidra VA 02cad0dc. */

float Tree_manager_GameTime_Max_return(long param_1)

{
  undefined *puVar1;
  ulong uVar2;
  float fVar3;
  float fVar4;
  
  puVar1 = PTR_DAT_05e5e0b8;
  if ((bRam000000000625c51e & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5e0b8);
    bRam000000000625c51e = 1;
  }
  if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  uVar2 = PlusPack_Is_Active(0,0);
  fVar3 = *(float *)(param_1 + 0x9c);
  fVar4 = fVar3 + fVar3;
  if ((uVar2 & 1) == 0) {
    fVar4 = fVar3;
  }
  return fVar4;
}

