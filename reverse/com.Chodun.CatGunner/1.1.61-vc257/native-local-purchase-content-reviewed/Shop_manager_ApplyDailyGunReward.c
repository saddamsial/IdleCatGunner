/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b9412c, Ghidra VA 02c9412c. */

uint Shop_manager_ApplyDailyGunReward(undefined8 param_1,undefined8 param_2)

{
  undefined *puVar1;
  undefined *puVar2;
  uint uVar3;
  ulong uVar4;
  long lVar5;
  undefined8 uVar6;
  undefined4 uStack_24;
  
  puVar1 = PTR_DAT_05e5d920;
  if ((bRam000000000625c416 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e62660);
    func_0x029f5a50(PTR_DAT_05e58f08);
    func_0x029f5a50(PTR_DAT_05e591c0);
    func_0x029f5a50(PTR_DAT_05e5d920);
    func_0x029f5a50(PTR_DAT_05e64300);
    bRam000000000625c416 = 1;
  }
  uStack_24 = 0;
  if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  uVar4 = Shop_manager_TryGetDailyGunIdx_0x6000d6c(param_2,&uStack_24);
  puVar2 = PTR_DAT_05e62660;
  puVar1 = PTR_DAT_05e591c0;
  if ((uVar4 & 1) != 0) {
    lVar5 = *(long *)PTR_DAT_05e62660;
    if (*(int *)(lVar5 + 0xe4) == 0) {
      func_0x029f5bd0();
      lVar5 = *(long *)puVar2;
    }
    uVar6 = **(undefined8 **)(lVar5 + 0xb8);
    if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
      func_0x029f5bd0(*(long *)puVar1);
    }
    uVar4 = Object_op_Equality_0x6000dec(uVar6,0,0);
    if ((uVar4 & 1) == 0) {
      lVar5 = *(long *)puVar2;
      if (*(int *)(lVar5 + 0xe4) == 0) {
        func_0x029f5bd0();
        lVar5 = *(long *)puVar2;
      }
      if (**(long **)(lVar5 + 0xb8) == 0) {
                    /* WARNING: Subroutine does not return */
        Throw_NullReference_Wrapper();
      }
      uVar3 = DailyGun_ApplyReward_0x6000cd2(**(long **)(lVar5 + 0xb8),uStack_24);
      goto LAB_02c94268;
    }
    if (*(int *)(*(long *)PTR_DAT_05e58f08 + 0xe4) == 0) {
      func_0x029f5bd0();
    }
    Debug_LogWarning_0x6000346(*(undefined8 *)PTR_DAT_05e64300,0);
  }
  uVar3 = 0;
LAB_02c94268:
  return uVar3 & 1;
}

