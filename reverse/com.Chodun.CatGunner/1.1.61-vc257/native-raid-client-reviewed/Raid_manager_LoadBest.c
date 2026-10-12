/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b59a5c, Ghidra VA 02c59a5c. */

void Raid_manager_LoadBest(long param_1,long param_2)

{
  long lVar1;
  ulong uVar2;
  uint uVar3;
  ulong uVar4;
  uint uVar5;
  ulong uVar6;
  uint *puVar7;
  uint *puVar8;
  
  Raid_manager_EnsureBestArray();
  lVar1 = *(long *)(param_1 + 0xf8);
  if (lVar1 != 0) {
    Array_Clear_0x6000d48(lVar1,0,*(undefined4 *)(lVar1 + 0x18),0);
    if (param_2 != 0) {
      lVar1 = *(long *)(param_1 + 0xf8);
      if (lVar1 == 0) goto LAB_02c59af0;
      uVar3 = (uint)*(ulong *)(param_2 + 0x18);
      uVar5 = (uint)*(ulong *)(lVar1 + 0x18);
      if ((int)uVar5 <= (int)uVar3) {
        uVar3 = uVar5;
      }
      uVar2 = (ulong)uVar3;
      if (0 < (int)uVar3) {
        uVar4 = *(ulong *)(param_2 + 0x18) & 0xffffffff;
        uVar6 = *(ulong *)(lVar1 + 0x18) & 0xffffffff;
        puVar7 = (uint *)(param_2 + 0x20);
        puVar8 = (uint *)(lVar1 + 0x20);
        do {
          if ((uVar4 == 0) || (uVar6 == 0)) {
                    /* WARNING: Subroutine does not return */
            Throw_Index_Wrapper();
          }
          uVar2 = uVar2 - 1;
          uVar6 = uVar6 - 1;
          uVar4 = uVar4 - 1;
          *puVar8 = *puVar7 & ((int)*puVar7 >> 0x1f ^ 0xffffffffU);
          puVar7 = puVar7 + 1;
          puVar8 = puVar8 + 1;
        } while (uVar2 != 0);
      }
    }
    return;
  }
LAB_02c59af0:
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

