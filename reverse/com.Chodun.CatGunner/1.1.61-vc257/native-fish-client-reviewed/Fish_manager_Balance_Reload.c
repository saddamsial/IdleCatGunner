/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b5dd3c, Ghidra VA 02c5dd3c. */

void Fish_manager_Balance_Reload(long param_1)

{
  undefined *puVar1;
  undefined *puVar2;
  undefined4 uVar3;
  uint uVar4;
  undefined8 uVar5;
  long lVar6;
  long lVar7;
  undefined8 *puVar8;
  ulong uVar9;
  long *plVar10;
  long lVar11;
  float fVar12;
  float fVar13;
  
  puVar1 = PTR_DAT_05e63818;
  if ((bRam000000000625c1fb & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e63818);
    func_0x029f5a50(PTR_DAT_05e63820);
    func_0x029f5a50(PTR_DAT_05e59050);
    bRam000000000625c1fb = 1;
  }
  uVar5 = func_0x029f5b40(*(undefined8 *)puVar1,0xd);
  puVar8 = (undefined8 *)(param_1 + 0x20);
  *puVar8 = uVar5;
  Managed_WriteBarrier(puVar8,uVar5);
  puVar2 = PTR_DAT_05e63820;
  puVar1 = PTR_DAT_05e59050;
  plVar10 = (long *)*puVar8;
  if (plVar10 != (long *)0x0) {
    uVar9 = 0;
    lVar11 = 0x20;
    do {
      if ((long)(int)plVar10[3] <= (long)uVar9) {
        return;
      }
      lVar6 = func_0x029f5cec(*(undefined8 *)puVar2);
      Object__ctor_0x600100e(lVar6,0);
      if (lVar6 == 0) break;
      fVar12 = (float)func_0x05afb280(0x40400000,(float)(int)uVar9);
      fVar13 = (float)func_0x05afb280(0x40200000,(float)(int)uVar9);
      *(undefined8 *)(lVar6 + 0x10) = *(undefined8 *)puVar1;
      Managed_WriteBarrier();
      uVar3 = Fish_manager_RoundToSignificant(fVar12 * 4.0,2);
      *(undefined4 *)(lVar6 + 0x18) = uVar3;
      uVar4 = Fish_manager_RoundToSignificant(fVar13,2);
      if (99 < (int)uVar4) {
        uVar4 = 100;
      }
      *(uint *)(lVar6 + 0x1c) = uVar4 & ((int)uVar4 >> 0x1f ^ 0xffffffffU);
      uVar3 = Fish_manager_RoundToSignificant(fVar13 * 8.0,2);
      *(undefined4 *)(lVar6 + 0x20) = uVar3;
      lVar7 = func_0x029f5bd4(lVar6,*(undefined8 *)(*plVar10 + 0x40));
      if (lVar7 == 0) {
        uVar5 = func_0x029f5d20();
        func_0x029f5bc0(uVar5,0);
LAB_02c5deec:
                    /* WARNING: Subroutine does not return */
        Throw_Index_Wrapper();
      }
      if (*(uint *)(plVar10 + 3) <= uVar9) goto LAB_02c5deec;
      plVar10[uVar9 + 4] = lVar6;
      Managed_WriteBarrier((long)plVar10 + lVar11,lVar6);
      plVar10 = (long *)*puVar8;
      uVar9 = uVar9 + 1;
      lVar11 = lVar11 + 8;
    } while (plVar10 != (long *)0x0);
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

