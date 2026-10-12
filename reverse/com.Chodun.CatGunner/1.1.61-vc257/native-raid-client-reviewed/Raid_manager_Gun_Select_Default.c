/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b588c4, Ghidra VA 02c588c4. */

void Raid_manager_Gun_Select_Default(long param_1,uint param_2)

{
  undefined *puVar1;
  int iVar2;
  long lVar3;
  long lVar4;
  
  puVar1 = PTR_DAT_05e5e070;
  if ((bRam000000000625c1af & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5e070);
    bRam000000000625c1af = 1;
  }
  if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  iVar2 = Raid_manager_GunNum_By_Index(param_2);
  if (iVar2 == -1) {
    return;
  }
  lVar3 = *(long *)(param_1 + 0x88);
  if (lVar3 == 0) {
LAB_02c5896c:
                    /* WARNING: Subroutine does not return */
    Throw_NullReference_Wrapper();
  }
  if (param_2 < *(uint *)(lVar3 + 0x18)) {
    lVar4 = *(long *)(param_1 + 0x90);
    *(int *)(lVar3 + (long)(int)param_2 * 4 + 0x20) = iVar2;
    if (lVar4 == 0) goto LAB_02c5896c;
    if (param_2 < *(uint *)(lVar4 + 0x18)) {
      *(uint *)(lVar4 + (long)(int)param_2 * 4 + 0x20) = param_2;
      return;
    }
  }
                    /* WARNING: Subroutine does not return */
  Throw_Index_Wrapper();
}

