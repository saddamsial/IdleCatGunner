/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b94280, Ghidra VA 02c94280. */

undefined8 Shop_manager_ApplyPlusPackReward(undefined8 param_1,undefined8 param_2)

{
  undefined *puVar1;
  undefined *puVar2;
  ulong uVar3;
  long lVar4;
  undefined8 uVar5;
  undefined4 uStack_24;
  
  puVar2 = PTR_DAT_05e5e0b8;
  if ((bRam000000000625c418 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e58f08);
    func_0x029f5a50(PTR_DAT_05e591c0);
    func_0x029f5a50(PTR_DAT_05e5e0b8);
    func_0x029f5a50(PTR_DAT_05e64308);
    bRam000000000625c418 = 1;
  }
  uStack_24 = 0;
  if (*(int *)(*(long *)puVar2 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  uVar3 = PlusPack_TryGetTypeFromId_0x6000d33(param_2,&uStack_24);
  puVar1 = PTR_DAT_05e591c0;
  if ((uVar3 & 1) != 0) {
    lVar4 = *(long *)puVar2;
    if (*(int *)(lVar4 + 0xe4) == 0) {
      func_0x029f5bd0();
      lVar4 = *(long *)puVar2;
    }
    uVar5 = **(undefined8 **)(lVar4 + 0xb8);
    if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
      func_0x029f5bd0(*(long *)puVar1);
    }
    uVar3 = Object_op_Equality_0x6000dec(uVar5,0,0);
    if ((uVar3 & 1) == 0) {
      lVar4 = *(long *)puVar2;
      if (*(int *)(lVar4 + 0xe4) == 0) {
        func_0x029f5bd0();
        lVar4 = *(long *)puVar2;
      }
      if (**(long **)(lVar4 + 0xb8) != 0) {
        PlusPack_ApplyReward(**(long **)(lVar4 + 0xb8),uStack_24);
        return 1;
      }
                    /* WARNING: Subroutine does not return */
      Throw_NullReference_Wrapper();
    }
    if (*(int *)(*(long *)PTR_DAT_05e58f08 + 0xe4) == 0) {
      func_0x029f5bd0();
    }
    Debug_LogWarning_0x6000346(*(undefined8 *)PTR_DAT_05e64308,0);
  }
  return 0;
}

