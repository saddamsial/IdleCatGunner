/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2baa0bc, Ghidra VA 02caa0bc. */

void SpeedRun_manager_Tree_Destroyed(long param_1,undefined8 param_2)

{
  int iVar1;
  undefined *puVar2;
  long lVar3;
  
  puVar2 = PTR_DAT_05e5d338;
  if ((bRam000000000625c501 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5d338);
    func_0x029f5a50(PTR_DAT_05e64a18);
    bRam000000000625c501 = 1;
  }
  lVar3 = *(long *)puVar2;
  if (*(int *)(lVar3 + 0xe4) == 0) {
    func_0x029f5bd0();
    lVar3 = *(long *)puVar2;
  }
  if (**(char **)(lVar3 + 0xb8) == '\0') {
    return;
  }
  if (*(long *)(param_1 + 0x28) != 0) {
    func_0x0452e0a8(*(long *)(param_1 + 0x28),param_2,*(undefined8 *)PTR_DAT_05e64a18);
    iVar1 = *(int *)(param_1 + 0x58) + -1;
    *(int *)(param_1 + 0x58) = iVar1;
    if (*(long *)(param_1 + 0x80) != 0) {
      SpeedRun_Slider_Value_Reload
                ((float)(*(int *)(param_1 + 0x5c) - iVar1) / (float)*(int *)(param_1 + 0x5c));
      if (0 < *(int *)(param_1 + 0x58)) {
        return;
      }
      SpeedRun_manager_Game_Win(param_1);
      return;
    }
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

