/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b3b64c, Ghidra VA 02c3b64c. */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void Cat_UpdateFaceRotation
               (undefined1 param_1 [16],undefined1 param_2 [16],float param_3,long param_4)

{
  undefined *puVar1;
  ulong uVar2;
  long lVar3;
  float *pfVar4;
  undefined8 uVar5;
  float fVar6;
  float fVar7;
  undefined4 uVar8;
  float fVar9;
  undefined4 uVar10;
  uint uVar11;
  undefined4 uVar12;
  float fVar13;
  
  puVar1 = PTR_DAT_05e591c0;
  if ((bRam000000000625c0b0 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e631d8);
    func_0x029f5a50(PTR_DAT_05e591c0);
    bRam000000000625c0b0 = 1;
  }
  uVar5 = *(undefined8 *)(param_4 + 0x1e0);
  if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  uVar2 = Object_op_Inequality_0x6000ded(uVar5,0,0);
  if ((uVar2 & 1) == 0) {
    if (*(char *)(param_4 + 0x1b0) == '\0') {
      uVar5 = *(undefined8 *)(param_4 + 0x28);
      if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
        func_0x029f5bd0();
      }
      uVar2 = Object_op_Inequality_0x6000ded(uVar5,0,0);
      if ((uVar2 & 1) == 0) {
        if (cRam000000000625b271 == '\0') {
          func_0x029f5a50(PTR_DAT_05e59608);
          cRam000000000625b271 = '\x01';
        }
      }
      else {
        if (*(long *)(param_4 + 0x28) == 0) goto LAB_02c3ba70;
        Joystick_get_Direction(*(long *)(param_4 + 0x28),0);
      }
      fVar9 = 0.0;
      fVar6 = _UNK_0116c0e0;
      Quaternion_Internal_FromEulerRad_0x6000a4b(0,0);
      fVar7 = (float)Quaternion_op_Multiply_0x6000a54(0);
    }
    else {
      fVar7 = *(float *)(param_4 + 0x20c);
      fVar6 = *(float *)(param_4 + 0x210);
      fVar9 = *(float *)(param_4 + 0x214);
    }
    puVar1 = PTR_DAT_05e631d8;
    fVar13 = fVar7 * fVar7 + fVar6 * fVar6 + fVar9 * fVar9;
    if (_UNK_0116c200 < fVar13) {
      lVar3 = *(long *)PTR_DAT_05e631d8;
      if (*(int *)(lVar3 + 0xe4) == 0) {
        func_0x029f5bd0();
        lVar3 = *(long *)puVar1;
      }
      lVar3 = *(long *)(lVar3 + 0xb8);
      uVar8 = *(undefined4 *)(lVar3 + 0x44);
      uVar10 = *(undefined4 *)(lVar3 + 0x48);
      uVar11 = *(uint *)(lVar3 + 0x4c);
      uVar12 = *(undefined4 *)(lVar3 + 0x50);
      if (cRam000000000625b52e == '\0') {
        func_0x029f5a50(PTR_DAT_05e59000);
        cRam000000000625b52e = '\x01';
      }
      if (*(int *)(*(long *)PTR_DAT_05e59000 + 0xe4) == 0) {
        func_0x029f5bd0();
      }
      fVar13 = SQRT(fVar13);
      if (fVar13 <= _UNK_0116c240) {
LAB_02c3b90c:
        if (cRam000000000625b26f == '\0') {
          func_0x029f5a50(PTR_DAT_05e58bf8);
          cRam000000000625b26f = '\x01';
        }
        pfVar4 = *(float **)(*(long *)PTR_DAT_05e58bf8 + 0xb8);
        fVar7 = *pfVar4;
        fVar6 = pfVar4[1];
        fVar9 = pfVar4[2];
      }
      else {
        fVar7 = fVar7 / fVar13;
        fVar6 = fVar6 / fVar13;
        fVar9 = fVar9 / fVar13;
      }
LAB_02c3b944:
      uVar2 = (ulong)uVar11;
      uVar5 = Quaternion_op_Multiply_0x6000a54(uVar8,uVar10,uVar2,uVar12,fVar7,fVar6,fVar9,0);
      func_0x05afb2e0(uVar5,uVar2 & 0xffffffff);
    }
  }
  else {
    fVar7 = *(float *)(param_4 + 0x1e8);
    fVar9 = *(float *)(param_4 + 0x1f0);
    lVar3 = Component_get_transform_0x6000c82(param_4,0);
    if (lVar3 == 0) goto LAB_02c3ba70;
    fVar6 = (float)Transform_get_position_0x6000f4d(lVar3,0);
    puVar1 = PTR_DAT_05e631d8;
    fVar7 = fVar7 - fVar6;
    fVar9 = fVar9 - param_3;
    fVar13 = fVar7 * fVar7 + fVar9 * fVar9;
    if (_UNK_0116c200 < fVar13) {
      lVar3 = *(long *)PTR_DAT_05e631d8;
      if (*(int *)(lVar3 + 0xe4) == 0) {
        func_0x029f5bd0();
        lVar3 = *(long *)puVar1;
      }
      lVar3 = *(long *)(lVar3 + 0xb8);
      uVar8 = *(undefined4 *)(lVar3 + 0x44);
      uVar10 = *(undefined4 *)(lVar3 + 0x48);
      uVar11 = *(uint *)(lVar3 + 0x4c);
      uVar12 = *(undefined4 *)(lVar3 + 0x50);
      if (cRam000000000625b52e == '\0') {
        func_0x029f5a50(PTR_DAT_05e59000);
        cRam000000000625b52e = '\x01';
      }
      if (*(int *)(*(long *)PTR_DAT_05e59000 + 0xe4) == 0) {
        func_0x029f5bd0();
      }
      fVar13 = SQRT(fVar13);
      if (fVar13 <= _UNK_0116c240) goto LAB_02c3b90c;
      fVar7 = fVar7 / fVar13;
      fVar6 = 0.0 / fVar13;
      fVar9 = fVar9 / fVar13;
      goto LAB_02c3b944;
    }
  }
  if (*(long *)(param_4 + 200) != 0) {
    Transform_get_localEulerAngles_0x6000f53(*(long *)(param_4 + 200),0);
    Time_get_deltaTime_0x6000ee5(0);
    if (*(long *)(param_4 + 200) != 0) {
      Transform_get_localEulerAngles_0x6000f53(*(long *)(param_4 + 200),0);
      if (*(long *)(param_4 + 200) != 0) {
        Transform_set_localEulerAngles_0x6000f54(*(long *)(param_4 + 200),0);
        return;
      }
    }
  }
LAB_02c3ba70:
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

