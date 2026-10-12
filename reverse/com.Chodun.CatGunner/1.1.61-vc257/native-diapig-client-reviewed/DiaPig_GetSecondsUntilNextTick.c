/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b8d5f4, Ghidra VA 02c8d5f4. */

undefined8 DiaPig_GetSecondsUntilNextTick(long param_1)

{
  int iVar1;
  ulong uVar2;
  undefined8 uVar3;
  double dVar4;
  
  if ((bRam000000000625c3bd & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e59000);
    func_0x029f5a50(PTR_DAT_05e5d3c0);
    bRam000000000625c3bd = 1;
  }
  uVar2 = DiaPig_IsUnlocked();
  if (((uVar2 & 1) != 0) && (*(int *)(param_1 + 0x20) < *(int *)(param_1 + 0x24))) {
    if (*(int *)(*(long *)PTR_DAT_05e5d3c0 + 0xe4) == 0) {
      func_0x029f5bd0();
    }
    dVar4 = (double)Time_manager_get_MonoSec_0x6000569(0);
    dVar4 = dVar4 - *(double *)(param_1 + 0x40);
    if (*(int *)(*(long *)PTR_DAT_05e59000 + 0xe4) == 0) {
      func_0x029f5bd0();
    }
    iVar1 = 0x44;
    if (dVar4 != INFINITY) {
      iVar1 = 0x3c - (int)dVar4 % 0x3c;
    }
    uVar3 = Math_Max_0x6000884(0,iVar1,0);
    return uVar3;
  }
  return 0;
}

