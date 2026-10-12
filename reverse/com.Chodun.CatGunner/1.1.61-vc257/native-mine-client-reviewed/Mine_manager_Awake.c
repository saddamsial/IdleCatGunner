/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b48cdc, Ghidra VA 02c48cdc. */

void Mine_manager_Awake(undefined8 param_1)

{
  undefined *puVar1;
  
  puVar1 = PTR_DAT_05e5dd48;
  if ((bRam000000000625c100 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5dd48);
    bRam000000000625c100 = 1;
  }
  **(undefined8 **)(*(long *)puVar1 + 0xb8) = param_1;
  Managed_WriteBarrier(*(undefined8 *)(*(long *)puVar1 + 0xb8),param_1);
  return;
}

