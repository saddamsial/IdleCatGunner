/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b6e77c, Ghidra VA 02c6e77c. */

void StarUpgrade_manager_LoadData(long param_1,long param_2)

{
  long lVar1;
  ulong uVar2;
  uint uVar3;
  ulong uVar4;
  uint uVar5;
  ulong uVar6;
  uint *puVar7;
  long lVar8;
  uint *puVar9;
  
  StarUpgrade_manager_EnsureArrays();
  lVar1 = *(long *)(param_1 + 0x30);
  if (lVar1 != 0) {
    Array_Clear_0x6000d48(lVar1,0,*(undefined4 *)(lVar1 + 0x18),0);
    lVar1 = *(long *)(param_1 + 0x38);
    if (lVar1 != 0) {
      Array_Clear_0x6000d48(lVar1,0,*(undefined4 *)(lVar1 + 0x18),0);
      if (param_2 != 0) {
        lVar1 = *(long *)(param_2 + 0xf8);
        if (lVar1 != 0) {
          lVar8 = *(long *)(param_1 + 0x30);
          if (lVar8 == 0) goto LAB_02c6e898;
          uVar3 = (uint)*(ulong *)(lVar1 + 0x18);
          uVar5 = (uint)*(ulong *)(lVar8 + 0x18);
          if ((int)uVar5 <= (int)uVar3) {
            uVar3 = uVar5;
          }
          uVar2 = (ulong)uVar3;
          if (0 < (int)uVar3) {
            uVar4 = *(ulong *)(lVar1 + 0x18) & 0xffffffff;
            uVar6 = *(ulong *)(lVar8 + 0x18) & 0xffffffff;
            puVar7 = (uint *)(lVar1 + 0x20);
            puVar9 = (uint *)(lVar8 + 0x20);
            do {
              if ((uVar4 == 0) || (uVar6 == 0)) goto LAB_02c6e894;
              uVar3 = *puVar7;
              uVar6 = uVar6 - 1;
              uVar4 = uVar4 - 1;
              if (0x13 < (int)uVar3) {
                uVar3 = 0x14;
              }
              uVar2 = uVar2 - 1;
              *puVar9 = uVar3 & ((int)uVar3 >> 0x1f ^ 0xffffffffU);
              puVar7 = puVar7 + 1;
              puVar9 = puVar9 + 1;
            } while (uVar2 != 0);
          }
        }
        lVar1 = *(long *)(param_2 + 0x100);
        if (lVar1 != 0) {
          lVar8 = *(long *)(param_1 + 0x38);
          if (lVar8 == 0) goto LAB_02c6e898;
          uVar3 = (uint)*(ulong *)(lVar1 + 0x18);
          uVar5 = (uint)*(ulong *)(lVar8 + 0x18);
          if ((int)uVar5 <= (int)uVar3) {
            uVar3 = uVar5;
          }
          uVar2 = (ulong)uVar3;
          if (0 < (int)uVar3) {
            uVar4 = *(ulong *)(lVar1 + 0x18) & 0xffffffff;
            uVar6 = *(ulong *)(lVar8 + 0x18) & 0xffffffff;
            puVar7 = (uint *)(lVar1 + 0x20);
            puVar9 = (uint *)(lVar8 + 0x20);
            do {
              if ((uVar4 == 0) || (uVar6 == 0)) {
LAB_02c6e894:
                    /* WARNING: Subroutine does not return */
                Throw_Index_Wrapper();
              }
              uVar2 = uVar2 - 1;
              uVar6 = uVar6 - 1;
              uVar4 = uVar4 - 1;
              *puVar9 = *puVar7 & ((int)*puVar7 >> 0x1f ^ 0xffffffffU);
              puVar7 = puVar7 + 1;
              puVar9 = puVar9 + 1;
            } while (uVar2 != 0);
          }
        }
      }
      return;
    }
  }
LAB_02c6e898:
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

