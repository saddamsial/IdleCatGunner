/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b6a298, Ghidra VA 02c6a298. */

void Gun_manager_AD_Daily_Gun_RewardGet(long param_1)

{
  int iVar1;
  undefined8 uVar2;
  ulong uVar3;
  undefined8 uVar4;
  
  if ((bRam000000000625c277 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e63a78);
    bRam000000000625c277 = 1;
  }
  uVar4 = *(undefined8 *)(param_1 + 0xb8);
  uVar2 = Gun_manager_get_AD_Daily_TodayKey_0x6000a72();
  uVar3 = String_op_Equality_0x600025a(uVar4,uVar2,0);
  if ((uVar3 & 1) != 0) {
    return;
  }
  iVar1 = Gun_manager_DrawRandomGun(param_1,1);
  if (iVar1 == -1) {
    uVar2 = Gun_manager_Loc_0x6000a7a(*(undefined8 *)PTR_DAT_05e63a78);
    UI_manager_Alert_0x6000602(uVar2,0);
    return;
  }
  uVar2 = Gun_manager_get_AD_Daily_TodayKey_0x6000a72();
  *(undefined8 *)(param_1 + 0xb8) = uVar2;
  Managed_WriteBarrier((undefined8 *)(param_1 + 0xb8),uVar2);
  Gun_manager_NewGun_UI_Reload_0x6000a70(param_1,iVar1);
  Gun_manager_OnWeaponAcquired_0x6000a79(param_1,iVar1);
  if (cRam000000000625ba57 == '\0') {
    func_0x029f5a50(PTR_DAT_05e5dd70);
    cRam000000000625ba57 = '\x01';
  }
  if (**(long **)(*(long *)PTR_DAT_05e5dd70 + 0xb8) != 0) {
    Sound_manager_PlaySfx_0x600054a(0x3f800000,**(long **)(*(long *)PTR_DAT_05e5dd70 + 0xb8),2,0,0);
    Gun_manager_AD_Draw_Btn_Reload(param_1);
    return;
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

