/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b641ac, Ghidra VA 02c641ac. */

float Fish_Tank_GetNearestFishDistance(float param_1,float param_2,long param_3,undefined8 param_4)

{
  undefined *puVar1;
  undefined *puVar2;
  ulong uVar3;
  long lVar4;
  float fVar5;
  undefined8 uVar6;
  long lVar7;
  ulong uVar8;
  float fVar9;
  float fVar10;
  float fVar11;
  
  fVar11 = param_2;
  if ((bRam000000000625c240 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e591c0);
    bRam000000000625c240 = 1;
  }
  puVar2 = PTR_DAT_05e591c0;
  puVar1 = PTR_DAT_05e59000;
  lVar4 = *(long *)(param_3 + 0x20);
  if (lVar4 != 0) {
    fVar5 = 3.4028235e+38;
    lVar7 = 4;
    do {
      uVar8 = lVar7 - 4;
      if ((long)(int)*(uint *)(lVar4 + 0x18) <= (long)uVar8) {
        return fVar5;
      }
      if (*(uint *)(lVar4 + 0x18) <= uVar8) {
LAB_02c64318:
                    /* WARNING: Subroutine does not return */
        Throw_Index_Wrapper();
      }
      uVar6 = *(undefined8 *)(lVar4 + lVar7 * 8);
      if (*(int *)(*(long *)puVar2 + 0xe4) == 0) {
        func_0x029f5bd0();
      }
      uVar3 = Object_op_Equality_0x6000dec(uVar6,param_4,0);
      if ((uVar3 & 1) == 0) {
        lVar4 = *(long *)(param_3 + 0x20);
        if (lVar4 == 0) break;
        if (*(uint *)(lVar4 + 0x18) <= uVar8) goto LAB_02c64318;
        lVar4 = *(long *)(lVar4 + lVar7 * 8);
        if (lVar4 == 0) break;
        if (*(char *)(lVar4 + 0x48) != '\0') {
          fVar9 = (float)Fish_Item_GetPosition();
          if (cRam000000000625c2a2 == '\0') {
            func_0x029f5a50(puVar1);
            cRam000000000625c2a2 = '\x01';
          }
          if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
            func_0x029f5bd0();
          }
          fVar10 = param_2 - fVar11;
          fVar11 = (param_1 - fVar9) * (param_1 - fVar9);
          fVar9 = SQRT(fVar11 + fVar10 * fVar10);
          if (fVar9 < fVar5) {
            fVar5 = fVar9;
          }
        }
      }
      lVar4 = *(long *)(param_3 + 0x20);
      lVar7 = lVar7 + 1;
    } while (lVar4 != 0);
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

