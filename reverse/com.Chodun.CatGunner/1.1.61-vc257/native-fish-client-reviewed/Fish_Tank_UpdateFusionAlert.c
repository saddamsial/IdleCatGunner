/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b623b0, Ghidra VA 02c623b0. */

void Fish_Tank_UpdateFusionAlert(long param_1,long param_2)

{
  int iVar1;
  undefined *puVar2;
  long lVar3;
  ulong uVar4;
  long lVar5;
  undefined8 uVar6;
  
  if ((bRam000000000625c237 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e591c0);
    bRam000000000625c237 = 1;
  }
  puVar2 = PTR_DAT_05e591c0;
  if (param_2 == 0) {
LAB_02c624e4:
                    /* WARNING: Subroutine does not return */
    Throw_NullReference_Wrapper();
  }
  if (*(char *)(param_2 + 0x48) != '\0') {
    lVar3 = Fish_Tank_FindFusionTarget(param_1,param_2);
    lVar5 = *(long *)puVar2;
    if (*(int *)(lVar5 + 0xe4) == 0) {
      func_0x029f5bd0(lVar5);
    }
    uVar4 = Object_op_Inequality_0x6000ded(lVar3,0,0);
    uVar6 = *(undefined8 *)(param_1 + 0x40);
    iVar1 = *(int *)(*(long *)puVar2 + 0xe4);
    if ((uVar4 & 1) == 0) {
      if (iVar1 == 0) {
        func_0x029f5bd0();
      }
      uVar4 = Object_op_Inequality_0x6000ded(uVar6,0,0);
      if ((uVar4 & 1) != 0) {
        Fish_Tank_ClearAllFusionAlerts(param_1);
        return;
      }
    }
    else {
      if (iVar1 == 0) {
        func_0x029f5bd0();
      }
      uVar4 = Object_op_Equality_0x6000dec(uVar6,lVar3,0);
      if ((uVar4 & 1) == 0) {
        Fish_Tank_ClearAllFusionAlerts(param_1);
        *(long *)(param_1 + 0x40) = lVar3;
        Managed_WriteBarrier((undefined8 *)(param_1 + 0x40),lVar3);
        Fish_Item_Fusion_Alert_On(param_2);
        if (lVar3 != 0) {
          Fish_Item_Fusion_Alert_On(lVar3);
          VibrationHelper_VibrateShort_0x60004aa(0x1e,0);
          return;
        }
        goto LAB_02c624e4;
      }
    }
  }
  return;
}

