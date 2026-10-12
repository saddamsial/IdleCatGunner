/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b696b8, Ghidra VA 02c696b8. */

void Gun_manager_AutoMerge_Change(long param_1)

{
  undefined *puVar1;
  ulong uVar2;
  
  if ((bRam000000000625c26b & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e63828);
    func_0x029f5a50(PTR_DAT_05e63a88);
    bRam000000000625c26b = 1;
  }
  uVar2 = Gun_manager_get_is_AutoMergeAble();
  puVar1 = PTR_DAT_05e63828;
  if ((uVar2 & 1) != 0) {
    Gun_manager_Set_AutoMerge(param_1,*(char *)(param_1 + 0x70) == '\0');
    return;
  }
  *(undefined1 *)(param_1 + 0x70) = 0;
  Gun_manager_AutoMerge_UI_Reload(param_1);
  if (**(long **)(*(long *)puVar1 + 0xb8) != 0) {
    WeeklyShop_Open_Auto_0x6000e7f
              (**(long **)(*(long *)puVar1 + 0xb8),*(undefined8 *)PTR_DAT_05e63a88,0);
    return;
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

