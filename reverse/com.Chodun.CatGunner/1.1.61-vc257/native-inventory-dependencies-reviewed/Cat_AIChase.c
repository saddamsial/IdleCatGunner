/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b40094, Ghidra VA 02c40094. */

void Cat_AIChase(long param_1)

{
  undefined *puVar1;
  ulong uVar2;
  long lVar3;
  undefined8 uVar4;
  float fVar5;
  float fVar6;
  float fVar7;
  float fVar8;
  float fVar9;
  float fVar10;
  
  puVar1 = PTR_DAT_05e591c0;
  if ((bRam000000000625c09f & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e591c0);
    bRam000000000625c09f = 1;
  }
  uVar4 = *(undefined8 *)(param_1 + 0x1e0);
  if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  uVar2 = Object_op_Equality_0x6000dec(uVar4,0,0);
  if ((uVar2 & 1) != 0) {
    return;
  }
  fVar7 = *(float *)(param_1 + 0x1ec);
  fVar9 = *(float *)(param_1 + 0x1f0);
  fVar5 = (float)Cat_GetApproachPosition_0x6000752
                           (*(undefined4 *)(param_1 + 0x1e8),fVar7,fVar9,
                            *(undefined4 *)(param_1 + 0x150),param_1);
  fVar8 = fVar7;
  fVar10 = fVar9;
  lVar3 = Component_get_transform_0x6000c82(param_1,0);
  if (lVar3 == 0) {
                    /* WARNING: Subroutine does not return */
    Throw_NullReference_Wrapper();
  }
  fVar6 = (float)Transform_get_position_0x6000f4d(lVar3,0);
  if (cRam000000000625c0be == '\0') {
    func_0x029f5a50(PTR_DAT_05e59000);
    cRam000000000625c0be = '\x01';
  }
  if (*(int *)(*(long *)PTR_DAT_05e59000 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  if (SQRT((fVar10 - fVar9) * (fVar10 - fVar9) +
           (fVar6 - fVar5) * (fVar6 - fVar5) + (fVar8 - fVar7) * (fVar8 - fVar7)) < 0.5) {
    Cat_SmoothStop_0x600074e();
    return;
  }
  Cat_SmoothMoveTowardWithAvoidance_0x600074d(fVar5,fVar7,fVar9,param_1);
  return;
}

