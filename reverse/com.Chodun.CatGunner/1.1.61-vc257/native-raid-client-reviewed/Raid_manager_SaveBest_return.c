/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b599dc, Ghidra VA 02c599dc. */

void Raid_manager_SaveBest_return(long param_1)

{
  long lVar1;
  long lVar2;
  ulong uVar3;
  uint uVar4;
  ulong uVar5;
  uint uVar6;
  ulong uVar7;
  uint *puVar8;
  uint *puVar9;
  undefined8 uVar10;
  undefined1 auVar11 [16];
  
  if ((bRam000000000625c1c4 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5d790);
    bRam000000000625c1c4 = 1;
  }
  Raid_manager_EnsureBestArray(param_1);
  if (*(long *)(param_1 + 0xf8) == 0) {
                    /* WARNING: Subroutine does not return */
    Throw_NullReference_Wrapper();
  }
  lVar1 = Array_Clone_0x6000ccb(*(long *)(param_1 + 0xf8),0);
  if (lVar1 != 0) {
    uVar10 = *(undefined8 *)PTR_DAT_05e5d790;
    lVar2 = func_0x029f5bd4(lVar1,uVar10);
    if (lVar2 == 0) {
      auVar11 = func_0x029f607c(lVar1,uVar10);
      lVar2 = auVar11._8_8_;
      Raid_manager_EnsureBestArray();
      lVar1 = *(long *)(auVar11._0_8_ + 0xf8);
      if (lVar1 != 0) {
        Array_Clear_0x6000d48(lVar1,0,*(undefined4 *)(lVar1 + 0x18),0);
        if (lVar2 != 0) {
          lVar1 = *(long *)(auVar11._0_8_ + 0xf8);
          if (lVar1 == 0) goto LAB_02c59af0;
          uVar4 = (uint)*(ulong *)(lVar2 + 0x18);
          uVar6 = (uint)*(ulong *)(lVar1 + 0x18);
          if ((int)uVar6 <= (int)uVar4) {
            uVar4 = uVar6;
          }
          uVar3 = (ulong)uVar4;
          if (0 < (int)uVar4) {
            uVar5 = *(ulong *)(lVar2 + 0x18) & 0xffffffff;
            uVar7 = *(ulong *)(lVar1 + 0x18) & 0xffffffff;
            puVar8 = (uint *)(lVar2 + 0x20);
            puVar9 = (uint *)(lVar1 + 0x20);
            do {
              if ((uVar5 == 0) || (uVar7 == 0)) {
                    /* WARNING: Subroutine does not return */
                Throw_Index_Wrapper();
              }
              uVar3 = uVar3 - 1;
              uVar7 = uVar7 - 1;
              uVar5 = uVar5 - 1;
              *puVar9 = *puVar8 & ((int)*puVar8 >> 0x1f ^ 0xffffffffU);
              puVar8 = puVar8 + 1;
              puVar9 = puVar9 + 1;
            } while (uVar3 != 0);
          }
        }
        return;
      }
LAB_02c59af0:
                    /* WARNING: Subroutine does not return */
      Throw_NullReference_Wrapper();
    }
  }
  return;
}

