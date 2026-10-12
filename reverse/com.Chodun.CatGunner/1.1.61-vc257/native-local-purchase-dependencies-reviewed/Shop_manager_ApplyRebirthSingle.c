/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b97f0c, Ghidra VA 02c97f0c. */

uint Shop_manager_ApplyRebirthSingle(void)

{
  undefined *puVar1;
  undefined *puVar2;
  uint uVar3;
  undefined8 uVar4;
  
  puVar2 = PTR_DAT_05e5dd60;
  puVar1 = PTR_DAT_05e591c0;
  if ((bRam000000000625c44f & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e58f08);
    func_0x029f5a50(PTR_DAT_05e591c0);
    func_0x029f5a50(PTR_DAT_05e5dd60);
    func_0x029f5a50(PTR_DAT_05e64458);
    bRam000000000625c44f = 1;
  }
  uVar4 = **(undefined8 **)(*(long *)puVar2 + 0xb8);
  if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  uVar3 = Object_op_Equality_0x6000dec(uVar4,0,0);
  puVar1 = PTR_DAT_05e64458;
  if ((uVar3 & 1) == 0) {
    if (**(long **)(*(long *)puVar2 + 0xb8) == 0) {
                    /* WARNING: Subroutine does not return */
      Throw_NullReference_Wrapper();
    }
    Rebirth_manager_UpgradeRebirth_Start_By_IAP_0x6000c97();
  }
  else {
    if (*(int *)(*(long *)PTR_DAT_05e58f08 + 0xe4) == 0) {
      func_0x029f5bd0();
    }
    Debug_LogWarning_0x6000346(*(undefined8 *)puVar1,0);
  }
  return (uVar3 ^ 0xffffffff) & 1;
}

