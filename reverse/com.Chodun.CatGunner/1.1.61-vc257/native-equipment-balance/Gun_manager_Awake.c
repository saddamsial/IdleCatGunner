/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b67764, Ghidra VA 02c67764. */

void Gun_manager_Awake(undefined8 param_1)

{
  undefined *puVar1;
  
  puVar1 = PTR_DAT_05e5dd40;
  if ((bRam000000000625c25e & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5dd40);
    bRam000000000625c25e = 1;
  }
  **(undefined8 **)(*(long *)puVar1 + 0xb8) = param_1;
  func_0x029f59f4(*(undefined8 *)(*(long *)puVar1 + 0xb8),param_1);
  Gun_manager_InitOwnedArray_0x6000a48(param_1);
  Gun_manager_Pause_Array_Validate_0x6000a4a(param_1);
  return;
}

