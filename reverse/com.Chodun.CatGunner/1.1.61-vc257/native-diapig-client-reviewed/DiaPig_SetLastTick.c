/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b8c9d0, Ghidra VA 02c8c9d0. */

void DiaPig_SetLastTick(long param_1,undefined8 param_2)

{
  undefined *puVar1;
  long lVar2;
  undefined8 uVar3;
  
  puVar1 = PTR_DAT_05e5d3c0;
  if ((bRam000000000625c3b9 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5d3c0);
    bRam000000000625c3b9 = 1;
  }
  lVar2 = *(long *)puVar1;
  *(undefined8 *)(param_1 + 0x38) = param_2;
  if (*(int *)(lVar2 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  uVar3 = Time_manager_get_MonoSec_0x6000569(0);
  *(undefined8 *)(param_1 + 0x40) = uVar3;
  return;
}

