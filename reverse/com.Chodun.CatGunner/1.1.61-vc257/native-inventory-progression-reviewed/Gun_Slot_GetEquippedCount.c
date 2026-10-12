/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b77b94, Ghidra VA 02c77b94. */

int Gun_Slot_GetEquippedCount(void)

{
  undefined *puVar1;
  int iVar2;
  ulong uVar3;
  uint uVar4;
  ulong uVar5;
  long lVar6;
  int *piVar7;
  
  puVar1 = PTR_DAT_05e5dd40;
  if ((bRam000000000625c30c & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5dd40);
    bRam000000000625c30c = 1;
  }
  if ((**(long **)(*(long *)puVar1 + 0xb8) != 0) &&
     (lVar6 = *(long *)(**(long **)(*(long *)puVar1 + 0xb8) + 0x28), lVar6 != 0)) {
    uVar4 = (uint)*(ulong *)(lVar6 + 0x18);
    if ((int)uVar4 < 1) {
      iVar2 = 0;
    }
    else {
      uVar3 = (ulong)(uVar4 & ((int)uVar4 >> 0x1f ^ 0xffffffffU));
      iVar2 = 0;
      uVar5 = *(ulong *)(lVar6 + 0x18) & 0xffffffff;
      piVar7 = (int *)(lVar6 + 0x20);
      do {
        if (uVar5 == 0) {
                    /* WARNING: Subroutine does not return */
          Throw_Index_Wrapper(iVar2);
        }
        uVar3 = uVar3 - 1;
        uVar5 = uVar5 - 1;
        if (*piVar7 != -1) {
          iVar2 = iVar2 + 1;
        }
        piVar7 = piVar7 + 1;
      } while (uVar3 != 0);
    }
    return iVar2;
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

