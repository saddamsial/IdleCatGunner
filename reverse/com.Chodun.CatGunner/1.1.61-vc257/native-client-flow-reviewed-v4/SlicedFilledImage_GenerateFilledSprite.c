/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b29454, Ghidra VA 02c29454. */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void SlicedFilledImage_GenerateFilledSprite
               (float param_1,float param_2,float param_3,float param_4,float param_5,float param_6,
               float param_7,float param_8,long *param_9,long param_10)

{
  undefined *puVar1;
  int iVar2;
  undefined4 uVar3;
  long lVar4;
  long lVar5;
  long lVar6;
  ulong uVar7;
  undefined4 uVar8;
  undefined4 uVar9;
  undefined4 uVar10;
  float in_stack_00000000;
  
  if ((bRam000000000625bfd2 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e62d98);
    bRam000000000625bfd2 = 1;
  }
  puVar1 = PTR_DAT_05e62d98;
  if (*(float *)((long)param_9 + 0xe4) < _UNK_0116c268) {
    return;
  }
  if (in_stack_00000000 < 1.0) {
    iVar2 = (int)param_9[0x1c];
    if (iVar2 == 0) {
      param_3 = param_1 + (param_3 - param_1) * in_stack_00000000;
      param_7 = param_5 + (param_7 - param_5) * in_stack_00000000;
    }
    else if (iVar2 == 3) {
      param_2 = param_4 - (param_4 - param_2) * in_stack_00000000;
      param_6 = param_8 - (param_8 - param_6) * in_stack_00000000;
    }
    else if (iVar2 == 1) {
      param_1 = param_3 - (param_3 - param_1) * in_stack_00000000;
      param_5 = param_7 - (param_7 - param_5) * in_stack_00000000;
    }
    else {
      param_4 = param_2 + (param_4 - param_2) * in_stack_00000000;
      param_8 = param_6 + (param_8 - param_6) * in_stack_00000000;
    }
  }
  lVar4 = *(long *)PTR_DAT_05e62d98;
  if (*(int *)(lVar4 + 0xe4) == 0) {
    func_0x029f5bd0();
    lVar4 = *(long *)puVar1;
  }
  lVar4 = **(long **)(lVar4 + 0xb8);
  if (lVar4 != 0) {
    if (*(int *)(lVar4 + 0x18) == 0) {
LAB_02c2981c:
                    /* WARNING: Subroutine does not return */
      Throw_Index_Wrapper();
    }
    *(float *)(lVar4 + 0x20) = param_1;
    *(float *)(lVar4 + 0x24) = param_2;
    *(undefined4 *)(lVar4 + 0x28) = 0;
    lVar4 = **(long **)(*(long *)puVar1 + 0xb8);
    if (lVar4 != 0) {
      if ((*(uint *)(lVar4 + 0x18) & 0xfffffffe) == 0) goto LAB_02c2981c;
      *(float *)(lVar4 + 0x2c) = param_1;
      *(float *)(lVar4 + 0x30) = param_4;
      *(undefined4 *)(lVar4 + 0x34) = 0;
      lVar4 = **(long **)(*(long *)puVar1 + 0xb8);
      if (lVar4 != 0) {
        if (*(uint *)(lVar4 + 0x18) < 3) goto LAB_02c2981c;
        *(float *)(lVar4 + 0x38) = param_3;
        *(float *)(lVar4 + 0x3c) = param_4;
        *(undefined4 *)(lVar4 + 0x40) = 0;
        lVar4 = **(long **)(*(long *)puVar1 + 0xb8);
        if (lVar4 != 0) {
          if ((*(uint *)(lVar4 + 0x18) & 0xfffffffc) == 0) goto LAB_02c2981c;
          *(float *)(lVar4 + 0x44) = param_3;
          *(float *)(lVar4 + 0x48) = param_2;
          *(undefined4 *)(lVar4 + 0x4c) = 0;
          lVar4 = *(long *)(*(long *)(*(long *)puVar1 + 0xb8) + 8);
          if (lVar4 != 0) {
            if (*(int *)(lVar4 + 0x18) == 0) goto LAB_02c2981c;
            *(float *)(lVar4 + 0x20) = param_5;
            *(float *)(lVar4 + 0x24) = param_6;
            lVar4 = *(long *)(*(long *)(*(long *)puVar1 + 0xb8) + 8);
            if (lVar4 != 0) {
              if ((*(uint *)(lVar4 + 0x18) & 0xfffffffe) == 0) goto LAB_02c2981c;
              *(float *)(lVar4 + 0x28) = param_5;
              *(float *)(lVar4 + 0x2c) = param_8;
              lVar4 = *(long *)(*(long *)(*(long *)puVar1 + 0xb8) + 8);
              if (lVar4 != 0) {
                if (*(uint *)(lVar4 + 0x18) < 3) goto LAB_02c2981c;
                *(float *)(lVar4 + 0x30) = param_7;
                *(float *)(lVar4 + 0x34) = param_8;
                lVar4 = *(long *)(*(long *)(*(long *)puVar1 + 0xb8) + 8);
                if (lVar4 != 0) {
                  if ((*(uint *)(lVar4 + 0x18) & 0xfffffffc) == 0) goto LAB_02c2981c;
                  *(float *)(lVar4 + 0x38) = param_7;
                  *(float *)(lVar4 + 0x3c) = param_6;
                  if (param_10 != 0) {
                    iVar2 = VertexHelper_get_currentVertCount_0x600051f(param_10,0);
                    lVar6 = 0;
                    lVar4 = 0;
                    uVar7 = 0;
                    while( true ) {
                      lVar5 = *(long *)puVar1;
                      if (*(int *)(lVar5 + 0xe4) == 0) {
                        func_0x029f5bd0();
                        lVar5 = *(long *)puVar1;
                      }
                      lVar5 = **(long **)(lVar5 + 0xb8);
                      if (lVar5 == 0) break;
                      if (*(uint *)(lVar5 + 0x18) <= uVar7) goto LAB_02c2981c;
                      lVar5 = lVar5 + lVar4;
                      uVar8 = *(undefined4 *)(lVar5 + 0x20);
                      uVar9 = *(undefined4 *)(lVar5 + 0x24);
                      uVar10 = *(undefined4 *)(lVar5 + 0x28);
                      (**(code **)(*param_9 + 0x298))(param_9,*(undefined8 *)(*param_9 + 0x2a0));
                      uVar3 = func_0x02afc394(0);
                      lVar5 = *(long *)(*(long *)(*(long *)puVar1 + 0xb8) + 8);
                      if (lVar5 == 0) break;
                      if (*(uint *)(lVar5 + 0x18) <= uVar7) goto LAB_02c2981c;
                      VertexHelper_AddVert_0x6000526
                                (uVar8,uVar9,uVar10,*(undefined4 *)(lVar5 + lVar6 + 0x20),
                                 *(undefined4 *)(lVar5 + lVar6 + 0x24),0,0,param_10,uVar3,0);
                      uVar7 = uVar7 + 1;
                      lVar4 = lVar4 + 0xc;
                      lVar6 = lVar6 + 8;
                      if (uVar7 == 4) {
                        VertexHelper_AddTriangle_0x6000528(param_10,iVar2,iVar2 + 1,iVar2 + 2,0);
                        VertexHelper_AddTriangle_0x6000528(param_10,iVar2 + 2,iVar2 + 3,iVar2,0);
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
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

