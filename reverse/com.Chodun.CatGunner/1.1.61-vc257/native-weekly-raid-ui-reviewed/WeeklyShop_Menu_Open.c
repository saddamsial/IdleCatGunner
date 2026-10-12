/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2ba71a8, Ghidra VA 02ca71a8. */

void WeeklyShop_Menu_Open(long param_1,int param_2)

{
  undefined *puVar1;
  int iVar2;
  
  if ((bRam000000000625c4df & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e649c0);
    bRam000000000625c4df = 1;
  }
  if (*(long *)(param_1 + 0x38) != 0) {
    Menu_Menu_Reload_0x60005b0(*(long *)(param_1 + 0x38),param_2,0);
    WeeklyShop_Menu_Btn_Reload(param_1);
    *(int *)(param_1 + 0x28) = param_2;
    puVar1 = PTR_DAT_05e649c0;
    if (param_2 == 1) {
      iVar2 = PlayerPrefs_GetInt_0x6000b77(*(undefined8 *)PTR_DAT_05e649c0,0,0);
      if (iVar2 == 0) {
        PlayerPrefs_SetInt_0x6000b76(*(undefined8 *)puVar1,1,0);
        PlayerPrefs_Save_0x6000b81(0);
        return;
      }
    }
    return;
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

