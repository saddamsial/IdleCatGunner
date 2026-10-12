/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b65c44, Ghidra VA 02c65c44. */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void Bullet_Update(long param_1)

{
  long lVar1;
  float *pfVar2;
  float fVar3;
  float fVar4;
  float fVar5;
  float fVar6;
  float fVar7;
  float fVar8;
  float fVar9;
  float fVar10;
  float fVar11;
  float fVar12;
  float fVar13;
  float fVar14;
  
  if ((*(char *)(param_1 + 0x68) != '\0') || (*(char *)(param_1 + 0xa4) == '\0')) {
    return;
  }
  fVar10 = *(float *)(param_1 + 200);
  fVar3 = (float)Time_get_deltaTime_0x6000ee5(0);
  fVar10 = fVar10 + fVar3;
  fVar9 = *(float *)(param_1 + 0xc0);
  fVar14 = *(float *)(param_1 + 0xa8);
  fVar11 = *(float *)(param_1 + 0xac);
  fVar5 = fVar10 / *(float *)(param_1 + 0xc4);
  *(float *)(param_1 + 200) = fVar10;
  fVar3 = 1.0;
  if (fVar5 <= 1.0) {
    fVar3 = fVar5;
  }
  fVar10 = 0.0;
  if (0.0 <= fVar5) {
    fVar10 = fVar3;
  }
  fVar12 = *(float *)(param_1 + 0xb0);
  fVar5 = *(float *)(param_1 + 0xb4);
  fVar3 = 0.0;
  if (0.0 <= fVar10) {
    fVar3 = fVar10;
  }
  fVar13 = *(float *)(param_1 + 0xb8);
  fVar6 = *(float *)(param_1 + 0xbc);
  fVar7 = fVar6;
  fVar8 = fVar5;
  lVar1 = Component_get_transform_0x6000c82(param_1,0);
  if (lVar1 != 0) {
    fVar4 = (float)Transform_get_position_0x6000f4d(lVar1,0);
    lVar1 = Component_get_transform_0x6000c82(param_1,0);
    if (lVar1 != 0) {
      fVar14 = fVar14 + (fVar5 - fVar14) * fVar3;
      fVar12 = fVar12 + (fVar6 - fVar12) * fVar3;
      fVar3 = fVar11 + fVar3 * (fVar13 - fVar11) + (1.0 - fVar10) * fVar10 * fVar9 * 4.0;
      Transform_set_position_0x6000f4e(fVar14,fVar3,fVar12,lVar1,0);
      fVar14 = fVar14 - fVar4;
      fVar3 = fVar3 - fVar7;
      fVar12 = fVar12 - fVar8;
      fVar5 = fVar12 * fVar12 + fVar14 * fVar14 + fVar3 * fVar3;
      if (_UNK_0116c200 < fVar5) {
        lVar1 = Component_get_transform_0x6000c82(param_1,0);
        if (cRam000000000625b52e == '\0') {
          func_0x029f5a50(PTR_DAT_05e59000);
          cRam000000000625b52e = '\x01';
        }
        if (*(int *)(*(long *)PTR_DAT_05e59000 + 0xe4) == 0) {
          func_0x029f5bd0();
        }
        fVar5 = SQRT(fVar5);
        if (fVar5 <= _UNK_0116c240) {
          if (cRam000000000625b26f == '\0') {
            func_0x029f5a50(PTR_DAT_05e58bf8);
            cRam000000000625b26f = '\x01';
          }
          pfVar2 = *(float **)(*(long *)PTR_DAT_05e58bf8 + 0xb8);
          fVar14 = *pfVar2;
          fVar3 = pfVar2[1];
          fVar12 = pfVar2[2];
        }
        else {
          fVar14 = fVar14 / fVar5;
          fVar3 = fVar3 / fVar5;
          fVar12 = fVar12 / fVar5;
        }
        if (lVar1 == 0) goto LAB_02c65ed8;
        Transform_set_forward_0x6000f58(fVar14,fVar3,fVar12,lVar1,0);
      }
      *(float *)(param_1 + 0x6c) = fVar4;
      *(float *)(param_1 + 0x70) = fVar7;
      *(float *)(param_1 + 0x74) = fVar8;
      if (fVar10 < 1.0) {
        return;
      }
      lVar1 = Component_get_transform_0x6000c82(param_1,0);
      if (lVar1 != 0) {
        Transform_get_position_0x6000f4d(lVar1,0);
        Bullet_Explode_0x6000a30(param_1);
        lVar1 = Component_get_transform_0x6000c82(param_1,0);
        if (lVar1 != 0) {
          Transform_get_position_0x6000f4d(lVar1,0);
          Bullet_SpawnFX_0x6000a33(param_1);
          Bullet_DieAndWait_0x6000a31(param_1);
          return;
        }
      }
    }
  }
LAB_02c65ed8:
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

