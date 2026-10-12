/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b69e40, Ghidra VA 02c69e40. */

void Gun_manager_NewGun_UI_ForceShow(long param_1,uint param_2)

{
  undefined *puVar1;
  ulong uVar2;
  long lVar3;
  char *pcVar4;
  undefined8 uVar5;
  
  if ((bRam000000000625c271 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e62660);
    func_0x029f5a50(PTR_DAT_05e591c0);
    func_0x029f5a50(PTR_DAT_05e63828);
    bRam000000000625c271 = 1;
  }
  lVar3 = *(long *)(param_1 + 0x30);
  if (lVar3 != 0) {
    if (*(uint *)(lVar3 + 0x18) <= param_2) {
                    /* WARNING: Subroutine does not return */
      Throw_Index_Wrapper();
    }
    pcVar4 = (char *)(lVar3 + (int)param_2 + 0x20);
    if ((*pcVar4 == '\0') && (*pcVar4 = '\x01', puVar1 = PTR_DAT_05e62660, 0xe < (int)param_2)) {
      lVar3 = *(long *)PTR_DAT_05e62660;
      if (*(int *)(lVar3 + 0xe4) == 0) {
        func_0x029f5bd0();
        lVar3 = *(long *)puVar1;
      }
      uVar5 = **(undefined8 **)(lVar3 + 0xb8);
      if (*(int *)(*(long *)PTR_DAT_05e591c0 + 0xe4) == 0) {
        func_0x029f5bd0(*(long *)PTR_DAT_05e591c0);
      }
      uVar2 = Object_op_Inequality_0x6000ded(uVar5,0,0);
      if ((uVar2 & 1) != 0) {
        if (**(long **)(*(long *)PTR_DAT_05e63828 + 0xb8) == 0) goto LAB_02c69f48;
        WeeklyShop_Btn_Reload_0x6000e7c(**(long **)(*(long *)PTR_DAT_05e63828 + 0xb8),0);
      }
    }
    if (*(long *)(param_1 + 0xa8) != 0) {
      NewGun_UI_Reload_0x6000ba8(*(long *)(param_1 + 0xa8),param_2,0);
      return;
    }
  }
LAB_02c69f48:
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

