/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b8d4c4, Ghidra VA 02c8d4c4. */

void DiaPig_Dia_Get(long param_1)

{
  int iVar1;
  ulong uVar2;
  undefined8 uVar3;
  
  if ((bRam000000000625c3bc & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5d338);
    func_0x029f5a50(PTR_DAT_05e5d3c0);
    bRam000000000625c3bc = 1;
  }
  uVar2 = DiaPig_IsUnlocked();
  if (((uVar2 & 1) == 0) || (iVar1 = *(int *)(param_1 + 0x20), iVar1 < 1)) {
    return;
  }
  *(undefined4 *)(param_1 + 0x20) = 0;
  if (*(int *)(param_1 + 0x24) <= iVar1) {
    if (*(int *)(*(long *)PTR_DAT_05e5d3c0 + 0xe4) == 0) {
      func_0x029f5bd0();
    }
    uVar3 = Time_manager_get_UtcNow_0x6000578(0);
    DiaPig_SetLastTick(param_1,uVar3);
  }
  if (*(int *)(*(long *)PTR_DAT_05e5d338 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  Gamemanager_Get_Dia_0x6000078(iVar1,0);
  if (*(long *)(param_1 + 0x30) != 0) {
    SlicedFilledImage_set_fillAmount_0x60005d0(0,*(long *)(param_1 + 0x30),0);
    if (*(long *)(param_1 + 0x28) != 0) {
      DiaPig_UI_UI_Reload();
      if (cRam000000000625ba57 == '\0') {
        func_0x029f5a50(PTR_DAT_05e5dd70);
        cRam000000000625ba57 = '\x01';
      }
      if (**(long **)(*(long *)PTR_DAT_05e5dd70 + 0xb8) != 0) {
        Sound_manager_PlaySfx_0x600054a
                  (0x3f800000,**(long **)(*(long *)PTR_DAT_05e5dd70 + 0xb8),3,0,0);
        return;
      }
    }
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

