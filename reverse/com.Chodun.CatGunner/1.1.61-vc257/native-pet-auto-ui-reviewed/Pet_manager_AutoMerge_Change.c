/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b7d938, Ghidra VA 02c7d938. */

void Pet_manager_AutoMerge_Change(long param_1)

{
  undefined *puVar1;
  ulong uVar2;
  
  if ((bRam000000000625c32d & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e63828);
    func_0x029f5a50(PTR_DAT_05e63d68);
    bRam000000000625c32d = 1;
  }
  uVar2 = Pet_manager_get_is_AutoMergeAble();
  puVar1 = PTR_DAT_05e63828;
  if ((uVar2 & 1) != 0) {
    Pet_manager_Set_AutoMerge(param_1,*(char *)(param_1 + 0x60) == '\0');
    return;
  }
  *(undefined1 *)(param_1 + 0x60) = 0;
  Pet_manager_AutoMerge_UI_Reload(param_1);
  if (**(long **)(*(long *)puVar1 + 0xb8) != 0) {
    WeeklyShop_Open_Auto_0x6000e7f
              (**(long **)(*(long *)puVar1 + 0xb8),*(undefined8 *)PTR_DAT_05e63d68,0);
    return;
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

