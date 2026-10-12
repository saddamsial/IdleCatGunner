/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b3a3a8, Ghidra VA 02c3a3a8. */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void Cat_Update(undefined1 param_1 [16],float param_2,long param_3)

{
  undefined *puVar1;
  long lVar2;
  ulong uVar3;
  undefined8 uVar4;
  float fVar5;
  undefined4 uVar6;
  float fVar7;
  
  if ((bRam000000000625c08e & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5d338);
    func_0x029f5a50(PTR_DAT_05e591c0);
    func_0x029f5a50(PTR_DAT_05e5d368);
    bRam000000000625c08e = 1;
  }
  puVar1 = PTR_DAT_05e5d338;
  if (*(char *)(param_3 + 0x1b0) != '\0') {
    lVar2 = *(long *)PTR_DAT_05e5d338;
    if (*(int *)(lVar2 + 0xe4) == 0) {
      func_0x029f5bd0();
      lVar2 = *(long *)puVar1;
    }
    if (**(char **)(lVar2 + 0xb8) == '\0') {
      Cat_ClearNearObj(param_3);
      Cat_SmoothStop(param_3);
      if (cRam000000000625b26f == '\0') {
        func_0x029f5a50(PTR_DAT_05e58bf8);
        cRam000000000625b26f = '\x01';
      }
      uVar6 = *(undefined4 *)(*(undefined8 **)(*(long *)PTR_DAT_05e58bf8 + 0xb8) + 1);
      *(undefined8 *)(param_3 + 0x20c) = **(undefined8 **)(*(long *)PTR_DAT_05e58bf8 + 0xb8);
      *(undefined4 *)(param_3 + 0x214) = uVar6;
    }
    else {
      Cat_HandleAI(param_3);
    }
LAB_02c3a528:
    Cat_UpdateHandRotation(param_3);
    Cat_UpdateFaceRotation(param_3);
    return;
  }
  Cat_RecordBreadcrumb(param_3);
  Cat_RecordLeaderHistory(param_3);
  lVar2 = *(long *)puVar1;
  if (*(int *)(lVar2 + 0xe4) == 0) {
    func_0x029f5bd0();
    lVar2 = *(long *)puVar1;
  }
  if (**(char **)(lVar2 + 0xb8) == '\0') {
    Cat_HandleMovement(param_3);
    Cat_ClearNearObj(param_3);
    Cat_ClearAutoTarget(param_3);
    goto LAB_02c3a528;
  }
  Cat_HandleRaycastTimer(param_3);
  Cat_ResolveAttackTarget(param_3);
  Cat_UpdateSpreadState(param_3);
  puVar1 = PTR_DAT_05e591c0;
  uVar4 = *(undefined8 *)(param_3 + 0x28);
  if (*(int *)(*(long *)PTR_DAT_05e591c0 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  uVar3 = Object_op_Inequality_0x6000ded(uVar4,0,0);
  if ((uVar3 & 1) == 0) {
    if (cRam000000000625b271 == '\0') {
      func_0x029f5a50(PTR_DAT_05e59608);
      cRam000000000625b271 = '\x01';
    }
    fVar5 = **(float **)(*(long *)PTR_DAT_05e59608 + 0xb8);
    param_2 = (*(float **)(*(long *)PTR_DAT_05e59608 + 0xb8))[1];
  }
  else {
    if (*(long *)(param_3 + 0x28) == 0) goto LAB_02c3a674;
    fVar5 = (float)Joystick_get_Direction(*(long *)(param_3 + 0x28),0);
  }
  if ((*(char *)(param_3 + 0x14c) == '\0') || (_UNK_0116c200 <= fVar5 * fVar5 + param_2 * param_2))
  {
    Cat_ClearAutoTarget(param_3);
    Cat_HandleMovement(param_3);
  }
  else {
    Cat_HandleAutoMove(param_3);
  }
  if (**(long **)(*(long *)PTR_DAT_05e5d368 + 0xb8) != 0) {
    if (*(int *)(**(long **)(*(long *)PTR_DAT_05e5d368 + 0xb8) + 0x20) == 4) {
      Cat_ClampToMonsterRadius(param_3);
    }
    Cat_UpdateHandRotation(param_3);
    Cat_UpdateFaceRotation(param_3);
    fVar7 = *(float *)(param_3 + 0xac);
    fVar5 = (float)Time_get_deltaTime_0x6000ee5(0);
    fVar7 = fVar7 + fVar5;
    *(float *)(param_3 + 0xac) = fVar7;
    if (*(float *)(param_3 + 0xb0) <= fVar7) {
      uVar4 = *(undefined8 *)(param_3 + 0x1e0);
      if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
        func_0x029f5bd0();
      }
      uVar3 = Object_op_Inequality_0x6000ded(uVar4,0,0);
      if ((uVar3 & 1) != 0) {
        *(undefined4 *)(param_3 + 0xac) = 0;
        uVar3 = Cat_Attack(param_3,*(undefined8 *)(param_3 + 0x1e0));
        if ((uVar3 & 1) == 0) {
          fVar7 = *(float *)(param_3 + 0xb0);
          fVar5 = (float)Time_get_deltaTime_0x6000ee5(0);
          *(float *)(param_3 + 0xac) = fVar7 - fVar5;
        }
      }
    }
    return;
  }
LAB_02c3a674:
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

