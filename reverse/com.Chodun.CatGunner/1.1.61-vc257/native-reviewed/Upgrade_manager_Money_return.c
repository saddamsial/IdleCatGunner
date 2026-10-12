/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2bb2ddc, Ghidra VA 02cb2ddc. */

void Upgrade_manager_Money_return(undefined8 *param_1)

{
  undefined *puVar1;
  uint uVar2;
  long lVar3;
  undefined8 uVar4;
  undefined8 uVar5;
  undefined8 uVar6;
  
  puVar1 = PTR_DAT_05e5d4e8;
  if ((bRam000000000625c55d & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5d4e8);
    bRam000000000625c55d = 1;
  }
  lVar3 = *(long *)puVar1;
  if (*(int *)(lVar3 + 0xe4) == 0) {
    func_0x029f5bd0();
    lVar3 = *(long *)puVar1;
  }
  if (**(long **)(lVar3 + 0xb8) != 0) {
    lVar3 = *(long *)(**(long **)(lVar3 + 0xb8) + 0x40);
    uVar2 = Upgrade_manager_Lv_return_0x6000f92(2);
    if (lVar3 != 0) {
      if (uVar2 < *(uint *)(lVar3 + 0x18)) {
        lVar3 = lVar3 + (long)(int)uVar2 * 0x20;
        uVar4 = *(undefined8 *)(lVar3 + 0x20);
        uVar6 = *(undefined8 *)(lVar3 + 0x38);
        uVar5 = *(undefined8 *)(lVar3 + 0x30);
        param_1[1] = *(undefined8 *)(lVar3 + 0x28);
        *param_1 = uVar4;
        param_1[3] = uVar6;
        param_1[2] = uVar5;
        return;
      }
                    /* WARNING: Subroutine does not return */
      Throw_Index_Wrapper();
    }
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

