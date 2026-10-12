/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b0b564, Ghidra VA 02c0b564. */

void OfflineResult_AbsentSummaryString(long param_1)

{
  undefined *puVar1;
  undefined *puVar2;
  long lVar3;
  undefined8 uVar4;
  
  if ((bRam000000000625be97 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e58a90);
    func_0x029f5a50(PTR_DAT_05e62130);
    func_0x029f5a50(PTR_DAT_05e5b278);
    func_0x029f5a50(PTR_DAT_05e62138);
    func_0x029f5a50(PTR_DAT_05e5a7a8);
    bRam000000000625be97 = 1;
  }
  puVar2 = PTR_DAT_05e62130;
  puVar1 = PTR_DAT_05e5a7a8;
  if (*(float *)(param_1 + 0x10) + 1.0 < *(float *)(param_1 + 0x14)) {
    lVar3 = func_0x029f5b40(*(undefined8 *)PTR_DAT_05e58a90,5);
    if (lVar3 == 0) {
                    /* WARNING: Subroutine does not return */
      Throw_NullReference_Wrapper();
    }
    if (*(int *)(lVar3 + 0x18) != 0) {
      *(undefined8 *)(lVar3 + 0x20) = *(undefined8 *)puVar2;
      Managed_WriteBarrier((undefined8 *)(lVar3 + 0x20));
      uVar4 = OfflineResult_FormatTime(*(undefined4 *)(param_1 + 0x14));
      if ((*(uint *)(lVar3 + 0x18) & 0xfffffffe) != 0) {
        *(undefined8 *)(lVar3 + 0x28) = uVar4;
        Managed_WriteBarrier((undefined8 *)(lVar3 + 0x28),uVar4);
        if (2 < *(uint *)(lVar3 + 0x18)) {
          *(undefined8 *)(lVar3 + 0x30) = *(undefined8 *)PTR_DAT_05e62138;
          Managed_WriteBarrier((undefined8 *)(lVar3 + 0x30));
          uVar4 = OfflineResult_FormatTime(*(undefined4 *)(param_1 + 0x10));
          if ((*(uint *)(lVar3 + 0x18) & 0xfffffffc) != 0) {
            *(undefined8 *)(lVar3 + 0x38) = uVar4;
            Managed_WriteBarrier((undefined8 *)(lVar3 + 0x38),uVar4);
            if (4 < *(uint *)(lVar3 + 0x18)) {
              *(undefined8 *)(lVar3 + 0x40) = *(undefined8 *)PTR_DAT_05e5b278;
              Managed_WriteBarrier();
              String_Concat_0x600029b(lVar3,0);
              return;
            }
          }
        }
      }
    }
                    /* WARNING: Subroutine does not return */
    Throw_Index_Wrapper();
  }
  uVar4 = OfflineResult_FormatTime();
  String_Concat_0x6000299(*(undefined8 *)puVar2,uVar4,*(undefined8 *)puVar1,0);
  return;
}

