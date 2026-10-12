/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b44748, Ghidra VA 02c44748. */

void Cat_manager_Warp(float param_1,float param_2,float param_3,long param_4)

{
  ulong uVar1;
  undefined *puVar2;
  ulong uVar3;
  ulong uVar4;
  long lVar5;
  long lVar6;
  float *pfVar7;
  float *pfVar8;
  float *pfVar9;
  undefined8 uVar10;
  long lVar11;
  
  if ((bRam000000000625c0ca & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e591c0);
    bRam000000000625c0ca = 1;
  }
  puVar2 = PTR_DAT_05e591c0;
  lVar5 = *(long *)(param_4 + 0x20);
  if ((lVar5 == 0) || (*(long *)(lVar5 + 0x18) == 0)) {
    return;
  }
  if ((int)*(long *)(lVar5 + 0x18) == 0) {
LAB_02c44940:
                    /* WARNING: Subroutine does not return */
    Throw_Index_Wrapper();
  }
  lVar5 = *(long *)(lVar5 + 0x20);
  if (*(int *)(*(long *)PTR_DAT_05e591c0 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  uVar3 = Object_op_Inequality_0x6000ded(lVar5,0,0);
  if ((uVar3 & 1) != 0) {
    if (lVar5 == 0) goto LAB_02c448bc;
    Cat_Warp_0x6000769(param_1,param_2,param_3,lVar5,0);
  }
  lVar5 = *(long *)(param_4 + 0x20);
  if (lVar5 != 0) {
    uVar3 = 0;
    lVar11 = 0x20;
    do {
      uVar1 = uVar3 + 1;
      if ((long)(int)*(uint *)(lVar5 + 0x18) <= (long)uVar1) {
        uVar10 = *(undefined8 *)(param_4 + 0x28);
        if (*(int *)(*(long *)puVar2 + 0xe4) == 0) {
          func_0x029f5bd0();
        }
        uVar3 = Object_op_Inequality_0x6000ded(uVar10,0,0);
        if ((uVar3 & 1) == 0) {
          return;
        }
        if (*(long *)(param_4 + 0x28) != 0) {
          Cat_Warp_0x6000769(param_1 + *(float *)(param_4 + 0x30),
                             param_2 + *(float *)(param_4 + 0x34),
                             param_3 + *(float *)(param_4 + 0x38),*(long *)(param_4 + 0x28),0);
          return;
        }
        break;
      }
      if (*(uint *)(lVar5 + 0x18) <= uVar1) goto LAB_02c44940;
      lVar5 = *(long *)(lVar5 + uVar3 * 8 + 0x28);
      if (*(int *)(*(long *)puVar2 + 0xe4) == 0) {
        func_0x029f5bd0();
      }
      uVar4 = Object_op_Equality_0x6000dec(lVar5,0,0);
      if ((uVar4 & 1) == 0) {
        if (lVar5 == 0) break;
        if (*(char *)(lVar5 + 0x1b0) != '\0') {
          lVar6 = *(long *)(param_4 + 0x48);
          if (lVar6 == 0) break;
          if ((long)(int)*(uint *)(lVar6 + 0x18) < (long)uVar1) {
            pfVar7 = (float *)(lVar5 + 0x1c4);
            pfVar8 = (float *)(lVar5 + 0x1c8);
            pfVar9 = (float *)(lVar5 + 0x1cc);
          }
          else {
            if (*(uint *)(lVar6 + 0x18) <= uVar3) goto LAB_02c44940;
            pfVar7 = (float *)(lVar6 + lVar11);
            pfVar8 = pfVar7 + 1;
            pfVar9 = pfVar7 + 2;
          }
          Cat_Warp_0x6000769(param_1 + *pfVar7,param_2 + *pfVar8,param_3 + *pfVar9,lVar5,0);
        }
      }
      lVar5 = *(long *)(param_4 + 0x20);
      uVar3 = uVar3 + 1;
      lVar11 = lVar11 + 0xc;
    } while (lVar5 != 0);
  }
LAB_02c448bc:
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

