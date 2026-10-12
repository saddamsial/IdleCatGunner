/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b7e208, Ghidra VA 02c7e208. */

void Pet_manager_AD_Daily_Pet_RewardGet(long param_1)

{
  int iVar1;
  ulong uVar2;
  undefined8 uVar3;
  
  if ((bRam000000000625c337 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5d4d0);
    func_0x029f5a50(PTR_DAT_05e63d58);
    bRam000000000625c337 = 1;
  }
  uVar2 = Pet_manager_get_Is_AD_Daily_Pet_Used_Today_0x6000be9(param_1);
  if ((uVar2 & 1) != 0) {
    return;
  }
  iVar1 = Pet_manager_DrawPet_0x6000bd5(param_1,1);
  if (iVar1 == -1) {
    UI_manager_Alert_0x6000602(*(undefined8 *)PTR_DAT_05e63d58,0);
    return;
  }
  if (*(int *)(*(long *)PTR_DAT_05e5d4d0 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  uVar3 = Pet_manager_get_AD_Daily_TodayKey_0x6000be7();
  *(undefined8 *)(param_1 + 0xb8) = uVar3;
  Managed_WriteBarrier();
  Pet_manager_NewPet_UI_Reload_0x6000be6(param_1,iVar1);
  if (cRam000000000625ba57 == '\0') {
    func_0x029f5a50(PTR_DAT_05e5dd70);
    cRam000000000625ba57 = '\x01';
  }
  if (**(long **)(*(long *)PTR_DAT_05e5dd70 + 0xb8) != 0) {
    Sound_manager_PlaySfx_0x600054a(0x3f800000,**(long **)(*(long *)PTR_DAT_05e5dd70 + 0xb8),2,0,0);
    Pet_manager_AD_Draw_Btn_Reload_0x6000beb(param_1);
    return;
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

