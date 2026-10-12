/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b068b8, Ghidra VA 02c068b8. */

undefined8 OfflineProgressManager_Evaluate(long param_1)

{
  undefined *puVar1;
  undefined *puVar2;
  undefined4 uVar3;
  undefined4 uVar4;
  ulong uVar5;
  long *plVar6;
  undefined8 uVar7;
  long lVar8;
  undefined8 *puVar9;
  undefined8 uStack_28;
  
  puVar2 = PTR_DAT_05e61f78;
  puVar1 = PTR_DAT_05e591c0;
  if ((bRam000000000625be79 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e591c0);
    func_0x029f5a50(PTR_DAT_05e61f78);
    func_0x029f5a50(PTR_DAT_05e62040);
    bRam000000000625be79 = 1;
  }
  uStack_28 = 0;
  uVar7 = **(undefined8 **)(*(long *)puVar2 + 0xb8);
  if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  uVar5 = Object_op_Equality_0x6000dec(uVar7,0,0);
  if ((param_1 != 0) && ((uVar5 & 1) == 0)) {
    if (**(long **)(*(long *)puVar2 + 0xb8) != 0) {
      uVar5 = OfflineProgressManager_ComputeElapsed
                        (**(long **)(*(long *)puVar2 + 0xb8),param_1,(long)&uStack_28 + 4,&uStack_28
                        );
      if ((uVar5 & 1) == 0) {
        return 0;
      }
      if (**(long **)(*(long *)puVar2 + 0xb8) != 0) {
        plVar6 = (long *)(**(long **)(*(long *)puVar2 + 0xb8) + 0x40);
        *plVar6 = param_1;
        Managed_WriteBarrier(plVar6,param_1);
        uVar3 = (undefined4)uStack_28;
        uVar4 = uStack_28._4_4_;
        lVar8 = **(long **)(*(long *)puVar2 + 0xb8);
        if (*(int *)(*(long *)PTR_DAT_05e62040 + 0xe4) == 0) {
          func_0x029f5bd0();
        }
        uVar7 = OfflineProgressSimulator_Run(uVar4,uVar3,param_1);
        if (lVar8 != 0) {
          puVar9 = (undefined8 *)(lVar8 + 0x38);
          *puVar9 = uVar7;
          Managed_WriteBarrier(puVar9,uVar7);
          if (**(long **)(*(long *)puVar2 + 0xb8) != 0) {
            return *(undefined8 *)(**(long **)(*(long *)puVar2 + 0xb8) + 0x38);
          }
        }
      }
    }
                    /* WARNING: Subroutine does not return */
    Throw_NullReference_Wrapper();
  }
  return 0;
}

