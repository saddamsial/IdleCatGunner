/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2aa0aa4, Ghidra VA 02ba0aa4. */

undefined8 _Show_WhenReady_d__17_MoveNext(long param_1)

{
  int iVar1;
  undefined *puVar2;
  undefined8 uVar3;
  ulong uVar4;
  long lVar5;
  
  if ((bRam000000000625ba0e & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5d3c0);
    func_0x029f5a50(PTR_DAT_05e5e518);
    bRam000000000625ba0e = 1;
  }
  puVar2 = PTR_DAT_05e5d3c0;
  iVar1 = *(int *)(param_1 + 0x10);
  if (iVar1 == 2) {
    lVar5 = *(long *)(param_1 + 0x20);
    *(undefined4 *)(param_1 + 0x10) = 0xffffffff;
    if (lVar5 == 0) {
                    /* WARNING: Subroutine does not return */
      Throw_NullReference_Wrapper();
    }
    DailyCheck_Try_Show(lVar5);
    if (*(char *)(lVar5 + 0x38) == '\0') {
      if (*(int *)(*(long *)PTR_DAT_05e5d3c0 + 0xe4) == 0) {
        func_0x029f5bd0();
      }
      uVar4 = Time_manager_CanRolloverDaily_0x6000567(*(undefined8 *)PTR_DAT_05e5e518,1,0);
      if ((uVar4 & 1) == 0) {
        *(undefined1 *)(lVar5 + 0x39) = 1;
      }
    }
    DailyCheck_Coupang_Hud_Reload_0x60002d2(lVar5);
  }
  else {
    if (iVar1 == 1) {
      *(undefined4 *)(param_1 + 0x10) = 0xffffffff;
      if (*(int *)(*(long *)puVar2 + 0xe4) == 0) {
        func_0x029f5bd0();
      }
      uVar3 = Time_manager_WaitForCheck_0x6000573(0x40800000,0);
      *(undefined8 *)(param_1 + 0x18) = uVar3;
      Managed_WriteBarrier((undefined8 *)(param_1 + 0x18),uVar3);
      *(undefined4 *)(param_1 + 0x10) = 2;
      return 1;
    }
    if (iVar1 == 0) {
      *(undefined8 *)(param_1 + 0x18) = 0;
      *(undefined4 *)(param_1 + 0x10) = 0xffffffff;
      Managed_WriteBarrier((undefined8 *)(param_1 + 0x18),0);
      *(undefined4 *)(param_1 + 0x10) = 1;
      return 1;
    }
  }
  return 0;
}

