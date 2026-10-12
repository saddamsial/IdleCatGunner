/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b456b4, Ghidra VA 02c456b4. */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

undefined8
_MoveToPoint_d__20_MoveNext(undefined1 param_1 [16],undefined4 param_2,float param_3,long param_4)

{
  undefined *puVar1;
  long lVar2;
  undefined4 *puVar3;
  long lVar4;
  float fVar5;
  undefined8 uVar6;
  undefined4 uVar7;
  float fVar8;
  float fVar9;
  float fVar10;
  
  if ((bRam000000000625c0d7 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5d338);
    func_0x029f5a50(PTR_DAT_05e61878);
    bRam000000000625c0d7 = 1;
  }
  lVar4 = *(long *)(param_4 + 0x30);
  if (*(int *)(param_4 + 0x10) == 1) {
    *(undefined4 *)(param_4 + 0x10) = 0xffffffff;
  }
  else {
    if (*(int *)(param_4 + 0x10) != 0) {
      return 0;
    }
    *(undefined4 *)(param_4 + 0x10) = 0xffffffff;
    if ((lVar4 == 0) || (lVar2 = Component_get_transform_0x6000c82(lVar4,0), lVar2 == 0))
    goto LAB_02c45a2c;
    Transform_get_position_0x6000f4d(lVar2,0);
    lVar2 = *(long *)(lVar4 + 0x38);
    *(undefined4 *)(param_4 + 0x24) = param_2;
    if (lVar2 == 0) goto LAB_02c45a2c;
    Animator_SetBool_0x6000033(lVar2,*(undefined8 *)PTR_DAT_05e61878,1,0);
  }
  puVar1 = PTR_DAT_05e5d338;
  lVar2 = *(long *)PTR_DAT_05e5d338;
  if (*(int *)(lVar2 + 0xe4) == 0) {
    func_0x029f5bd0();
    lVar2 = *(long *)puVar1;
  }
  if (**(char **)(lVar2 + 0xb8) == '\0') {
    if (lVar4 != 0) {
      lVar4 = *(long *)(lVar4 + 0x40);
      if (cRam000000000625b26f == '\0') {
        func_0x029f5a50(PTR_DAT_05e58bf8);
        cRam000000000625b26f = '\x01';
      }
      if (lVar4 != 0) {
        puVar3 = *(undefined4 **)(*(long *)PTR_DAT_05e58bf8 + 0xb8);
        Rigidbody_set_linearVelocity_0x6000096(*puVar3,puVar3[1],puVar3[2],lVar4,0);
        return 0;
      }
    }
  }
  else {
    if (lVar4 == 0) goto LAB_02c45a2c;
    fVar9 = *(float *)(param_4 + 0x20);
    fVar10 = *(float *)(param_4 + 0x28);
    lVar2 = Component_get_transform_0x6000c82(lVar4,0);
    if (lVar2 == 0) goto LAB_02c45a2c;
    fVar5 = (float)Transform_get_position_0x6000f4d(lVar2,0);
    if (cRam000000000625bae8 == '\0') {
      func_0x029f5a50(PTR_DAT_05e59000);
      cRam000000000625bae8 = '\x01';
    }
    puVar1 = PTR_DAT_05e59000;
    fVar9 = fVar9 - fVar5;
    fVar10 = fVar10 - param_3;
    if (*(int *)(*(long *)PTR_DAT_05e59000 + 0xe4) == 0) {
      func_0x029f5bd0();
    }
    lVar2 = *(long *)(lVar4 + 0x40);
    fVar5 = SQRT(fVar9 * fVar9 + fVar10 * fVar10);
    if (fVar5 <= *(float *)(lVar4 + 0x5c)) {
      if (cRam000000000625b26f == '\0') {
        func_0x029f5a50(PTR_DAT_05e58bf8);
        cRam000000000625b26f = '\x01';
      }
      if (lVar2 != 0) {
        puVar3 = *(undefined4 **)(*(long *)PTR_DAT_05e58bf8 + 0xb8);
        Rigidbody_set_linearVelocity_0x6000096(*puVar3,puVar3[1],puVar3[2],lVar2,0);
        if (*(long *)(lVar4 + 0x38) != 0) {
          Animator_SetBool_0x6000033(*(long *)(lVar4 + 0x38),*(undefined8 *)PTR_DAT_05e61878,0,0);
          return 0;
        }
      }
      goto LAB_02c45a2c;
    }
    if (cRam000000000625b52e == '\0') {
      func_0x029f5a50(PTR_DAT_05e59000);
      cRam000000000625b52e = '\x01';
    }
    if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
      func_0x029f5bd0();
    }
    if (fVar5 <= _UNK_0116c240) {
      if (cRam000000000625b26f == '\0') {
        func_0x029f5a50(PTR_DAT_05e58bf8);
        cRam000000000625b26f = '\x01';
      }
      uVar6 = **(undefined8 **)(*(long *)PTR_DAT_05e58bf8 + 0xb8);
      fVar10 = *(float *)(*(undefined8 **)(*(long *)PTR_DAT_05e58bf8 + 0xb8) + 1);
    }
    else {
      uVar6 = CONCAT44(0.0 / fVar5,fVar9 / fVar5);
      fVar10 = fVar10 / fVar5;
    }
    if (lVar2 == 0) goto LAB_02c45a2c;
    fVar8 = *(float *)(lVar4 + 0x58);
    fVar5 = (float)((ulong)uVar6 >> 0x20) * fVar8;
    Rigidbody_set_linearVelocity_0x6000096
              (CONCAT44(fVar5,(float)uVar6 * fVar8),fVar5,fVar10 * fVar8,lVar2,0);
    if (fVar9 <= 0.0) {
      if (0.0 <= fVar9) goto LAB_02c459f8;
      lVar4 = *(long *)(lVar4 + 0x50);
      uVar7 = 0;
    }
    else {
      lVar4 = *(long *)(lVar4 + 0x50);
      uVar7 = _UNK_0116c1ac;
    }
    Quaternion_Internal_FromEulerRad_0x6000a4b(0,uVar7,0,0);
    if (lVar4 != 0) {
      Transform_set_localRotation_0x6000f5c(lVar4,0);
LAB_02c459f8:
      *(undefined8 *)(param_4 + 0x18) = 0;
      Managed_WriteBarrier((undefined8 *)(param_4 + 0x18),0);
      *(undefined4 *)(param_4 + 0x10) = 1;
      return 1;
    }
  }
LAB_02c45a2c:
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

