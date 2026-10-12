/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b45a7c, Ghidra VA 02c45a7c. */

undefined8 _WanderRoutine_d__19_MoveNext(long param_1)

{
  uint uVar1;
  undefined *puVar2;
  long lVar3;
  undefined8 uVar4;
  undefined4 uVar5;
  undefined4 *puVar6;
  long lVar7;
  long lVar8;
  float fVar9;
  float fVar10;
  
  if ((bRam000000000625c0d8 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5d338);
    func_0x029f5a50(PTR_DAT_05e61878);
    bRam000000000625c0d8 = 1;
  }
  puVar2 = PTR_DAT_05e5d338;
  uVar1 = *(uint *)(param_1 + 0x10);
  lVar3 = 0;
  lVar7 = *(long *)(param_1 + 0x20);
  if ((int)uVar1 < 3) {
    if (uVar1 < 2) {
      *(undefined4 *)(param_1 + 0x10) = 0xffffffff;
    }
    else {
      if (uVar1 != 2) {
        return 0;
      }
      *(undefined4 *)(param_1 + 0x10) = 0xffffffff;
      if (lVar7 == 0) goto LAB_02c45d18;
      fVar9 = (float)Random_Range_0x6000ba6
                               (*(undefined4 *)(lVar7 + 0x60),*(undefined4 *)(lVar7 + 100),0);
      fVar10 = 0.0;
      *(float *)(param_1 + 0x28) = fVar9;
      *(undefined4 *)(param_1 + 0x2c) = 0;
LAB_02c45b34:
      if (fVar10 < fVar9) {
        lVar3 = *(long *)puVar2;
        if (*(int *)(lVar3 + 0xe4) == 0) {
          func_0x029f5bd0();
          lVar3 = *(long *)puVar2;
        }
        if (**(char **)(lVar3 + 0xb8) != '\0') {
          fVar10 = *(float *)(param_1 + 0x2c);
          fVar9 = (float)Time_get_deltaTime_0x6000ee5(0);
          *(undefined8 *)(param_1 + 0x18) = 0;
          *(float *)(param_1 + 0x2c) = fVar10 + fVar9;
          Managed_WriteBarrier((undefined8 *)(param_1 + 0x18),0);
          uVar5 = 4;
          goto LAB_02c45cfc;
        }
        if (lVar7 == 0) goto LAB_02c45d18;
        lVar8 = *(long *)(lVar7 + 0x40);
        if (cRam000000000625b26f == '\0') {
          lVar3 = func_0x029f5a50(PTR_DAT_05e58bf8);
          cRam000000000625b26f = '\x01';
        }
        if (lVar8 == 0) goto LAB_02c45d18;
        puVar6 = *(undefined4 **)(*(long *)PTR_DAT_05e58bf8 + 0xb8);
        Rigidbody_set_linearVelocity_0x6000096(*puVar6,puVar6[1],puVar6[2],lVar8,0);
        goto LAB_02c45be4;
      }
    }
  }
  else {
    if (uVar1 != 3) {
      if (uVar1 != 4) {
        return 0;
      }
      fVar9 = *(float *)(param_1 + 0x28);
      fVar10 = *(float *)(param_1 + 0x2c);
      *(undefined4 *)(param_1 + 0x10) = 0xffffffff;
      goto LAB_02c45b34;
    }
    *(undefined4 *)(param_1 + 0x10) = 0xffffffff;
LAB_02c45be4:
    lVar3 = *(long *)puVar2;
    if (*(int *)(lVar3 + 0xe4) == 0) {
      func_0x029f5bd0();
      lVar3 = *(long *)puVar2;
    }
    if (**(char **)(lVar3 + 0xb8) == '\0') {
      *(undefined8 *)(param_1 + 0x18) = 0;
      Managed_WriteBarrier((undefined8 *)(param_1 + 0x18),0);
      uVar5 = 3;
      goto LAB_02c45cfc;
    }
  }
  lVar3 = *(long *)puVar2;
  if (*(int *)(lVar3 + 0xe4) == 0) {
    func_0x029f5bd0();
    lVar3 = *(long *)puVar2;
  }
  if (**(char **)(lVar3 + 0xb8) == '\0') {
    if (lVar7 != 0) {
      lVar8 = *(long *)(lVar7 + 0x40);
      if (cRam000000000625b26f == '\0') {
        lVar3 = func_0x029f5a50(PTR_DAT_05e58bf8);
        cRam000000000625b26f = '\x01';
      }
      if (lVar8 != 0) {
        puVar6 = *(undefined4 **)(*(long *)PTR_DAT_05e58bf8 + 0xb8);
        Rigidbody_set_linearVelocity_0x6000096(*puVar6,puVar6[1],puVar6[2],lVar8,0);
        lVar3 = 0;
        if (*(long *)(lVar7 + 0x38) != 0) {
          Animator_SetBool_0x6000033(*(long *)(lVar7 + 0x38),*(undefined8 *)PTR_DAT_05e61878,0,0);
          *(undefined8 *)(param_1 + 0x18) = 0;
          Managed_WriteBarrier((undefined8 *)(param_1 + 0x18),0);
          uVar5 = 1;
          goto LAB_02c45cfc;
        }
      }
    }
  }
  else if (lVar7 != 0) {
    Boss_PickWanderPoint(lVar7);
    uVar4 = Boss_MoveToPoint(lVar7);
    uVar4 = MonoBehaviour_StartCoroutine_0x6000d43(lVar7,uVar4,0);
    *(undefined8 *)(param_1 + 0x18) = uVar4;
    Managed_WriteBarrier();
    uVar5 = 2;
LAB_02c45cfc:
    *(undefined4 *)(param_1 + 0x10) = uVar5;
    return 1;
  }
LAB_02c45d18:
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper(lVar3);
}

