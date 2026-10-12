/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b51fc4, Ghidra VA 02c51fc4. */

void Raid_manager__Helper_Popup_Open(long param_1)

{
  ulong uVar1;
  undefined8 uVar2;
  
  if ((bRam000000000625c1ca & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e591c0);
    bRam000000000625c1ca = 1;
  }
  uVar1 = Raid_manager__get_Is_Helper_Active(param_1);
  if ((uVar1 & 1) == 0) {
    uVar2 = *(undefined8 *)(param_1 + 0x110);
    if (*(int *)(*(long *)PTR_DAT_05e591c0 + 0xe4) == 0) {
      func_0x029f5bd0();
    }
    uVar1 = Object_op_Inequality_0x6000ded(uVar2,0,0);
    if ((uVar1 & 1) != 0) {
      if (*(long *)(param_1 + 0x110) != 0) {
        GameObject_SetActive_0x6000cfe(*(long *)(param_1 + 0x110),1,0);
        return;
      }
                    /* WARNING: Subroutine does not return */
      Throw_NullReference_Wrapper();
    }
  }
  return;
}

