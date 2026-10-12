/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2bb19e0, Ghidra VA 02cb19e0. */

undefined8 _HoldUpgradeRoutine_d__36_MoveNext(long param_1)

{
  undefined *puVar1;
  long lVar2;
  ulong uVar3;
  long lVar4;
  
  if ((bRam000000000625c54d & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5d4e8);
    bRam000000000625c54d = 1;
  }
  puVar1 = PTR_DAT_05e5d4e8;
  lVar4 = *(long *)(param_1 + 0x20);
  if (*(int *)(param_1 + 0x10) - 1U < 2) {
    *(undefined4 *)(param_1 + 0x10) = 0xffffffff;
    lVar2 = *(long *)puVar1;
    if (*(int *)(lVar2 + 0xe4) == 0) {
      func_0x029f5bd0();
      lVar2 = *(long *)puVar1;
    }
    if ((lVar4 == 0) || (**(long **)(lVar2 + 0xb8) == 0)) {
LAB_02cb1acc:
                    /* WARNING: Subroutine does not return */
      Throw_NullReference_Wrapper();
    }
    uVar3 = Upgrade_manager_Upgrade(**(long **)(lVar2 + 0xb8),*(undefined4 *)(lVar4 + 0x20));
    if ((uVar3 & 1) != 0) {
      *(undefined8 *)(param_1 + 0x18) = *(undefined8 *)(lVar4 + 0xe0);
      Managed_WriteBarrier((undefined8 *)(param_1 + 0x18));
      *(undefined4 *)(param_1 + 0x10) = 2;
      return 1;
    }
    *(undefined8 *)(lVar4 + 0xd0) = 0;
    Managed_WriteBarrier((undefined8 *)(lVar4 + 0xd0),0);
  }
  else if (*(int *)(param_1 + 0x10) == 0) {
    *(undefined4 *)(param_1 + 0x10) = 0xffffffff;
    if (lVar4 != 0) {
      *(undefined8 *)(param_1 + 0x18) = *(undefined8 *)(lVar4 + 0xd8);
      Managed_WriteBarrier((undefined8 *)(param_1 + 0x18));
      *(undefined4 *)(param_1 + 0x10) = 1;
      return 1;
    }
    goto LAB_02cb1acc;
  }
  return 0;
}

