/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b3d4ac, Ghidra VA 02c3d4ac. */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

undefined8
Cat_Attack(undefined1 param_1 [16],undefined4 param_2,undefined4 param_3,long param_4,
          undefined8 param_5)

{
  undefined8 *puVar1;
  int iVar2;
  ulong uVar3;
  ulong uVar4;
  undefined8 uVar5;
  undefined8 *puVar6;
  long lVar7;
  undefined8 uVar8;
  undefined4 uVar9;
  undefined4 uVar10;
  float fVar11;
  float fVar12;
  float fVar13;
  undefined4 uVar14;
  undefined4 uVar15;
  float fVar16;
  undefined4 uVar17;
  float fVar18;
  undefined4 uVar19;
  undefined8 uStack_170;
  undefined8 uStack_168;
  undefined8 uStack_160;
  undefined8 uStack_158;
  undefined8 uStack_150;
  undefined8 uStack_148;
  undefined8 uStack_140;
  undefined8 uStack_138;
  undefined8 uStack_130;
  undefined8 uStack_128;
  undefined8 uStack_120;
  undefined8 uStack_118;
  undefined8 uStack_110;
  undefined8 uStack_108;
  undefined8 uStack_100;
  undefined8 uStack_f8;
  undefined8 uStack_f0;
  undefined8 uStack_e8;
  undefined8 uStack_e0;
  undefined8 uStack_d8;
  undefined8 uStack_d0;
  undefined8 uStack_c8;
  undefined8 uStack_c0;
  undefined8 uStack_b8;
  undefined8 uStack_b0;
  undefined8 uStack_a8;
  undefined8 uStack_a0;
  undefined8 uStack_98;
  undefined8 uStack_90;
  undefined8 uStack_88;
  undefined8 uStack_80;
  undefined8 uStack_78;
  
  puVar6 = &uStack_170;
  if ((bRam000000000625c0b3 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5d5b0);
    func_0x029f5a50(PTR_DAT_05e62670);
    bRam000000000625c0b3 = 1;
  }
  uStack_88 = 0;
  uStack_90 = 0;
  uStack_78 = 0;
  uStack_80 = 0;
  Cat_FaceTowardEnemy(param_4,param_5);
  uVar9 = Cat_GetFirePosition(param_4);
  uVar14 = param_3;
  uVar15 = param_2;
  uVar10 = Cat_CalcBulletDir();
  uVar19 = *(undefined4 *)(param_4 + 0x13c);
  fVar11 = (float)Random_get_value_0x6000ba9(0);
  fVar18 = *(float *)(param_4 + 0xa0);
  puVar1 = (undefined8 *)(param_4 + 0x70);
  if (fVar18 <= fVar11) {
    puVar1 = (undefined8 *)(param_4 + 0x50);
  }
  uStack_88 = puVar1[1];
  uStack_90 = *puVar1;
  uStack_78 = puVar1[3];
  uStack_80 = puVar1[2];
  lVar7 = 0x98;
  if (fVar18 <= fVar11) {
    lVar7 = 0x90;
  }
  if (*(long *)(param_4 + 0x48) == 0) goto LAB_02c3d99c;
  iVar2 = *(int *)(*(long *)(param_4 + 0x48) + 0x18);
  uVar8 = *(undefined8 *)(param_4 + lVar7);
  if (iVar2 < 3) {
    if (iVar2 != 0) {
      if (iVar2 == 1) {
        uVar10 = Cat_ApplySpread(uVar10,uVar15,uVar14,uVar19,0);
        if (*(long *)(param_4 + 0x48) == 0) goto LAB_02c3d99c;
        uVar17 = *(undefined4 *)(*(long *)(param_4 + 0x48) + 100);
        uVar19 = 0;
        puVar6 = &uStack_d0;
        uVar5 = 1;
        uStack_c8 = uStack_88;
        uStack_d0 = uStack_90;
        uStack_b8 = uStack_78;
        uStack_c0 = uStack_80;
      }
      else {
        if (iVar2 != 2) {
          return 0;
        }
        uVar10 = Cat_ApplySpread(uVar10,uVar15,uVar14,uVar19,0);
        if (*(long *)(param_4 + 0x48) == 0) goto LAB_02c3d99c;
        uVar17 = *(undefined4 *)(*(long *)(param_4 + 0x48) + 100);
        uVar19 = 0;
        puVar6 = &uStack_f0;
        uVar5 = 2;
        uStack_e8 = uStack_88;
        uStack_f0 = uStack_90;
        uStack_d8 = uStack_78;
        uStack_e0 = uStack_80;
      }
      goto LAB_02c3d814;
    }
    uVar10 = Cat_ApplySpread(uVar10,uVar15,uVar14,uVar19,0);
    uStack_a8 = uStack_88;
    uStack_b0 = uStack_90;
    uStack_98 = uStack_78;
    uStack_a0 = uStack_80;
    uVar3 = Cat_TrySpawnBulletEx
                      (uVar9,param_2,param_3,uVar10,uVar15,uVar14,0,_UNK_0116c218,param_4,0,
                       &uStack_b0,uVar8,fVar11 < fVar18);
    uVar4 = 0;
    if ((uVar3 & 1) == 0) {
      return 0;
    }
  }
  else {
    if (iVar2 < 5) {
      if (iVar2 != 3) {
        if (iVar2 != 4) {
          return 0;
        }
        uVar10 = Cat_ApplySpread(uVar10,uVar15,uVar14,uVar19,0);
        if (*(long *)(param_4 + 0x48) == 0) goto LAB_02c3d99c;
        uVar19 = *(undefined4 *)(*(long *)(param_4 + 0x48) + 0x4c);
        uVar17 = 0x3fc00000;
        puVar6 = &uStack_130;
        uVar5 = 4;
        uStack_128 = uStack_88;
        uStack_130 = uStack_90;
        uStack_118 = uStack_78;
        uStack_120 = uStack_80;
        goto LAB_02c3d814;
      }
      uStack_110 = uStack_90;
      uStack_108 = uStack_88;
      uStack_100 = uStack_80;
      uStack_f8 = uStack_78;
      uVar4 = Cat_TryFireShotgun(uVar9,param_2,param_3,uVar10,uVar15,uVar14,param_4,&uStack_110,
                                 uVar8,fVar11 < fVar18);
    }
    else if (iVar2 == 5) {
      uStack_150 = uStack_90;
      uStack_148 = uStack_88;
      uStack_140 = uStack_80;
      uStack_138 = uStack_78;
      uVar4 = Cat_TryFireMissile(uVar9,param_2,param_3,uVar19,param_4,param_5,&uStack_150,uVar8,
                                 fVar11 < fVar18);
    }
    else {
      if (iVar2 != 6) {
        return 0;
      }
      uVar10 = Cat_ApplySpread(uVar10,uVar15,uVar14,uVar19,0);
      lVar7 = *(long *)(param_4 + 0x48);
      if (lVar7 == 0) goto LAB_02c3d99c;
      uVar19 = *(undefined4 *)(lVar7 + 0x60);
      uVar17 = *(undefined4 *)(lVar7 + 100);
      uVar5 = 6;
      uStack_168 = uStack_88;
      uStack_170 = uStack_90;
      uStack_158 = uStack_78;
      uStack_160 = uStack_80;
LAB_02c3d814:
      uVar4 = Cat_TrySpawnBulletEx
                        (uVar9,param_2,param_3,uVar10,uVar15,uVar14,uVar19,uVar17,param_4,uVar5,
                         puVar6,uVar8,fVar11 < fVar18);
    }
    if ((uVar4 & 1) == 0) {
      return 0;
    }
  }
  if (*(long *)(param_4 + 0x48) != 0) {
    if (*(int *)(*(long *)(param_4 + 0x48) + 0x18) != 3) {
      fVar18 = *(float *)(param_4 + 0x13c);
      fVar11 = *(float *)(param_4 + 0xb0);
      if (*(float *)(param_4 + 0xb0) <= _UNK_0116c094) {
        fVar11 = _UNK_0116c094;
      }
      fVar11 = (float)func_0x05afb2d0(fVar11,uVar4);
      fVar16 = *(float *)(param_4 + 0x134);
      fVar12 = (fVar11 + _UNK_0116c118) / _UNK_0116bf14;
      fVar11 = 1.0;
      if (fVar12 <= 1.0) {
        fVar11 = fVar12;
      }
      fVar13 = 1.0;
      if (0.0 <= fVar12) {
        fVar13 = 1.0 - fVar11;
      }
      fVar11 = 1.0;
      if (fVar13 <= 1.0) {
        fVar11 = fVar13;
      }
      fVar12 = 0.0;
      if (0.0 <= fVar13) {
        fVar12 = fVar11;
      }
      fVar11 = 1.0;
      if (fVar16 <= 1.0) {
        fVar11 = fVar16;
      }
      fVar13 = 0.0;
      if (0.0 <= fVar16) {
        fVar13 = fVar11;
      }
      *(float *)(param_4 + 0x13c) =
           fVar18 + fVar13 * ((*(float *)(param_4 + 300) +
                              (*(float *)(param_4 + 0x130) - *(float *)(param_4 + 300)) * fVar12) -
                             fVar18);
    }
    if (*(long *)(param_4 + 0x100) != 0) {
      Bounce_Custom_Bounce_Start(*(long *)(param_4 + 0x100),0);
      if (*(long *)(param_4 + 0x108) != 0) {
        Bounce_Position_Bounce_Start(*(long *)(param_4 + 0x108),0);
        if (*(long *)(param_4 + 0xf8) != 0) {
          ParticleSystem_Play_0x600000b(*(long *)(param_4 + 0xf8),0);
          if ((**(char **)(*(long *)PTR_DAT_05e5d5b0 + 0xb8) == '\0') &&
             (*(char *)(*(long *)(*(long *)PTR_DAT_05e62670 + 0xb8) + 0x10) == '\0')) {
            if (cRam000000000625ba57 == '\0') {
              func_0x029f5a50(PTR_DAT_05e5dd70);
              cRam000000000625ba57 = '\x01';
            }
            if (**(long **)(*(long *)PTR_DAT_05e5dd70 + 0xb8) == 0) goto LAB_02c3d99c;
            Sound_manager_PlaySfx_0x600054a
                      (0x3f800000,**(long **)(*(long *)PTR_DAT_05e5dd70 + 0xb8),8,0,0);
          }
          return 1;
        }
      }
    }
  }
LAB_02c3d99c:
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

