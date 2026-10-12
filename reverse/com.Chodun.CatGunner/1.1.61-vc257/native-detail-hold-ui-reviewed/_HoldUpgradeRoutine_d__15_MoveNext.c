/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b89688, Ghidra VA 02c89688. */

undefined8 _HoldUpgradeRoutine_d__15_MoveNext(long param_1)

{
  undefined *puVar1;
  ulong uVar2;
  undefined8 uVar3;
  long lVar4;
  long lVar5;
  undefined4 uVar6;
  
  if ((bRam000000000625c39a & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5dd60);
    func_0x029f5a50(PTR_DAT_05e5a710);
    bRam000000000625c39a = 1;
  }
  puVar1 = PTR_DAT_05e5dd60;
  lVar5 = *(long *)(param_1 + 0x20);
  if (*(int *)(param_1 + 0x10) - 1U < 2) {
    *(undefined4 *)(param_1 + 0x10) = 0xffffffff;
    lVar4 = **(long **)(*(long *)puVar1 + 0xb8);
    if (((lVar4 != 0) && (lVar5 != 0)) && (lVar4 = *(long *)(lVar4 + 0x20), lVar4 != 0)) {
      if (*(uint *)(lVar4 + 0x18) <= *(uint *)(lVar5 + 0x20)) {
                    /* WARNING: Subroutine does not return */
        Throw_Index_Wrapper();
      }
      if (*(long *)(lVar4 + (long)(int)*(uint *)(lVar5 + 0x20) * 8 + 0x20) != 0) {
        uVar2 = Rebirth_Upgrade_Info_UpgradeAble_return_0x6000c9c();
        if ((uVar2 & 1) == 0) {
          *(undefined8 *)(lVar5 + 0x60) = 0;
          Managed_WriteBarrier((undefined8 *)(lVar5 + 0x60),0);
          return 0;
        }
        lVar4 = **(long **)(*(long *)puVar1 + 0xb8);
        if (lVar4 != 0) {
          Rebirth_manager_Rebirth_Upgrade_0x6000c8c(lVar4,*(undefined4 *)(lVar5 + 0x20));
          uVar6 = *(undefined4 *)(lVar5 + 0x5c);
          uVar3 = func_0x029f5cec(*(undefined8 *)PTR_DAT_05e5a710);
          WaitForSeconds__ctor_0x6000e26(uVar6,uVar3,0);
          *(undefined8 *)(param_1 + 0x18) = uVar3;
          Managed_WriteBarrier((undefined8 *)(param_1 + 0x18),uVar3);
          *(undefined4 *)(param_1 + 0x10) = 2;
          return 1;
        }
      }
    }
  }
  else {
    if (*(int *)(param_1 + 0x10) != 0) {
      return 0;
    }
    *(undefined4 *)(param_1 + 0x10) = 0xffffffff;
    if (lVar5 != 0) {
      uVar6 = *(undefined4 *)(lVar5 + 0x58);
      uVar3 = func_0x029f5cec(*(undefined8 *)PTR_DAT_05e5a710);
      WaitForSeconds__ctor_0x6000e26(uVar6,uVar3,0);
      *(undefined8 *)(param_1 + 0x18) = uVar3;
      Managed_WriteBarrier((undefined8 *)(param_1 + 0x18),uVar3);
      *(undefined4 *)(param_1 + 0x10) = 1;
      return 1;
    }
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

