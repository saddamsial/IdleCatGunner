/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b499fc, Ghidra VA 02c499fc. */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

float Mine_manager_GameTime_Max_return(long param_1)

{
  undefined *puVar1;
  ulong uVar2;
  float fVar3;
  
  puVar1 = PTR_DAT_05e5e0b8;
  if ((bRam000000000625c10c & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5e0b8);
    bRam000000000625c10c = 1;
  }
  if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  uVar2 = PlusPack_Is_Active(0,0);
  fVar3 = *(float *)(param_1 + 0x78) * _UNK_0116c1b4;
  if ((uVar2 & 1) == 0) {
    fVar3 = *(float *)(param_1 + 0x78);
  }
  return fVar3;
}

