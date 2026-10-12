/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2a9f7c0, Ghidra VA 02b9f7c0. */

void DailyCheck_DailyReward_Get(long param_1,int param_2)

{
  ulong uVar1;
  undefined8 uVar2;
  long lVar3;
  long lVar4;
  
  if ((bRam000000000625b9fb & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5be98);
    func_0x029f5a50(PTR_DAT_05e5e520);
    func_0x029f5a50(PTR_DAT_05e5d3c0);
    func_0x029f5a50(PTR_DAT_05e5e518);
    bRam000000000625b9fb = 1;
  }
  if ((*(int *)(param_1 + 0x30) == param_2) &&
     (uVar1 = DailyCheck_is_DateChange(param_1), (uVar1 & 1) != 0)) {
    if (*(int *)(*(long *)PTR_DAT_05e5d3c0 + 0xe4) == 0) {
      func_0x029f5bd0();
    }
    Time_manager_RecordGain_0x6000576(*(undefined8 *)PTR_DAT_05e5e518,0);
    DailyCheck_Get_Reward(param_1,param_2);
    lVar3 = *(long *)(param_1 + 0x40);
    if (lVar3 != 0) {
      if (*(uint *)(lVar3 + 0x18) <= *(uint *)(param_1 + 0x30)) {
                    /* WARNING: Subroutine does not return */
        Throw_Index_Wrapper();
      }
      lVar3 = *(long *)(lVar3 + (long)(int)*(uint *)(param_1 + 0x30) * 8 + 0x20);
      if (lVar3 != 0) {
        lVar4 = **(long **)(*(long *)PTR_DAT_05e5e520 + 0xb8);
        uVar2 = func_0x02fe5f2c(lVar3,*(undefined8 *)PTR_DAT_05e5be98);
        if (lVar4 != 0) {
          Dia_Attraction_Dia_Spawn_0x600059a(lVar4,uVar2,8,0);
          *(ulong *)(param_1 + 0x30) =
               CONCAT44((int)((ulong)*(undefined8 *)(param_1 + 0x30) >> 0x20) + 1,
                        (int)*(undefined8 *)(param_1 + 0x30) + 1);
          uVar2 = Time_manager_get_Today_0x600057a(0);
          *(undefined8 *)(param_1 + 0x28) = uVar2;
          DailyCheck_UI_reload(param_1);
          if (cRam000000000625ba57 == '\0') {
            func_0x029f5a50(PTR_DAT_05e5dd70);
            cRam000000000625ba57 = '\x01';
          }
          lVar3 = **(long **)(*(long *)PTR_DAT_05e5dd70 + 0xb8);
          if (lVar3 != 0) {
            uVar2 = 7;
            goto LAB_02b9f96c;
          }
        }
      }
    }
  }
  else {
    if (cRam000000000625ba57 == '\0') {
      func_0x029f5a50(PTR_DAT_05e5dd70);
      cRam000000000625ba57 = '\x01';
    }
    lVar3 = **(long **)(*(long *)PTR_DAT_05e5dd70 + 0xb8);
    if (lVar3 != 0) {
      uVar2 = 5;
LAB_02b9f96c:
      Sound_manager_PlaySfx_0x600054a(0x3f800000,lVar3,uVar2,0,0);
      return;
    }
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

