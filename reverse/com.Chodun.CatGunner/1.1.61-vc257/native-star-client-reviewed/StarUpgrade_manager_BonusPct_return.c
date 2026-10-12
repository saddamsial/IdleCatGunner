/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b6d98c, Ghidra VA 02c6d98c. */

void StarUpgrade_manager_BonusPct_return(undefined8 *param_1,uint param_2)

{
  undefined *puVar1;
  long lVar2;
  undefined8 uVar3;
  undefined8 uVar4;
  undefined8 uVar5;
  
  puVar1 = PTR_DAT_05e5e058;
  if ((bRam000000000625c2aa & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5e058);
    bRam000000000625c2aa = 1;
  }
  if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  StarUpgrade_manager_EnsureTables();
  lVar2 = *(long *)(*(long *)(*(long *)puVar1 + 0xb8) + 0x18);
  if (lVar2 != 0) {
    if (0x13 < (int)param_2) {
      param_2 = 0x14;
    }
    param_2 = param_2 & ((int)param_2 >> 0x1f ^ 0xffffffffU);
    if (param_2 < *(uint *)(lVar2 + 0x18)) {
      lVar2 = lVar2 + (ulong)param_2 * 0x20;
      uVar3 = *(undefined8 *)(lVar2 + 0x20);
      uVar5 = *(undefined8 *)(lVar2 + 0x38);
      uVar4 = *(undefined8 *)(lVar2 + 0x30);
      param_1[1] = *(undefined8 *)(lVar2 + 0x28);
      *param_1 = uVar3;
      param_1[3] = uVar5;
      param_1[2] = uVar4;
      return;
    }
                    /* WARNING: Subroutine does not return */
    Throw_Index_Wrapper();
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

