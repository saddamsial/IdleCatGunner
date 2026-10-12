/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2aa4ba8, Ghidra VA 02ba4ba8. */

void Mission_manager_Mission_Reset(long param_1)

{
  uint uVar1;
  undefined *puVar2;
  undefined8 uVar3;
  long lVar4;
  uint uVar5;
  long lVar6;
  
  puVar2 = PTR_DAT_05e5d3c0;
  if ((bRam000000000625ba42 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5d3c0);
    bRam000000000625ba42 = 1;
  }
  if (*(int *)(*(long *)puVar2 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  uVar3 = Time_manager_get_Now_0x6000579(0);
  lVar4 = *(long *)(param_1 + 0x20);
  *(undefined8 *)(param_1 + 0x70) = uVar3;
  *(undefined8 *)(param_1 + 0x50) = 0;
  *(undefined8 *)(param_1 + 0x58) = 0;
  if (lVar4 != 0) {
    uVar1 = *(uint *)(lVar4 + 0x18);
    if (0 < (int)uVar1) {
      uVar5 = 0;
      do {
        if (uVar1 == uVar5) {
                    /* WARNING: Subroutine does not return */
          Throw_Index_Wrapper();
        }
        lVar6 = *(long *)(lVar4 + (long)(int)uVar5 * 8 + 0x20);
        if (lVar6 == 0) goto LAB_02ba4c54;
        uVar5 = uVar5 + 1;
        *(undefined2 *)(lVar6 + 0x24) = 0;
      } while ((uVar1 & ((int)uVar1 >> 0x1f ^ 0xffffffffU)) != uVar5);
    }
    Mission_manager_UI_Reload_0x600034f(param_1);
    Mission_manager_RestartAlertLoop_0x600033e(param_1);
    return;
  }
LAB_02ba4c54:
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

