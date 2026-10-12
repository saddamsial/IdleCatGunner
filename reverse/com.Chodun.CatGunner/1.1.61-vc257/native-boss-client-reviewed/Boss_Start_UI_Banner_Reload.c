/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b480e4, Ghidra VA 02c480e4. */

void Boss_Start_UI_Banner_Reload(long param_1)

{
  undefined *puVar1;
  uint uVar2;
  ulong uVar3;
  long lVar4;
  undefined8 uVar5;
  
  puVar1 = PTR_DAT_05e591c0;
  if ((bRam000000000625c0f7 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e591c0);
    func_0x029f5a50(PTR_DAT_05e5e0b8);
    bRam000000000625c0f7 = 1;
  }
  uVar5 = *(undefined8 *)(param_1 + 0xb8);
  if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  uVar3 = Object_op_Inequality_0x6000ded(uVar5,0,0);
  if ((uVar3 & 1) != 0) {
    lVar4 = *(long *)(param_1 + 0xb8);
    if (*(int *)(*(long *)PTR_DAT_05e5e0b8 + 0xe4) == 0) {
      func_0x029f5bd0();
    }
    uVar2 = PlusPack_Banner_ShouldShow_0x6000d3e(0,0);
    if (lVar4 != 0) {
      GameObject_SetActive_0x6000cfe(lVar4,uVar2 & 1,0);
      return;
    }
                    /* WARNING: Subroutine does not return */
    Throw_NullReference_Wrapper();
  }
  return;
}

