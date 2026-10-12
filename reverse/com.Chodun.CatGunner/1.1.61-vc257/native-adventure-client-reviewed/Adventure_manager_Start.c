/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b2c91c, Ghidra VA 02c2c91c. */

void Adventure_manager_Start(undefined8 param_1)

{
  undefined *puVar1;
  
  puVar1 = PTR_DAT_05e62f98;
  if ((bRam000000000625bff8 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e62f98);
    bRam000000000625bff8 = 1;
  }
  MonoBehaviour_InvokeRepeating_0x6000d3e(0x3f800000,0x41200000,param_1,*(undefined8 *)puVar1,0);
  return;
}

