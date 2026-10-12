/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b8b868, Ghidra VA 02c8b868. */

void DailyGun_LoadFromSaveData(long param_1,long param_2)

{
  ulong uVar1;
  long lVar2;
  uint uVar3;
  ulong uVar4;
  long lVar5;
  
  if ((bRam000000000625c3ad & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e59050);
    bRam000000000625c3ad = 1;
  }
  if ((param_2 != 0) && (param_1 != 0)) {
    lVar5 = *(long *)PTR_DAT_05e59050;
    if (*(long *)(param_2 + 1000) != 0) {
      lVar5 = *(long *)(param_2 + 1000);
    }
    *(long *)(param_1 + 0x28) = lVar5;
    Managed_WriteBarrier();
    lVar5 = *(long *)(param_2 + 0x3e0);
    if (lVar5 != 0) {
      uVar4 = *(ulong *)(lVar5 + 0x18);
      uVar3 = (uint)uVar4;
      if (0 < (int)uVar3) {
        lVar2 = *(long *)(param_1 + 0x20);
        uVar1 = 0;
        if (2 < (int)uVar3) {
          uVar3 = 3;
        }
        do {
          if ((uVar4 & 0xffffffff) == uVar1) {
LAB_02c8b938:
                    /* WARNING: Subroutine does not return */
            Throw_Index_Wrapper();
          }
          if (lVar2 == 0) goto LAB_02c8b93c;
          if (*(uint *)(lVar2 + 0x18) <= uVar1) goto LAB_02c8b938;
          *(undefined4 *)(lVar2 + 0x20 + uVar1 * 4) = *(undefined4 *)(lVar5 + 0x20 + uVar1 * 4);
          uVar1 = uVar1 + 1;
        } while (uVar3 != uVar1);
      }
    }
    DailyGun_Week_Refresh(param_1);
    DailyGun_Btn_Reload();
    return;
  }
LAB_02c8b93c:
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

