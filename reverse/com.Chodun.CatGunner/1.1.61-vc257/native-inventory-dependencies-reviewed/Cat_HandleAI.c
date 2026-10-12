/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b3dba0, Ghidra VA 02c3dba0. */

void Cat_HandleAI(undefined1 param_1 [16],float param_2,float param_3,long param_4)

{
  undefined *puVar1;
  undefined *puVar2;
  int iVar3;
  long lVar4;
  ulong uVar5;
  int iVar6;
  long lVar7;
  undefined8 uVar8;
  float fVar9;
  float fVar10;
  float fVar11;
  float fVar12;
  float fVar13;
  float fVar14;
  
  puVar2 = PTR_DAT_05e631d8;
  if ((bRam000000000625c09c & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e631d8);
    func_0x029f5a50(PTR_DAT_05e591c0);
    func_0x029f5a50(PTR_DAT_05e5d368);
    bRam000000000625c09c = 1;
  }
  puVar1 = PTR_DAT_05e591c0;
  lVar4 = *(long *)puVar2;
  if (*(int *)(lVar4 + 0xe4) == 0) {
    func_0x029f5bd0();
    lVar4 = *(long *)puVar2;
  }
  lVar7 = *(long *)puVar1;
  lVar4 = *(long *)(*(long *)(lVar4 + 0xb8) + 0x68);
  if (*(int *)(lVar7 + 0xe4) == 0) {
    func_0x029f5bd0(lVar7);
  }
  uVar5 = Object_op_Equality_0x6000dec(lVar4,0,0);
  if ((uVar5 & 1) != 0) {
    return;
  }
  if (**(long **)(*(long *)PTR_DAT_05e5d368 + 0xb8) != 0) {
    if (*(int *)(**(long **)(*(long *)PTR_DAT_05e5d368 + 0xb8) + 0x20) == 4) {
      Cat_HandleAIMonster_0x6000737(param_4);
      return;
    }
    Cat_HandleRaycastTimer_0x6000755(param_4);
    Cat_UpdateSpreadState_0x6000738(param_4);
    lVar7 = Component_get_transform_0x6000c82(param_4,0);
    if (((lVar7 != 0) && (fVar9 = (float)Transform_get_position_0x6000f4d(lVar7,0), lVar4 != 0)) &&
       (fVar13 = param_2, fVar12 = param_3, lVar7 = Component_get_transform_0x6000c82(lVar4,0),
       lVar7 != 0)) {
      fVar10 = (float)Transform_get_position_0x6000f4d(lVar7,0);
      if (cRam000000000625c0be == '\0') {
        func_0x029f5a50(PTR_DAT_05e59000);
        cRam000000000625c0be = '\x01';
      }
      if (*(int *)(*(long *)PTR_DAT_05e59000 + 0xe4) == 0) {
        func_0x029f5bd0();
      }
      fVar14 = *(float *)(param_4 + 0x22c);
      fVar11 = (float)Time_get_deltaTime_0x6000ee5(0);
      *(float *)(param_4 + 0x22c) = fVar14 + fVar11;
      iVar3 = Cat_EvaluateDesiredState_0x6000746
                        (SQRT((param_3 - fVar12) * (param_3 - fVar12) +
                              (fVar9 - fVar10) * (fVar9 - fVar10) +
                              (param_2 - fVar13) * (param_2 - fVar13)),param_4,lVar4);
      iVar6 = iVar3;
      if ((iVar3 != *(int *)(param_4 + 0x208)) &&
         (iVar6 = *(int *)(param_4 + 0x208),
         *(float *)(param_4 + 0x21c) <= *(float *)(param_4 + 0x22c))) {
        *(int *)(param_4 + 0x208) = iVar3;
        *(undefined4 *)(param_4 + 0x22c) = 0;
        iVar6 = iVar3;
      }
      if (iVar6 < 2) {
        if (iVar6 == 0) {
          Cat_AIFollow(param_4);
        }
        else if (iVar6 == 1) {
          Cat_AIChase(param_4);
        }
      }
      else if (iVar6 == 2) {
        Cat_AIAttackStay(param_4);
      }
      else if (iVar6 == 3) {
        Cat_AIReposition(param_4);
      }
      else if (iVar6 == 4) {
        Cat_AIAssist(param_4,lVar4);
      }
      fVar13 = *(float *)(param_4 + 0xac);
      fVar9 = (float)Time_get_deltaTime_0x6000ee5(0);
      fVar13 = fVar13 + fVar9;
      *(float *)(param_4 + 0xac) = fVar13;
      if (fVar13 < *(float *)(param_4 + 0xb0)) {
        return;
      }
      uVar8 = *(undefined8 *)(param_4 + 0x1e0);
      if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
        func_0x029f5bd0();
      }
      uVar5 = Object_op_Inequality_0x6000ded(uVar8,0,0);
      if ((uVar5 & 1) == 0) {
        return;
      }
      *(undefined4 *)(param_4 + 0xac) = 0;
      uVar5 = Cat_Attack_0x6000760(param_4,*(undefined8 *)(param_4 + 0x1e0));
      if ((uVar5 & 1) != 0) {
        return;
      }
      fVar13 = *(float *)(param_4 + 0xb0);
      fVar9 = (float)Time_get_deltaTime_0x6000ee5(0);
      *(float *)(param_4 + 0xac) = fVar13 - fVar9;
      return;
    }
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

