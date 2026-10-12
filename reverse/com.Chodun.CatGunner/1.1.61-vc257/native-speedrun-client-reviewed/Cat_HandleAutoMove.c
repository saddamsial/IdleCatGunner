/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b3c100, Ghidra VA 02c3c100. */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void Cat_HandleAutoMove(undefined1 param_1 [16],undefined1 param_2 [16],float param_3,long param_4)

{
  int iVar1;
  undefined *puVar2;
  undefined *puVar3;
  undefined *puVar4;
  ulong uVar5;
  long lVar6;
  float *pfVar7;
  undefined4 *puVar8;
  undefined4 *puVar9;
  undefined4 *puVar10;
  undefined8 uVar11;
  long lVar12;
  long *plVar13;
  float fVar14;
  float fVar15;
  float fVar16;
  float fVar17;
  undefined4 uVar18;
  float fVar19;
  float fVar20;
  undefined4 uVar21;
  float fVar22;
  undefined4 uVar23;
  float fVar24;
  float fVar25;
  undefined4 uVar26;
  float fVar27;
  float fVar28;
  float fVar29;
  float fVar30;
  float fVar31;
  
  puVar4 = PTR_DAT_05e5d368;
  if ((bRam000000000625c092 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e631d8);
    func_0x029f5a50(PTR_DAT_05e591c0);
    func_0x029f5a50(PTR_DAT_05e5e070);
    func_0x029f5a50(PTR_DAT_05e5d368);
    func_0x029f5a50(PTR_DAT_05e61878);
    bRam000000000625c092 = 1;
  }
  puVar3 = PTR_DAT_05e591c0;
  if (**(long **)(*(long *)puVar4 + 0xb8) == 0) goto LAB_02c3d230;
  if (*(int *)(**(long **)(*(long *)puVar4 + 0xb8) + 0x20) == 1) {
    uVar11 = *(undefined8 *)(param_4 + 0x1e0);
    if (*(int *)(*(long *)PTR_DAT_05e591c0 + 0xe4) == 0) {
      func_0x029f5bd0();
    }
    uVar5 = Object_op_Inequality_0x6000ded(uVar11,0,0);
    if ((uVar5 & 1) == 0) {
      fVar14 = *(float *)(param_4 + 0x174);
      fVar24 = (float)Time_get_deltaTime_0x6000ee5(0);
      fVar14 = fVar14 + fVar24;
      *(float *)(param_4 + 0x174) = fVar14;
      if (fVar14 < *(float *)(param_4 + 0x160)) {
        uVar11 = *(undefined8 *)(param_4 + 0x178);
        if (*(int *)(*(long *)puVar3 + 0xe4) == 0) {
          func_0x029f5bd0();
        }
        uVar5 = Object_op_Equality_0x6000dec(uVar11,0,0);
        if ((uVar5 & 1) == 0) {
          uVar11 = *(undefined8 *)(param_4 + 0x178);
          if (*(int *)(*(long *)puVar3 + 0xe4) == 0) {
            func_0x029f5bd0();
          }
          uVar5 = Object_op_Inequality_0x6000ded(uVar11,0,0);
          if ((uVar5 & 1) != 0) {
            if ((*(long *)(param_4 + 0x178) == 0) ||
               (lVar6 = Component_get_gameObject_0x6000c83(*(long *)(param_4 + 0x178),0), lVar6 == 0
               )) goto LAB_02c3d230;
            uVar5 = GameObject_get_activeInHierarchy_0x6000d00(lVar6,0);
            if ((uVar5 & 1) == 0) goto LAB_02c3c2c4;
          }
          goto LAB_02c3c414;
        }
      }
LAB_02c3c2c4:
      *(undefined4 *)(param_4 + 0x174) = 0;
      uVar11 = Cat_FindNearestTreeSpeedRun(param_4);
LAB_02c3c404:
      *(undefined8 *)(param_4 + 0x178) = uVar11;
      Managed_WriteBarrier(param_4 + 0x178,uVar11);
    }
    else {
      if (*(long *)(param_4 + 0x1e0) == 0) goto LAB_02c3d230;
      uVar11 = Component_get_transform_0x6000c82(*(long *)(param_4 + 0x1e0),0);
      *(undefined8 *)(param_4 + 0x178) = uVar11;
      Managed_WriteBarrier(param_4 + 0x178,uVar11);
      *(undefined4 *)(param_4 + 0x174) = 0;
    }
  }
  else {
    fVar14 = *(float *)(param_4 + 0x174);
    fVar24 = (float)Time_get_deltaTime_0x6000ee5(0);
    fVar14 = fVar14 + fVar24;
    *(float *)(param_4 + 0x174) = fVar14;
    if (*(float *)(param_4 + 0x160) <= fVar14) {
LAB_02c3c240:
      lVar6 = *(long *)puVar4;
      *(undefined4 *)(param_4 + 0x174) = 0;
      puVar3 = PTR_DAT_05e5e070;
      if (**(long **)(lVar6 + 0xb8) == 0) goto LAB_02c3d230;
      iVar1 = *(int *)(**(long **)(lVar6 + 0xb8) + 0x20);
      if (iVar1 == 5) {
        lVar6 = *(long *)PTR_DAT_05e5e070;
        if (*(int *)(lVar6 + 0xe4) == 0) {
          func_0x029f5bd0();
          lVar6 = *(long *)puVar3;
        }
        if ((**(long **)(lVar6 + 0xb8) == 0) ||
           (lVar6 = *(long *)(**(long **)(lVar6 + 0xb8) + 0xf0), lVar6 == 0)) goto LAB_02c3d230;
        uVar11 = Component_get_transform_0x6000c82(lVar6,0);
      }
      else if (iVar1 == 3) {
        uVar11 = Cat_FindBossTarget_0x600073d();
      }
      else if (iVar1 == 2) {
        uVar11 = Cat_FindNearestOreMine_0x600073c();
      }
      else {
        uVar11 = Cat_FindNearestTreeByGrid_0x600073a(param_4);
      }
      *(undefined8 *)(param_4 + 0x178) = uVar11;
      Managed_WriteBarrier(param_4 + 0x178,uVar11);
    }
    else {
      uVar11 = *(undefined8 *)(param_4 + 0x178);
      if (*(int *)(*(long *)PTR_DAT_05e591c0 + 0xe4) == 0) {
        func_0x029f5bd0();
      }
      uVar5 = Object_op_Equality_0x6000dec(uVar11,0,0);
      if ((uVar5 & 1) != 0) goto LAB_02c3c240;
    }
    uVar11 = *(undefined8 *)(param_4 + 0x178);
    if (*(int *)(*(long *)PTR_DAT_05e591c0 + 0xe4) == 0) {
      func_0x029f5bd0();
    }
    uVar5 = Object_op_Inequality_0x6000ded(uVar11,0,0);
    if ((uVar5 & 1) != 0) {
      if ((*(long *)(param_4 + 0x178) == 0) ||
         (lVar6 = Component_get_gameObject_0x6000c83(*(long *)(param_4 + 0x178),0), lVar6 == 0))
      goto LAB_02c3d230;
      uVar5 = GameObject_get_activeInHierarchy_0x6000d00(lVar6,0);
      if ((uVar5 & 1) == 0) {
        *(undefined8 *)(param_4 + 0x178) = 0;
        Managed_WriteBarrier(param_4 + 0x178,0);
        if (**(long **)(*(long *)puVar4 + 0xb8) == 0) goto LAB_02c3d230;
        if (*(int *)(**(long **)(*(long *)puVar4 + 0xb8) + 0x20) == 3) {
          uVar11 = Cat_FindBossTarget_0x600073d();
        }
        else {
          uVar11 = Cat_FindNearestTreeByGrid_0x600073a(param_4);
        }
        goto LAB_02c3c404;
      }
    }
  }
LAB_02c3c414:
  plVar13 = (long *)PTR_DAT_05e631d8;
  puVar3 = PTR_DAT_05e591c0;
  if (**(long **)(*(long *)puVar4 + 0xb8) == 0) goto LAB_02c3d230;
  if (*(int *)(**(long **)(*(long *)puVar4 + 0xb8) + 0x20) == 4) {
    lVar6 = *(long *)PTR_DAT_05e631d8;
    if (*(int *)(lVar6 + 0xe4) == 0) {
      func_0x029f5bd0();
      lVar6 = *plVar13;
    }
    puVar4 = PTR_DAT_05e591c0;
    uVar11 = *(undefined8 *)(param_4 + 0x1e0);
    fVar22 = *(float *)(*(long *)(lVar6 + 0xb8) + 0x54);
    fVar24 = *(float *)(*(long *)(lVar6 + 0xb8) + 0x5c);
    if (*(int *)(*(long *)PTR_DAT_05e591c0 + 0xe4) == 0) {
      func_0x029f5bd0(*(long *)PTR_DAT_05e591c0);
    }
    uVar5 = Object_op_Inequality_0x6000ded(uVar11,0,0);
    if ((uVar5 & 1) == 0) {
      if (*(char *)(param_4 + 0x294) != '\0') {
        fVar14 = *(float *)(param_4 + 0x288);
        fVar20 = *(float *)(param_4 + 0x290);
        goto LAB_02c3c528;
      }
    }
    else {
      if ((*(long *)(param_4 + 0x1e0) == 0) ||
         (fVar20 = param_3, lVar6 = Component_get_transform_0x6000c82(*(long *)(param_4 + 0x1e0),0),
         lVar6 == 0)) goto LAB_02c3d230;
      fVar14 = (float)Transform_get_position_0x6000f4d(lVar6,0);
      if ((*(long *)(param_4 + 0x1e0) == 0) ||
         (lVar6 = Component_get_transform_0x6000c82(*(long *)(param_4 + 0x1e0),0), lVar6 == 0))
      goto LAB_02c3d230;
      Transform_get_position_0x6000f4d(lVar6,0);
      param_3 = fVar20;
LAB_02c3c528:
      fVar20 = fVar20 - fVar24;
      fVar14 = fVar14 - fVar22;
      fVar29 = fVar14 * fVar14 + fVar20 * fVar20;
      if (_UNK_0116c268 < fVar29) {
        if (cRam000000000625b52e == '\0') {
          func_0x029f5a50(PTR_DAT_05e59000);
          cRam000000000625b52e = '\x01';
        }
        if (*(int *)(*(long *)PTR_DAT_05e59000 + 0xe4) == 0) {
          func_0x029f5bd0();
        }
        fVar29 = SQRT(fVar29);
        if (fVar29 <= _UNK_0116c240) {
          if (cRam000000000625b26f == '\0') {
            func_0x029f5a50(PTR_DAT_05e58bf8);
            cRam000000000625b26f = '\x01';
          }
          fVar14 = **(float **)(*(long *)PTR_DAT_05e58bf8 + 0xb8);
          fVar20 = (*(float **)(*(long *)PTR_DAT_05e58bf8 + 0xb8))[2];
        }
        else {
          fVar14 = fVar14 / fVar29;
          fVar20 = fVar20 / fVar29;
        }
        param_3 = 14.0;
        fVar22 = fVar22 + fVar14 * 14.0;
        fVar24 = fVar24 + fVar20 * 14.0;
      }
    }
    lVar6 = Component_get_transform_0x6000c82(param_4,0);
    if (lVar6 == 0) goto LAB_02c3d230;
    Transform_get_position_0x6000f4d(lVar6,0);
    lVar6 = Component_get_transform_0x6000c82(param_4,0);
    if (lVar6 == 0) goto LAB_02c3d230;
    fVar14 = (float)Transform_get_position_0x6000f4d(lVar6,0);
    fVar29 = param_3;
    if (cRam000000000625bae8 == '\0') {
      func_0x029f5a50(PTR_DAT_05e59000);
      cRam000000000625bae8 = '\x01';
    }
    fVar22 = fVar22 - fVar14;
    fVar24 = fVar24 - param_3;
    if (*(int *)(*(long *)PTR_DAT_05e59000 + 0xe4) == 0) {
      func_0x029f5bd0();
    }
    fVar20 = 1.0;
    fVar14 = SQRT(fVar22 * fVar22 + fVar24 * fVar24);
    if (1.0 <= fVar14) {
      fVar22 = fVar22 / fVar14;
      fVar20 = 0.0 / fVar14;
      fVar24 = fVar24 / fVar14;
      if (*(int *)(*plVar13 + 0xe4) == 0) {
        func_0x029f5bd0();
      }
      fVar29 = (float)Cat_ScreenSpeedMultiplier_0x600072b(fVar22,fVar20,fVar24);
      fVar17 = *(float *)(param_4 + 0x20);
      fVar30 = *(float *)(param_4 + 400);
      uVar11 = *(undefined8 *)(param_4 + 0x188);
      fVar15 = (float)Time_get_deltaTime_0x6000ee5(0);
      lVar6 = *(long *)(param_4 + 0x30);
      fVar15 = fVar15 * 8.0;
      fVar14 = 1.0;
      if (fVar15 <= 1.0) {
        fVar14 = fVar15;
      }
      fVar16 = (float)uVar11;
      fVar19 = (float)((ulong)uVar11 >> 0x20);
      fVar25 = 0.0;
      if (0.0 <= fVar15) {
        fVar25 = fVar14;
      }
      fVar14 = (fVar29 * fVar24 * fVar17 - fVar30) * fVar25;
      uVar11 = CONCAT44(fVar19 + (0.0 - fVar19) * fVar25,
                        fVar16 + (fVar29 * fVar22 * fVar17 - fVar16) * fVar25);
      *(undefined8 *)(param_4 + 0x188) = uVar11;
      *(float *)(param_4 + 400) = fVar30 + fVar14;
      if (lVar6 == 0) goto LAB_02c3d230;
      Rigidbody_get_linearVelocity_0x6000095(lVar6,0);
      fVar29 = *(float *)(param_4 + 400);
      Rigidbody_set_linearVelocity_0x6000096(uVar11,lVar6,0);
      uVar11 = *(undefined8 *)(param_4 + 0x1e0);
      lVar6 = *(long *)(*plVar13 + 0xb8);
      uVar18 = *(undefined4 *)(lVar6 + 0x44);
      uVar21 = *(undefined4 *)(lVar6 + 0x48);
      uVar23 = *(undefined4 *)(lVar6 + 0x4c);
      uVar26 = *(undefined4 *)(lVar6 + 0x50);
      if (*(int *)(*(long *)puVar4 + 0xe4) == 0) {
        func_0x029f5bd0();
      }
      uVar5 = Object_op_Inequality_0x6000ded(uVar11,0,0);
      if ((uVar5 & 1) != 0) {
        if ((*(long *)(param_4 + 0x1e0) == 0) ||
           (lVar6 = Component_get_transform_0x6000c82(*(long *)(param_4 + 0x1e0),0), lVar6 == 0))
        goto LAB_02c3d230;
        fVar22 = (float)Transform_get_position_0x6000f4d(lVar6,0);
        fVar20 = fVar14;
        fVar24 = fVar29;
        lVar6 = Component_get_transform_0x6000c82(param_4,0);
        if (lVar6 == 0) goto LAB_02c3d230;
        fVar15 = (float)Transform_get_position_0x6000f4d(lVar6,0);
        fVar22 = fVar22 - fVar15;
        fVar20 = fVar14 - fVar20;
        fVar24 = fVar29 - fVar24;
      }
LAB_02c3cdf0:
      fVar24 = (float)Quaternion_op_Multiply_0x6000a54
                                (uVar18,uVar21,uVar23,uVar26,fVar22,fVar20,fVar24,0);
      lVar6 = *plVar13;
      lVar12 = *(long *)(param_4 + 0xb8);
      iVar1 = *(int *)(lVar6 + 0xe4);
      *(bool *)(param_4 + 0x1f8) = fVar24 <= 0.0;
      if (fVar24 <= 0.0) {
        if (iVar1 == 0) {
          func_0x029f5bd0();
          lVar6 = *plVar13;
        }
        goto LAB_02c3ce88;
      }
      if (iVar1 == 0) {
        func_0x029f5bd0();
        lVar6 = *plVar13;
      }
LAB_02c3cea8:
      lVar6 = *(long *)(lVar6 + 0xb8);
      puVar8 = (undefined4 *)(lVar6 + 0x2c);
      puVar9 = (undefined4 *)(lVar6 + 0x30);
      puVar10 = (undefined4 *)(lVar6 + 0x34);
      goto LAB_02c3ceb8;
    }
    Cat_AutoSmoothStop_0x6000740(param_4);
    uVar11 = *(undefined8 *)(param_4 + 0x1e0);
    if (*(int *)(*(long *)puVar4 + 0xe4) == 0) {
      func_0x029f5bd0();
    }
    uVar5 = Object_op_Inequality_0x6000ded(uVar11,0,0);
    if ((uVar5 & 1) != 0) {
      lVar6 = *plVar13;
      if (*(int *)(lVar6 + 0xe4) == 0) {
        func_0x029f5bd0();
        lVar6 = *plVar13;
      }
      if (*(long *)(param_4 + 0x1e0) == 0) goto LAB_02c3d230;
      lVar6 = *(long *)(lVar6 + 0xb8);
      uVar18 = *(undefined4 *)(lVar6 + 0x44);
      uVar21 = *(undefined4 *)(lVar6 + 0x48);
      uVar23 = *(undefined4 *)(lVar6 + 0x4c);
      uVar26 = *(undefined4 *)(lVar6 + 0x50);
      lVar6 = Component_get_transform_0x6000c82(*(long *)(param_4 + 0x1e0),0);
      if (lVar6 == 0) goto LAB_02c3d230;
      fVar14 = (float)Transform_get_position_0x6000f4d(lVar6,0);
      fVar24 = fVar20;
      fVar15 = fVar29;
      lVar6 = Component_get_transform_0x6000c82(param_4,0);
      if (lVar6 == 0) goto LAB_02c3d230;
      fVar22 = (float)Transform_get_position_0x6000f4d(lVar6,0);
      fVar14 = fVar14 - fVar22;
      fVar20 = fVar20 - fVar24;
      fVar29 = fVar29 - fVar15;
LAB_02c3d178:
      fVar24 = (float)Quaternion_op_Multiply_0x6000a54
                                (uVar18,uVar21,uVar23,uVar26,fVar14,fVar20,fVar29,0);
      lVar6 = *plVar13;
      lVar12 = *(long *)(param_4 + 0xb8);
      iVar1 = *(int *)(lVar6 + 0xe4);
      *(bool *)(param_4 + 0x1f8) = 0.0 > fVar24 || fVar24 == 0.0;
      if (0.0 <= fVar24 && fVar24 != 0.0) {
        if (iVar1 == 0) {
          func_0x029f5bd0();
          lVar6 = *plVar13;
        }
        lVar6 = *(long *)(lVar6 + 0xb8);
        puVar8 = (undefined4 *)(lVar6 + 0x2c);
        puVar9 = (undefined4 *)(lVar6 + 0x30);
        puVar10 = (undefined4 *)(lVar6 + 0x34);
      }
      else {
        if (iVar1 == 0) {
          func_0x029f5bd0();
          lVar6 = *plVar13;
        }
        lVar6 = *(long *)(lVar6 + 0xb8);
        puVar8 = (undefined4 *)(lVar6 + 0x20);
        puVar9 = (undefined4 *)(lVar6 + 0x24);
        puVar10 = (undefined4 *)(lVar6 + 0x28);
      }
      if (lVar12 == 0) goto LAB_02c3d230;
      Transform_set_localEulerAngles_0x6000f54(*puVar8,*puVar9,*puVar10,lVar12,0);
    }
  }
  else {
    uVar11 = *(undefined8 *)(param_4 + 0x178);
    if (*(int *)(*(long *)PTR_DAT_05e591c0 + 0xe4) == 0) {
      func_0x029f5bd0();
    }
    uVar5 = Object_op_Equality_0x6000dec(uVar11,0,0);
    if ((uVar5 & 1) == 0) {
      if (*(long *)(param_4 + 0x178) == 0) goto LAB_02c3d230;
      fVar14 = (float)Transform_get_position_0x6000f4d(*(long *)(param_4 + 0x178),0);
      fVar24 = param_3;
      lVar6 = Component_get_transform_0x6000c82(param_4,0);
      if (lVar6 == 0) goto LAB_02c3d230;
      fVar20 = (float)Transform_get_position_0x6000f4d(lVar6,0);
      lVar6 = Component_get_transform_0x6000c82(param_4,0);
      if (lVar6 == 0) goto LAB_02c3d230;
      Transform_get_position_0x6000f4d(lVar6,0);
      uVar11 = *(undefined8 *)(param_4 + 0x1e0);
      fVar29 = fVar24;
      if (*(int *)(*(long *)puVar3 + 0xe4) == 0) {
        func_0x029f5bd0();
      }
      uVar5 = Object_op_Inequality_0x6000ded(uVar11,0,0);
      fVar15 = param_3;
      fVar22 = fVar14;
      if ((uVar5 & 1) != 0) {
        fVar22 = *(float *)(param_4 + 0x1e8);
        fVar15 = *(float *)(param_4 + 0x1f0);
      }
      if (cRam000000000625c0be == '\0') {
        func_0x029f5a50(PTR_DAT_05e59000);
        cRam000000000625c0be = '\x01';
      }
      puVar2 = PTR_DAT_05e59000;
      if (*(int *)(*(long *)PTR_DAT_05e59000 + 0xe4) == 0) {
        func_0x029f5bd0();
      }
      fVar17 = *(float *)(param_4 + 0x150);
      fVar20 = (fVar20 - fVar22) * (fVar20 - fVar22);
      fVar24 = SQRT((fVar24 - fVar15) * (fVar24 - fVar15) + fVar20);
      if (fVar24 <= fVar17) {
        if (*(float *)(param_4 + 0x1b8) <= fVar24) {
LAB_02c3d0cc:
          Cat_AutoSmoothStop_0x6000740(param_4);
          uVar11 = *(undefined8 *)(param_4 + 0x1e0);
          if (*(int *)(*(long *)puVar3 + 0xe4) == 0) {
            func_0x029f5bd0();
          }
          uVar5 = Object_op_Inequality_0x6000ded(uVar11,0,0);
          if ((uVar5 & 1) != 0) {
            if ((*(long *)(param_4 + 0x1e0) == 0) ||
               (param_3 = fVar29,
               lVar6 = Component_get_transform_0x6000c82(*(long *)(param_4 + 0x1e0),0), lVar6 == 0))
            goto LAB_02c3d230;
            fVar14 = (float)Transform_get_position_0x6000f4d(lVar6,0);
            fVar29 = param_3;
          }
          lVar6 = Component_get_transform_0x6000c82(param_4,0);
          if (lVar6 == 0) goto LAB_02c3d230;
          fVar24 = (float)Transform_get_position_0x6000f4d(lVar6,0);
          plVar13 = (long *)PTR_DAT_05e631d8;
          fVar14 = fVar14 - fVar24;
          fVar29 = param_3 - fVar29;
          lVar6 = *(long *)PTR_DAT_05e631d8;
          if (*(int *)(lVar6 + 0xe4) == 0) {
            func_0x029f5bd0();
            lVar6 = *plVar13;
          }
          lVar6 = *(long *)(lVar6 + 0xb8);
          fVar20 = 0.0;
          uVar18 = *(undefined4 *)(lVar6 + 0x44);
          uVar21 = *(undefined4 *)(lVar6 + 0x48);
          uVar23 = *(undefined4 *)(lVar6 + 0x4c);
          uVar26 = *(undefined4 *)(lVar6 + 0x50);
          goto LAB_02c3d178;
        }
        uVar11 = *(undefined8 *)(param_4 + 0x1e0);
        if (*(int *)(*(long *)puVar3 + 0xe4) == 0) {
          func_0x029f5bd0();
        }
        uVar5 = Object_op_Inequality_0x6000ded(uVar11,0,0);
        if ((uVar5 & 1) == 0) goto LAB_02c3d0cc;
        lVar6 = Component_get_transform_0x6000c82(param_4,0);
        if (lVar6 == 0) goto LAB_02c3d230;
        fVar22 = (float)Transform_get_position_0x6000f4d(lVar6,0);
        fVar17 = *(float *)(param_4 + 0x1e8);
        fVar24 = fVar20;
        fVar15 = fVar29;
        lVar6 = Component_get_transform_0x6000c82(param_4,0);
        if (lVar6 == 0) goto LAB_02c3d230;
        Transform_get_position_0x6000f4d(lVar6,0);
        fVar22 = fVar22 - fVar17;
        fVar20 = fVar20 - fVar24;
        fVar29 = fVar29 - *(float *)(param_4 + 0x1f0);
        if (fVar29 * fVar29 + fVar22 * fVar22 + fVar20 * fVar20 < _UNK_0116c268) {
          fVar29 = fVar15;
          fVar20 = _UNK_0116c268;
          fVar22 = (float)AutoRetreat_DegenerateDirection(0);
          fVar15 = fVar29;
        }
        if (cRam000000000625b52e == '\0') {
          func_0x029f5a50(PTR_DAT_05e59000);
          cRam000000000625b52e = '\x01';
        }
        if (*(int *)(*(long *)puVar2 + 0xe4) == 0) {
          func_0x029f5bd0();
        }
        fVar24 = SQRT(fVar29 * fVar29 + fVar22 * fVar22 + fVar20 * fVar20);
        if (fVar24 <= _UNK_0116c240) {
          if (cRam000000000625b26f == '\0') {
            func_0x029f5a50(PTR_DAT_05e58bf8);
            cRam000000000625b26f = '\x01';
          }
          pfVar7 = *(float **)(*(long *)PTR_DAT_05e58bf8 + 0xb8);
          fVar22 = *pfVar7;
          fVar20 = pfVar7[1];
          fVar24 = pfVar7[2];
        }
        else {
          fVar20 = fVar20 / fVar24;
          fVar22 = fVar22 / fVar24;
          fVar24 = fVar29 / fVar24;
        }
        fVar17 = *(float *)(param_4 + 0x1e8);
        lVar6 = Component_get_transform_0x6000c82(param_4,0);
        if (lVar6 == 0) goto LAB_02c3d230;
        Transform_get_position_0x6000f4d(lVar6,0);
        fVar25 = *(float *)(param_4 + 0x1f0);
        fVar30 = *(float *)(param_4 + 0x1b8);
        lVar6 = Component_get_transform_0x6000c82(param_4,0);
        if (lVar6 == 0) goto LAB_02c3d230;
        fVar30 = fVar30 + 0.5;
        fVar16 = (float)Transform_get_position_0x6000f4d(lVar6,0);
        fVar29 = fVar15;
        if (cRam000000000625bae8 == '\0') {
          func_0x029f5a50(PTR_DAT_05e59000);
          cRam000000000625bae8 = '\x01';
        }
        fVar16 = (fVar17 + fVar22 * fVar30) - fVar16;
        fVar15 = (fVar25 + fVar24 * fVar30) - fVar15;
        if (*(int *)(*(long *)puVar2 + 0xe4) == 0) {
          func_0x029f5bd0();
        }
        plVar13 = (long *)PTR_DAT_05e631d8;
        fVar17 = SQRT(fVar16 * fVar16 + fVar15 * fVar15);
        if (fVar17 <= _UNK_0116c094) goto LAB_02c3d0cc;
        if (*(int *)(*(long *)PTR_DAT_05e631d8 + 0xe4) == 0) {
          func_0x029f5bd0();
        }
        fVar29 = (float)Cat_ScreenSpeedMultiplier_0x600072b
                                  (fVar16 / fVar17,0.0 / fVar17,fVar15 / fVar17);
        fVar25 = *(float *)(param_4 + 0x20);
        uVar11 = *(undefined8 *)(param_4 + 0x188);
        fVar19 = *(float *)(param_4 + 400);
        fVar30 = (float)Time_get_deltaTime_0x6000ee5(0);
        lVar6 = *(long *)(param_4 + 0x30);
        fVar30 = fVar30 * 8.0;
        fVar14 = 1.0;
        if (fVar30 <= 1.0) {
          fVar14 = fVar30;
        }
        fVar27 = (float)uVar11;
        fVar28 = (float)((ulong)uVar11 >> 0x20);
        fVar31 = 0.0;
        if (0.0 <= fVar30) {
          fVar31 = fVar14;
        }
        uVar11 = CONCAT44(fVar28 + (0.0 - fVar28) * fVar31,
                          fVar27 + (fVar29 * (fVar16 / fVar17) * fVar25 - fVar27) * fVar31);
        *(undefined8 *)(param_4 + 0x188) = uVar11;
        *(float *)(param_4 + 400) = fVar19 + (fVar29 * (fVar15 / fVar17) * fVar25 - fVar19) * fVar31
        ;
        if (lVar6 == 0) goto LAB_02c3d230;
        Rigidbody_get_linearVelocity_0x6000095(lVar6,0);
        Rigidbody_set_linearVelocity_0x6000096(uVar11,lVar6,0);
        lVar6 = *(long *)(*plVar13 + 0xb8);
        uVar18 = *(undefined4 *)(lVar6 + 0x44);
        uVar21 = *(undefined4 *)(lVar6 + 0x48);
        uVar23 = *(undefined4 *)(lVar6 + 0x4c);
        uVar26 = *(undefined4 *)(lVar6 + 0x50);
        goto LAB_02c3cdf0;
      }
      if (**(long **)(*(long *)puVar4 + 0xb8) == 0) goto LAB_02c3d230;
      fVar20 = param_3;
      if (*(int *)(**(long **)(*(long *)puVar4 + 0xb8) + 0x20) != 1) {
        fVar29 = *(float *)(param_4 + 0x158);
        fVar20 = 0.0;
        if (fVar29 != *(float *)(param_4 + 0x15c)) {
          fVar15 = (fVar24 - fVar29) / (*(float *)(param_4 + 0x15c) - fVar29);
          fVar29 = 1.0;
          if (fVar15 <= 1.0) {
            fVar29 = fVar15;
          }
          fVar20 = 0.0;
          if (0.0 <= fVar15) {
            fVar20 = fVar29;
          }
        }
        fVar29 = 0.0;
        if (0.0 <= fVar20) {
          fVar29 = fVar20;
        }
        fVar15 = *(float *)(param_4 + 0x154) * fVar29 + 0.0;
        if (cRam000000000625c0be == '\0') {
          func_0x029f5a50(PTR_DAT_05e59000);
          cRam000000000625c0be = '\x01';
        }
        fVar20 = param_3 + fVar15;
        if (*(int *)(*(long *)puVar2 + 0xe4) == 0) {
          func_0x029f5bd0();
        }
        fVar30 = *(float *)(param_4 + 0x150) * _UNK_0116bea0;
        fVar22 = SQRT((fVar14 - fVar14) * (fVar14 - fVar14) +
                      (fVar20 - param_3) * (fVar20 - param_3));
        fVar29 = _UNK_0116bea0;
        if (fVar30 < fVar22) {
          fVar20 = param_3 + fVar15 * (fVar30 / fVar22);
        }
      }
      lVar6 = Component_get_transform_0x6000c82(param_4,0);
      if (lVar6 == 0) goto LAB_02c3d230;
      fVar15 = (float)Transform_get_position_0x6000f4d(lVar6,0);
      if (cRam000000000625bae8 == '\0') {
        func_0x029f5a50(PTR_DAT_05e59000);
        cRam000000000625bae8 = '\x01';
      }
      fVar14 = fVar14 - fVar15;
      fVar20 = fVar20 - fVar29;
      if (*(int *)(*(long *)puVar2 + 0xe4) == 0) {
        func_0x029f5bd0();
      }
      puVar4 = PTR_DAT_05e631d8;
      fVar29 = SQRT(fVar14 * fVar14 + fVar20 * fVar20);
      if (fVar29 < _UNK_0116c190) goto LAB_02c3c504;
      fVar15 = 1.0;
      if (fVar24 < fVar17 + *(float *)(param_4 + 0x168)) {
        fVar15 = (fVar24 - fVar17) / *(float *)(param_4 + 0x168);
        fVar24 = 1.0;
        if (fVar15 <= 1.0) {
          fVar24 = fVar15;
        }
        fVar22 = 0.0;
        if (0.0 <= fVar15) {
          fVar22 = fVar24;
        }
        fVar15 = fVar22 * fVar22 * 3.0 - fVar22 * fVar22 * (fVar22 + fVar22);
        fVar15 = fVar15 + (1.0 - fVar15) * _UNK_0116c060;
      }
      fVar14 = fVar14 / fVar29;
      fVar24 = 0.0 / fVar29;
      fVar20 = fVar20 / fVar29;
      if (*(int *)(*(long *)PTR_DAT_05e631d8 + 0xe4) == 0) {
        func_0x029f5bd0();
      }
      fVar22 = (float)Cat_ScreenSpeedMultiplier_0x600072b(fVar14,fVar24,fVar20);
      fVar30 = *(float *)(param_4 + 0x20);
      fVar25 = *(float *)(param_4 + 400);
      uVar11 = *(undefined8 *)(param_4 + 0x188);
      fVar17 = (float)Time_get_deltaTime_0x6000ee5(0);
      lVar6 = *(long *)(param_4 + 0x30);
      fVar17 = fVar17 * 8.0;
      fVar29 = 1.0;
      if (fVar17 <= 1.0) {
        fVar29 = fVar17;
      }
      fVar19 = (float)uVar11;
      fVar31 = (float)((ulong)uVar11 >> 0x20);
      fVar16 = 0.0;
      if (0.0 <= fVar17) {
        fVar16 = fVar29;
      }
      fVar29 = (fVar22 * fVar15 * fVar20 * fVar30 - fVar25) * fVar16;
      uVar11 = CONCAT44(fVar31 + (0.0 - fVar31) * fVar16,
                        fVar19 + (fVar22 * fVar15 * fVar14 * fVar30 - fVar19) * fVar16);
      *(undefined8 *)(param_4 + 0x188) = uVar11;
      *(float *)(param_4 + 400) = fVar25 + fVar29;
      if (lVar6 == 0) goto LAB_02c3d230;
      Rigidbody_get_linearVelocity_0x6000095(lVar6,0);
      fVar15 = *(float *)(param_4 + 400);
      Rigidbody_set_linearVelocity_0x6000096(uVar11,lVar6,0);
      uVar11 = *(undefined8 *)(param_4 + 0x1e0);
      if (*(int *)(*(long *)puVar3 + 0xe4) == 0) {
        func_0x029f5bd0();
      }
      uVar5 = Object_op_Inequality_0x6000ded(uVar11,0,0);
      lVar6 = *(long *)puVar4;
      if ((uVar5 & 1) == 0) {
        if (*(int *)(lVar6 + 0xe4) == 0) {
          func_0x029f5bd0();
          lVar6 = *(long *)puVar4;
        }
        lVar6 = *(long *)(lVar6 + 0xb8);
        uVar18 = *(undefined4 *)(lVar6 + 0x44);
        uVar21 = *(undefined4 *)(lVar6 + 0x48);
        uVar23 = *(undefined4 *)(lVar6 + 0x4c);
        uVar26 = *(undefined4 *)(lVar6 + 0x50);
      }
      else {
        if (*(int *)(lVar6 + 0xe4) == 0) {
          func_0x029f5bd0();
          lVar6 = *(long *)puVar4;
        }
        if (*(long *)(param_4 + 0x1e0) == 0) goto LAB_02c3d230;
        lVar6 = *(long *)(lVar6 + 0xb8);
        uVar18 = *(undefined4 *)(lVar6 + 0x44);
        uVar21 = *(undefined4 *)(lVar6 + 0x48);
        uVar23 = *(undefined4 *)(lVar6 + 0x4c);
        uVar26 = *(undefined4 *)(lVar6 + 0x50);
        lVar6 = Component_get_transform_0x6000c82(*(long *)(param_4 + 0x1e0),0);
        if (lVar6 == 0) goto LAB_02c3d230;
        fVar14 = (float)Transform_get_position_0x6000f4d(lVar6,0);
        fVar24 = fVar29;
        fVar20 = fVar15;
        lVar6 = Component_get_transform_0x6000c82(param_4,0);
        if (lVar6 == 0) goto LAB_02c3d230;
        fVar22 = (float)Transform_get_position_0x6000f4d(lVar6,0);
        fVar14 = fVar14 - fVar22;
        fVar24 = fVar29 - fVar24;
        fVar20 = fVar15 - fVar20;
      }
      fVar24 = (float)Quaternion_op_Multiply_0x6000a54
                                (uVar18,uVar21,uVar23,uVar26,fVar14,fVar24,fVar20,0);
      lVar6 = *(long *)puVar4;
      lVar12 = *(long *)(param_4 + 0xb8);
      iVar1 = *(int *)(lVar6 + 0xe4);
      *(bool *)(param_4 + 0x1f8) = fVar24 <= 0.0;
      if (0.0 < fVar24) {
        if (iVar1 == 0) {
          func_0x029f5bd0();
          lVar6 = *(long *)puVar4;
        }
        goto LAB_02c3cea8;
      }
      if (iVar1 == 0) {
        func_0x029f5bd0();
        lVar6 = *(long *)puVar4;
      }
LAB_02c3ce88:
      lVar6 = *(long *)(lVar6 + 0xb8);
      puVar8 = (undefined4 *)(lVar6 + 0x20);
      puVar9 = (undefined4 *)(lVar6 + 0x24);
      puVar10 = (undefined4 *)(lVar6 + 0x28);
LAB_02c3ceb8:
      if (lVar12 == 0) goto LAB_02c3d230;
      Transform_set_localEulerAngles_0x6000f54(*puVar8,*puVar9,*puVar10,lVar12,0);
      lVar6 = *(long *)(param_4 + 0x38);
      if (lVar6 == 0) goto LAB_02c3d230;
      uVar11 = 1;
      goto LAB_02c3d200;
    }
LAB_02c3c504:
    Cat_AutoSmoothStop_0x6000740(param_4);
  }
  lVar6 = *(long *)(param_4 + 0x38);
  if (lVar6 == 0) {
LAB_02c3d230:
                    /* WARNING: Subroutine does not return */
    Throw_NullReference_Wrapper();
  }
  uVar11 = 0;
LAB_02c3d200:
  Animator_SetBool_0x6000033(lVar6,*(undefined8 *)PTR_DAT_05e61878,uVar11,0);
  return;
}

