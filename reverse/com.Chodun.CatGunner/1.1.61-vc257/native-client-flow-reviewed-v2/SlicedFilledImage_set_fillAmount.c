/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b28290, Ghidra VA 02c28290. */

void SlicedFilledImage_set_fillAmount(float param_1,long *param_2)

{
  undefined *puVar1;
  ulong uVar2;
  float fVar3;
  float fVar4;
  
  puVar1 = PTR_DAT_05e62da8;
  if ((bRam000000000625bfc7 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e62da8);
    bRam000000000625bfc7 = 1;
  }
  fVar3 = 1.0;
  if (param_1 <= 1.0) {
    fVar3 = param_1;
  }
  fVar4 = 0.0;
  if (0.0 <= param_1) {
    fVar4 = fVar3;
  }
  uVar2 = func_0x0332ee6c(fVar4,(long)param_2 + 0xe4,*(undefined8 *)puVar1);
  if ((uVar2 & 1) != 0) {
                    /* WARNING: Could not recover jumptable at 0x02c28310. Too many branches */
                    /* WARNING: Treating indirect jump as call */
    (**(code **)(*param_2 + 0x2f8))(param_2,*(undefined8 *)(*param_2 + 0x300));
    return;
  }
  return;
}

