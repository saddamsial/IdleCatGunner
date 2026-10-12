/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b4c530, Ghidra VA 02c4c530. */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void Monster_Spawn(float param_1,float param_2,float param_3,long param_4,undefined8 *param_5,
                  undefined8 param_6,ulong param_7)

{
  long lVar1;
  long lVar2;
  long lVar3;
  float fVar4;
  float fVar5;
  undefined *puVar6;
  undefined *puVar7;
  bool bVar8;
  long lVar9;
  float *pfVar10;
  float fVar11;
  float fVar12;
  float fVar13;
  float fVar14;
  float fVar15;
  float fVar16;
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
  
  if ((bRam000000000625c12e & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e63488);
    bRam000000000625c12e = 1;
  }
  lVar9 = Component_get_gameObject_0x6000c83(param_4,0);
  if (lVar9 != 0) {
    GameObject_SetActive_0x6000cfe(lVar9,1,0);
    uStack_98 = param_5[1];
    uStack_a0 = *param_5;
    uStack_88 = param_5[3];
    uStack_90 = param_5[2];
    lVar9 = *(long *)(param_4 + 0x20);
    InfVal_op_Implicit_0x600003f(&uStack_c0,0,0);
    if (lVar9 != 0) {
      uStack_d8 = uStack_98;
      uStack_e0 = uStack_a0;
      uStack_c8 = uStack_88;
      uStack_d0 = uStack_90;
      uStack_f8 = uStack_b8;
      uStack_100 = uStack_c0;
      uStack_e8 = uStack_a8;
      uStack_f0 = uStack_b0;
      Enemy_Spawn_0x600097c(lVar9,&uStack_e0,&uStack_100,0);
      if (*(long *)(param_4 + 0x30) != 0) {
        SpriteRenderer_set_sprite_0x6000197(*(long *)(param_4 + 0x30),param_6,0);
        if ((*(long *)(param_4 + 0x30) != 0) &&
           (lVar9 = Component_get_transform_0x6000c82(*(long *)(param_4 + 0x30),0), lVar9 != 0)) {
          bVar8 = (param_7 & 1) == 0;
          lVar1 = 0x50;
          if (bVar8) {
            lVar1 = 0x5c;
          }
          lVar2 = 0x4c;
          if (bVar8) {
            lVar2 = 0x58;
          }
          lVar3 = 0x48;
          if (bVar8) {
            lVar3 = 0x54;
          }
          Transform_set_localScale_0x6000f5e
                    (*(undefined4 *)(param_4 + lVar3),*(undefined4 *)(param_4 + lVar2),
                     *(undefined4 *)(param_4 + lVar1),lVar9,0);
          lVar9 = Component_get_transform_0x6000c82(param_4,0);
          puVar7 = PTR_DAT_05e63488;
          if (lVar9 != 0) {
            Transform_set_position_0x6000f4e(param_1,param_2,param_3,lVar9,0);
            lVar9 = *(long *)puVar7;
            fVar4 = 50.0;
            if ((param_7 & 1) == 0) {
              fVar4 = 37.5;
            }
            if (*(int *)(lVar9 + 0xe4) == 0) {
              func_0x029f5bd0();
              lVar9 = *(long *)puVar7;
            }
            pfVar10 = *(float **)(lVar9 + 0xb8);
            fVar11 = *pfVar10;
            fVar14 = pfVar10[1];
            fVar12 = pfVar10[2];
            if (cRam000000000625c0be == '\0') {
              func_0x029f5a50(PTR_DAT_05e59000);
              cRam000000000625c0be = '\x01';
            }
            puVar6 = PTR_DAT_05e59000;
            if (*(int *)(*(long *)PTR_DAT_05e59000 + 0xe4) == 0) {
              func_0x029f5bd0();
            }
            fVar5 = _UNK_0116c174;
            pfVar10 = *(float **)(*(long *)puVar7 + 0xb8);
            fVar16 = pfVar10[2];
            fVar13 = *pfVar10;
            fVar15 = pfVar10[1];
            fVar11 = SQRT((param_3 - fVar12) * (param_3 - fVar12) +
                          (param_1 - fVar11) * (param_1 - fVar11) +
                          (param_2 - fVar14) * (param_2 - fVar14)) + -20.0;
            if (cRam000000000625b52e == '\0') {
              func_0x029f5a50(PTR_DAT_05e59000);
              cRam000000000625b52e = '\x01';
            }
            if (fVar11 <= fVar5) {
              fVar11 = fVar5;
            }
            fVar13 = fVar13 - param_1;
            fVar16 = fVar16 - param_3;
            if (*(int *)(*(long *)puVar6 + 0xe4) == 0) {
              func_0x029f5bd0();
            }
            fVar12 = SQRT(fVar16 * fVar16 +
                          fVar13 * fVar13 + (fVar15 - param_2) * (fVar15 - param_2));
            if (fVar12 <= _UNK_0116c240) {
              if (cRam000000000625b26f == '\0') {
                func_0x029f5a50(PTR_DAT_05e58bf8);
                cRam000000000625b26f = '\x01';
              }
              fVar13 = **(float **)(*(long *)PTR_DAT_05e58bf8 + 0xb8);
              fVar16 = (*(float **)(*(long *)PTR_DAT_05e58bf8 + 0xb8))[2];
            }
            else {
              fVar13 = fVar13 / fVar12;
              fVar16 = fVar16 / fVar12;
            }
            fVar13 = (fVar11 / fVar4) * fVar13;
            *(undefined4 *)(param_4 + 100) = 0;
            *(float *)(param_4 + 0x60) = fVar13;
            *(float *)(param_4 + 0x68) = (fVar11 / fVar4) * fVar16;
            if (*(long *)(param_4 + 0x28) != 0) {
              Rigidbody_set_linearVelocity_0x6000096(fVar13,0,*(long *)(param_4 + 0x28),0);
              return;
            }
          }
        }
      }
    }
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

