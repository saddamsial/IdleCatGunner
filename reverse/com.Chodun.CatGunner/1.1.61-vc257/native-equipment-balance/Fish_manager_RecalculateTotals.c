/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b5f404, Ghidra VA 02c5f404. */

void Fish_manager_RecalculateTotals(long param_1)

{
  undefined *puVar1;
  undefined *puVar2;
  ulong uVar3;
  long lVar4;
  undefined8 uStack_48;
  undefined8 uStack_40;
  undefined8 uStack_38;
  
  if ((bRam000000000625c20e & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e62ff8);
    func_0x029f5a50(PTR_DAT_05e63000);
    func_0x029f5a50(PTR_DAT_05e63008);
    func_0x029f5a50(PTR_DAT_05e63010);
    bRam000000000625c20e = 1;
  }
  uStack_48 = 0;
  uStack_40 = 0;
  uStack_38 = 0;
  *(undefined8 *)(param_1 + 0x80) = 0;
  *(undefined4 *)(param_1 + 0x7c) = 0;
  puVar2 = PTR_DAT_05e63000;
  puVar1 = PTR_DAT_05e62ff8;
  if (*(long *)(param_1 + 0x20) != 0) {
    if (*(long *)(param_1 + 0x90) == 0) {
                    /* WARNING: Subroutine does not return */
      Throw_NullReference_Wrapper();
    }
    func_0x044f84d0(&uStack_48,*(long *)(param_1 + 0x90),*(undefined8 *)PTR_DAT_05e63010);
    while (uVar3 = func_0x03f9a744(&uStack_48,*(undefined8 *)puVar2), (uVar3 & 1) != 0) {
      lVar4 = *(long *)(param_1 + 0x20);
      if (lVar4 == 0) {
                    /* WARNING: Subroutine does not return */
        Throw_NullReference_Wrapper();
      }
      if (*(uint *)(lVar4 + 0x18) <= (uint)uStack_38) {
                    /* WARNING: Subroutine does not return */
        Throw_Index_Wrapper();
      }
      lVar4 = *(long *)(lVar4 + (long)(int)(uint)uStack_38 * 8 + 0x20);
      if (lVar4 == 0) {
                    /* WARNING: Subroutine does not return */
        Throw_NullReference_Wrapper();
      }
      *(ulong *)(param_1 + 0x7c) =
           CONCAT44((int)((ulong)*(undefined8 *)(lVar4 + 0x18) >> 0x20) +
                    (int)((ulong)*(undefined8 *)(param_1 + 0x7c) >> 0x20),
                    (int)*(undefined8 *)(lVar4 + 0x18) + (int)*(undefined8 *)(param_1 + 0x7c));
      *(int *)(param_1 + 0x84) = *(int *)(lVar4 + 0x20) + *(int *)(param_1 + 0x84);
    }
    func_0x03f9a740(&uStack_48,*(undefined8 *)puVar1);
  }
  *(undefined1 *)(param_1 + 0x88) = 0;
  return;
}

