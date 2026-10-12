/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b06384, Ghidra VA 02c06384. */

void OfflineProgressManager_Awake(undefined8 param_1)

{
  undefined *puVar1;
  
  puVar1 = PTR_DAT_05e61f78;
  if ((bRam000000000625be75 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e61f78);
    bRam000000000625be75 = 1;
  }
  **(undefined8 **)(*(long *)puVar1 + 0xb8) = param_1;
  Managed_WriteBarrier(*(undefined8 *)(*(long *)puVar1 + 0xb8),param_1);
  return;
}

