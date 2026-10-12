/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b09264, Ghidra VA 02c09264. */

undefined1  [16] OfflineProgressSimulator_AvgDegreeMoney(uint param_1)

{
  long lVar1;
  undefined *puVar2;
  long lVar3;
  long lVar4;
  long lVar5;
  ulong uVar6;
  long lVar7;
  ulong uVar8;
  undefined1 auVar9 [16];
  double dVar10;
  
  puVar2 = PTR_DAT_05e62040;
  if ((bRam000000000625be86 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e62040);
    bRam000000000625be86 = 1;
  }
  dVar10 = 0.0;
  if (3 < (int)param_1) {
    param_1 = 4;
  }
  lVar3 = *(long *)puVar2;
  uVar8 = 0;
  param_1 = param_1 & ((int)param_1 >> 0x1f ^ 0xffffffffU);
  while( true ) {
    if (*(int *)(lVar3 + 0xe4) == 0) {
      func_0x029f5bd0();
      lVar3 = *(long *)puVar2;
    }
    lVar4 = *(long *)(*(long *)(lVar3 + 0xb8) + 0x10);
    if (lVar4 == 0) break;
    if ((**(uint **)(lVar4 + 0x10) <= param_1) ||
       (uVar6 = *(ulong *)(*(uint **)(lVar4 + 0x10) + 4), (uVar6 & 0xffffffff) <= uVar8)) {
LAB_02c09358:
                    /* WARNING: Subroutine does not return */
      Throw_Index_Wrapper();
    }
    lVar5 = *(long *)(*(long *)(lVar3 + 0xb8) + 8);
    if (lVar5 == 0) break;
    if (*(uint *)(lVar5 + 0x18) <= uVar8) goto LAB_02c09358;
    lVar7 = uVar8 + uVar6 * param_1;
    lVar1 = uVar8 * 8;
    uVar8 = uVar8 + 1;
    dVar10 = dVar10 + ((double)*(float *)(lVar4 + lVar7 * 4 + 0x20) / 100.0) *
                      *(double *)(lVar5 + lVar1 + 0x20);
    if (uVar8 == 3) {
      auVar9._8_8_ = 0;
      auVar9._0_8_ = dVar10;
      return auVar9;
    }
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

