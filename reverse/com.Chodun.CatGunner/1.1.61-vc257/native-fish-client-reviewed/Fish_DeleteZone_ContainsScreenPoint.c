/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b60150, Ghidra VA 02c60150. */

void Fish_DeleteZone_ContainsScreenPoint
               (undefined4 param_1,undefined4 param_2,long param_3,undefined8 param_4)

{
  undefined *puVar1;
  undefined8 uVar2;
  
  puVar1 = PTR_DAT_05e5cf00;
  if ((bRam000000000625c217 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5cf00);
    bRam000000000625c217 = 1;
  }
  uVar2 = *(undefined8 *)(param_3 + 0x50);
  if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  RectTransformUtility_RectangleContainsScreenPoint_0x600004c(param_1,param_2,uVar2,param_4,0);
  return;
}

