/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b3a678, Ghidra VA 02c3a678. */

void Cat_RecordBreadcrumb(undefined1 param_1 [16],float param_2,float param_3,undefined8 param_4)

{
  uint uVar1;
  undefined *puVar2;
  long lVar3;
  long lVar4;
  long lVar5;
  float fVar6;
  undefined4 uVar7;
  undefined4 uVar8;
  float fVar9;
  float fVar10;
  float fVar11;
  
  if ((bRam000000000625c099 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e631d8);
    func_0x029f5a50(PTR_DAT_05e631f0);
    func_0x029f5a50(PTR_DAT_05e631f8);
    func_0x029f5a50(PTR_DAT_05e63200);
    bRam000000000625c099 = 1;
  }
  lVar3 = Component_get_transform_0x6000c82(param_4,0);
  puVar2 = PTR_DAT_05e631d8;
  if (lVar3 != 0) {
    fVar6 = (float)Transform_get_position_0x6000f4d(lVar3,0);
    lVar3 = *(long *)puVar2;
    if (*(int *)(lVar3 + 0xe4) == 0) {
      func_0x029f5bd0();
      lVar3 = *(long *)puVar2;
    }
    lVar3 = *(long *)(lVar3 + 0xb8);
    fVar9 = *(float *)(lVar3 + 8);
    fVar11 = *(float *)(lVar3 + 0xc);
    fVar10 = *(float *)(lVar3 + 0x10);
    if (cRam000000000625c0be == '\0') {
      func_0x029f5a50(PTR_DAT_05e59000);
      cRam000000000625c0be = '\x01';
    }
    if (*(int *)(*(long *)PTR_DAT_05e59000 + 0xe4) == 0) {
      func_0x029f5bd0();
    }
    param_2 = param_2 - fVar11;
    fVar6 = fVar6 - fVar9;
    param_3 = param_3 - fVar10;
    uVar8 = 0x3f000000;
    if (SQRT(param_3 * param_3 + fVar6 * fVar6 + param_2 * param_2) < 0.5) {
      return;
    }
    lVar3 = *(long *)puVar2;
    if (*(int *)(lVar3 + 0xe4) == 0) {
      func_0x029f5bd0();
      lVar3 = *(long *)puVar2;
    }
    lVar5 = **(long **)(lVar3 + 0xb8);
    lVar3 = Component_get_transform_0x6000c82(param_4,0);
    if ((lVar3 != 0) && (uVar7 = Transform_get_position_0x6000f4d(lVar3,0), lVar5 != 0)) {
      lVar3 = *(long *)(lVar5 + 0x10);
      lVar4 = *(long *)PTR_DAT_05e631f0;
      *(int *)(lVar5 + 0x1c) = *(int *)(lVar5 + 0x1c) + 1;
      if (lVar3 != 0) {
        uVar1 = *(uint *)(lVar5 + 0x18);
        if (uVar1 < *(uint *)(lVar3 + 0x18)) {
          lVar3 = lVar3 + (long)(int)uVar1 * 0xc;
          *(uint *)(lVar5 + 0x18) = uVar1 + 1;
          *(undefined4 *)(lVar3 + 0x20) = uVar7;
          *(undefined4 *)(lVar3 + 0x24) = uVar8;
          *(float *)(lVar3 + 0x28) = param_3;
        }
        else {
          func_0x045a72a8(lVar5,*(undefined8 *)(*(long *)(*(long *)(lVar4 + 0x20) + 0xc0) + 0x70));
        }
        lVar5 = *(long *)puVar2;
        lVar3 = **(long **)(lVar5 + 0xb8);
        if (lVar3 != 0) {
          if (100 < *(int *)(lVar3 + 0x18)) {
            if (*(int *)(lVar5 + 0xe4) == 0) {
              func_0x029f5bd0(lVar5);
              lVar3 = **(long **)(*(long *)puVar2 + 0xb8);
              if (lVar3 == 0) goto LAB_02c3a8cc;
            }
            func_0x045a8b00(lVar3,0,*(undefined8 *)PTR_DAT_05e631f8);
          }
          lVar3 = Component_get_transform_0x6000c82(param_4,0);
          if (lVar3 != 0) {
            uVar7 = Transform_get_position_0x6000f4d(lVar3,0);
            lVar3 = *(long *)puVar2;
            if (*(int *)(lVar3 + 0xe4) == 0) {
              func_0x029f5bd0();
              lVar3 = *(long *)puVar2;
            }
            lVar3 = *(long *)(lVar3 + 0xb8);
            *(undefined4 *)(lVar3 + 8) = uVar7;
            *(undefined4 *)(lVar3 + 0xc) = uVar8;
            *(float *)(lVar3 + 0x10) = param_3;
            return;
          }
        }
      }
    }
  }
LAB_02c3a8cc:
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

