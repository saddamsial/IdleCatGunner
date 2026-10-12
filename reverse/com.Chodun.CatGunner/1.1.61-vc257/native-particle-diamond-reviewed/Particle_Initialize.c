/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x48b8834, Ghidra VA 049b8834. */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void Particle_Initialize(undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4
                        ,undefined4 param_5,undefined4 param_6,undefined4 param_7,long param_8)

{
  int iVar1;
  undefined *puVar2;
  char cVar3;
  long lVar4;
  long lVar5;
  undefined8 *puVar6;
  undefined4 uVar7;
  undefined4 uVar8;
  float fVar9;
  float fVar10;
  float fVar11;
  undefined8 uVar12;
  undefined4 uStack0000000000000000;
  undefined4 uStack0000000000000004;
  undefined4 uStack0000000000000008;
  undefined4 uStack000000000000000c;
  undefined4 uStack0000000000000010;
  undefined4 uStack0000000000000014;
  undefined4 in_stack_00000018;
  undefined4 in_stack_00000020;
  float in_stack_00000028;
  undefined8 uStack_90;
  undefined8 uStack_88;
  undefined8 uStack_80;
  undefined8 uStack_78;
  
  if ((bRam0000000006262829 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e85eb0);
    func_0x029f5a50(PTR_DAT_05e85eb8);
    bRam0000000006262829 = 1;
  }
  uStack_88 = 0;
  uStack_90 = 0;
  uStack_78 = 0;
  uStack_80 = 0;
  uVar7 = Random_get_value_0x6000ba9(0);
  *(undefined4 *)(param_8 + 0xa4) = uVar7;
  uVar7 = Random_get_value_0x6000ba9(0);
  *(undefined4 *)(param_8 + 0xa8) = uVar7;
  uVar7 = Random_get_value_0x6000ba9(0);
  *(undefined4 *)(param_8 + 0xac) = uVar7;
  uVar7 = Random_get_value_0x6000ba9(0);
  *(undefined4 *)(param_8 + 0xb0) = uVar7;
  uVar7 = Random_get_value_0x6000ba9(0);
  *(undefined4 *)(param_8 + 0xb4) = uVar7;
  uVar7 = Random_get_value_0x6000ba9(0);
  *(undefined4 *)(param_8 + 0xb8) = uVar7;
  uVar7 = Random_get_value_0x6000ba9(0);
  *(undefined4 *)(param_8 + 200) = uVar7;
  uVar7 = Random_get_value_0x6000ba9(0);
  *(undefined4 *)(param_8 + 0xbc) = uVar7;
  uVar7 = Random_get_value_0x6000ba9(0);
  *(undefined4 *)(param_8 + 0xc0) = uVar7;
  uVar7 = Random_get_value_0x6000ba9(0);
  *(undefined4 *)(param_8 + 0xc4) = uVar7;
  uVar7 = Random_get_value_0x6000ba9(0);
  *(undefined4 *)(param_8 + 0xcc) = uVar7;
  uVar7 = Random_get_value_0x6000ba9(0);
  uVar8 = Random_get_value_0x6000ba9(0);
  *(undefined4 *)(param_8 + 0x54) = uStack0000000000000010;
  *(undefined4 *)(param_8 + 0xd0) = uVar7;
  *(undefined4 *)(param_8 + 0xd4) = uVar8;
  *(undefined4 *)(param_8 + 0x28) = param_1;
  *(undefined4 *)(param_8 + 0x2c) = param_2;
  *(undefined4 *)(param_8 + 0x6c) = uStack0000000000000004;
  *(undefined4 *)(param_8 + 0x70) = uStack0000000000000008;
  *(undefined4 *)(param_8 + 0x30) = param_3;
  *(undefined4 *)(param_8 + 0x34) = param_4;
  *(undefined4 *)(param_8 + 0x58) = uStack0000000000000014;
  *(undefined4 *)(param_8 + 0x5c) = in_stack_00000018;
  *(undefined4 *)(param_8 + 0x68) = uStack0000000000000000;
  *(undefined4 *)(param_8 + 0x50) = param_7;
  *(undefined4 *)(param_8 + 0x48) = param_5;
  *(undefined4 *)(param_8 + 0x4c) = param_6;
  *(undefined4 *)(param_8 + 0xa0) = *(undefined4 *)(param_8 + 0x50);
  *(undefined4 *)(param_8 + 0x74) = uStack000000000000000c;
  *(undefined4 *)(param_8 + 0x78) = in_stack_00000020;
  *(undefined8 *)(param_8 + 0x98) = *(undefined8 *)(param_8 + 0x48);
  if (*(long *)(param_8 + 0x18) != 0) {
    uVar7 = Transform_get_position_0x6000f4d(*(long *)(param_8 + 0x18),0);
    *(undefined4 *)(param_8 + 0xd8) = uVar7;
    *(undefined4 *)(param_8 + 0xdc) = uStack000000000000000c;
    cVar3 = cRam000000000625b271;
    *(undefined4 *)(param_8 + 0xe0) = param_5;
    *(undefined8 *)(param_8 + 0x20) = *(undefined8 *)(param_8 + 0x28);
    if (cVar3 == '\0') {
      func_0x029f5a50(PTR_DAT_05e59608);
      cRam000000000625b271 = '\x01';
    }
    lVar4 = *(long *)PTR_DAT_05e59608;
    *(undefined8 *)(param_8 + 0x40) = **(undefined8 **)(lVar4 + 0xb8);
    cVar3 = cRam000000000625b26f;
    *(undefined8 *)(param_8 + 0x38) = **(undefined8 **)(lVar4 + 0xb8);
    *(undefined8 *)(param_8 + 0x108) = **(undefined8 **)(lVar4 + 0xb8);
    if (cVar3 == '\0') {
      func_0x029f5a50(PTR_DAT_05e58bf8);
      cRam000000000625b26f = '\x01';
    }
    lVar4 = *(long *)PTR_DAT_05e58bf8;
    puVar6 = *(undefined8 **)(lVar4 + 0xb8);
    uVar7 = *(undefined4 *)(puVar6 + 1);
    *(undefined8 *)(param_8 + 0xf4) = *puVar6;
    *(undefined4 *)(param_8 + 0xfc) = uVar7;
    puVar6 = *(undefined8 **)(lVar4 + 0xb8);
    uVar7 = *(undefined4 *)(puVar6 + 1);
    uVar12 = *puVar6;
    *(undefined8 *)(param_8 + 0x90) = *(undefined8 *)(param_8 + 0x70);
    *(undefined8 *)(param_8 + 0x88) = *(undefined8 *)(param_8 + 0x68);
    *(undefined8 *)(param_8 + 0x7c) = *(undefined8 *)(param_8 + 0x54);
    lVar4 = *(long *)(param_8 + 0x10);
    *(undefined4 *)(param_8 + 0x84) = *(undefined4 *)(param_8 + 0x5c);
    *(undefined8 *)(param_8 + 0x100) = *(undefined8 *)(param_8 + 0x28);
    *(float *)(param_8 + 0x60) = in_stack_00000028;
    *(undefined4 *)(param_8 + 100) = 0;
    *(undefined8 *)(param_8 + 0x110) = uVar12;
    *(undefined4 *)(param_8 + 0x118) = uVar7;
    *(undefined4 *)(param_8 + 0x134) = 0;
    if (lVar4 != 0) {
      fVar9 = *(float *)(param_8 + 0x78);
      fVar11 = ABS(fVar9);
      fVar10 = 0.0;
      if ((uint)fVar11 < 0x7f800001) {
        fVar10 = fVar11 * _UNK_0116c1e4;
      }
      if (fVar10 <= 9.536743e-07) {
        fVar10 = 9.536743e-07;
      }
      if (fVar10 <= fVar11) {
        fVar9 = in_stack_00000028 / fVar9 + 0.0;
      }
      uStack_88 = *(undefined8 *)(lVar4 + 0x720);
      uStack_90 = *(undefined8 *)(lVar4 + 0x718);
      uStack_78 = *(undefined8 *)(lVar4 + 0x730);
      uStack_80 = *(undefined8 *)(lVar4 + 0x728);
      fVar10 = (float)MinMaxCurve_Evaluate_0x6000057
                                (fVar9,*(undefined4 *)(param_8 + 200),&uStack_90,0);
      lVar4 = *(long *)(param_8 + 0x150);
      iVar1 = -0x80000000;
      if (fVar10 != INFINITY) {
        iVar1 = (int)fVar10;
      }
      *(int *)(param_8 + 0x134) = iVar1;
      if (lVar4 != 0) {
        if (*(int *)(lVar4 + 0x18) == 0) {
LAB_049b8c78:
                    /* WARNING: Subroutine does not return */
          Throw_Index_Wrapper();
        }
        *(ulong *)(lVar4 + 0x20) =
             CONCAT44((float)((ulong)*(undefined8 *)(param_8 + 0x7c) >> 0x20) * 0.5,
                      (float)*(undefined8 *)(param_8 + 0x7c) * 0.5);
        lVar4 = *(long *)(param_8 + 0x150);
        if (lVar4 != 0) {
          if ((*(uint *)(lVar4 + 0x18) & 0xfffffffe) == 0) goto LAB_049b8c78;
          *(ulong *)(lVar4 + 0x28) =
               CONCAT44((float)((ulong)*(undefined8 *)(param_8 + 0x7c) >> 0x20) *
                        (float)((ulong)_UNK_011705b8 >> 0x20),
                        (float)*(undefined8 *)(param_8 + 0x7c) * (float)_UNK_011705b8);
          lVar4 = *(long *)(param_8 + 0x150);
          if (lVar4 != 0) {
            if (*(uint *)(lVar4 + 0x18) < 3) goto LAB_049b8c78;
            *(ulong *)(lVar4 + 0x30) =
                 CONCAT44((float)((ulong)*(undefined8 *)(param_8 + 0x7c) >> 0x20) * -0.5,
                          (float)*(undefined8 *)(param_8 + 0x7c) * -0.5);
            lVar4 = *(long *)(param_8 + 0x150);
            if (lVar4 != 0) {
              if ((*(uint *)(lVar4 + 0x18) & 0xfffffffc) == 0) goto LAB_049b8c78;
              *(ulong *)(lVar4 + 0x38) =
                   CONCAT44((float)((ulong)*(undefined8 *)(param_8 + 0x7c) >> 0x20) *
                            (float)((ulong)_UNK_0116fc40 >> 0x20),
                            (float)*(undefined8 *)(param_8 + 0x7c) * (float)_UNK_0116fc40);
              if (*(long *)(param_8 + 0x10) != 0) {
                if (*(char *)(*(long *)(param_8 + 0x10) + 0x3140) == '\0') {
                  return;
                }
                lVar4 = *(long *)(param_8 + 0x140);
                if (lVar4 != 0) {
                  iVar1 = *(int *)(lVar4 + 0x1c);
                  *(int *)(lVar4 + 0x1c) = iVar1 + 1;
                  puVar2 = PTR_DAT_05e85eb0;
                  *(undefined4 *)(lVar4 + 0x18) = 0;
                  lVar5 = *(long *)(lVar4 + 0x10);
                  uVar7 = *(undefined4 *)(param_8 + 0x28);
                  uVar8 = *(undefined4 *)(param_8 + 0x2c);
                  *(int *)(lVar4 + 0x1c) = iVar1 + 2;
                  if (lVar5 != 0) {
                    if (*(int *)(lVar5 + 0x18) == 0) {
                      func_0x0344ca24(uVar7,uVar8,0,lVar4,
                                      *(undefined8 *)
                                       (*(long *)(*(long *)(*(long *)puVar2 + 0x20) + 0xc0) + 0x70))
                      ;
                    }
                    else {
                      *(undefined4 *)(lVar4 + 0x18) = 1;
                      *(undefined4 *)(lVar5 + 0x20) = uVar7;
                      *(undefined4 *)(lVar5 + 0x24) = uVar8;
                      *(undefined4 *)(lVar5 + 0x28) = 0;
                    }
                    *(undefined8 *)(param_8 + 0x158) = *(undefined8 *)(param_8 + 0x28);
                    if (*(long *)(param_8 + 0x10) != 0) {
                      *(bool *)(param_8 + 300) =
                           *(float *)(param_8 + 0xcc) <=
                           *(float *)(*(long *)(param_8 + 0x10) + 0x31ec);
                      return;
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

