/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b6aa84, Ghidra VA 02c6aa84. */

void Gun_manager_Update(long param_1)

{
  undefined *puVar1;
  undefined *puVar2;
  ulong uVar3;
  long lVar4;
  undefined8 uVar5;
  float fVar6;
  double dVar7;
  float fVar8;
  
  if ((bRam000000000625c282 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5d910);
    func_0x029f5a50(PTR_DAT_05e591c0);
    bRam000000000625c282 = 1;
  }
  if (*(int *)(param_1 + 0xc0) != -1) {
    fVar8 = *(float *)(param_1 + 0xd0);
    fVar6 = (float)Time_get_unscaledDeltaTime_0x6000ee8(0);
    fVar8 = fVar8 + fVar6;
    *(float *)(param_1 + 0xd0) = fVar8;
    puVar2 = PTR_DAT_05e5d910;
    puVar1 = PTR_DAT_05e591c0;
    if (0.25 <= fVar8) {
      *(undefined4 *)(param_1 + 0xd0) = 0;
      uVar5 = **(undefined8 **)(*(long *)puVar2 + 0xb8);
      if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
        func_0x029f5bd0();
      }
      uVar3 = Object_op_Inequality_0x6000ded(uVar5,0,0);
      if ((uVar3 & 1) != 0) {
        lVar4 = **(long **)(*(long *)puVar2 + 0xb8);
        if (lVar4 == 0) {
                    /* WARNING: Subroutine does not return */
          Throw_NullReference_Wrapper();
        }
        uVar3 = Admob_get_IsRewardAdBusy_0x6000161(lVar4,0);
        if ((uVar3 & 1) != 0) {
          return;
        }
      }
      dVar7 = (double)Gun_manager_get_AD_Gun_RemainSec(param_1);
      if (dVar7 <= 0.0) {
        Gun_manager_AdRewardGun_Expire(param_1);
        return;
      }
    }
  }
  return;
}

