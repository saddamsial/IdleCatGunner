/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b550e4, Ghidra VA 02c550e4. */

void Raid_Mission_manager_CopyFlags(long param_1,long param_2)

{
  ulong uVar1;
  uint uVar2;
  ulong uVar3;
  uint uVar4;
  ulong uVar5;
  undefined1 *puVar6;
  undefined1 *puVar7;
  
  if ((param_1 != 0) && (param_2 != 0)) {
    uVar2 = (uint)*(ulong *)(param_1 + 0x18);
    uVar4 = (uint)*(ulong *)(param_2 + 0x18);
    if ((int)uVar4 <= (int)uVar2) {
      uVar2 = uVar4;
    }
    uVar1 = (ulong)uVar2;
    if (0 < (int)uVar2) {
      uVar3 = *(ulong *)(param_1 + 0x18) & 0xffffffff;
      uVar5 = *(ulong *)(param_2 + 0x18) & 0xffffffff;
      puVar6 = (undefined1 *)(param_1 + 0x20);
      puVar7 = (undefined1 *)(param_2 + 0x20);
      do {
        if ((uVar3 == 0) || (uVar5 == 0)) {
                    /* WARNING: Subroutine does not return */
          Throw_Index_Wrapper();
        }
        uVar1 = uVar1 - 1;
        uVar5 = uVar5 - 1;
        uVar3 = uVar3 - 1;
        *puVar7 = *puVar6;
        puVar6 = puVar6 + 1;
        puVar7 = puVar7 + 1;
      } while (uVar1 != 0);
    }
  }
  return;
}

