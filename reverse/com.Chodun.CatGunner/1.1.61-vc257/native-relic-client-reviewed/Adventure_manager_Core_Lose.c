/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b2cca4, Ghidra VA 02c2cca4. */

void Adventure_manager_Core_Lose(uint param_1,int param_2)

{
  undefined *puVar1;
  long lVar2;
  long lVar3;
  long lVar4;
  
  puVar1 = PTR_DAT_05e5dd28;
  if ((bRam000000000625bffc & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5dd28);
    bRam000000000625bffc = 1;
  }
  lVar2 = *(long *)puVar1;
  if (*(int *)(lVar2 + 0xe4) == 0) {
    func_0x029f5bd0();
    lVar2 = *(long *)puVar1;
  }
  lVar4 = (*(long **)(lVar2 + 0xb8))[2];
  if ((lVar4 != 0) && (lVar4 = *(long *)(lVar4 + 0x28), lVar4 != 0)) {
    if (*(uint *)(lVar4 + 0x18) <= param_1) {
                    /* WARNING: Subroutine does not return */
      Throw_Index_Wrapper();
    }
    lVar4 = lVar4 + (long)(int)param_1 * 4;
    lVar3 = **(long **)(lVar2 + 0xb8);
    *(int *)(lVar4 + 0x20) = *(int *)(lVar4 + 0x20) - param_2;
    if (lVar3 != 0) {
      (**(code **)(lVar3 + 0x18))(*(undefined8 *)(lVar3 + 0x40),*(undefined8 *)(lVar3 + 0x28));
      lVar2 = *(long *)puVar1;
    }
    if (*(int *)(lVar2 + 0xe4) == 0) {
      func_0x029f5bd0();
      lVar2 = *(long *)puVar1;
    }
    if (*(long *)(*(long *)(lVar2 + 0xb8) + 0x10) != 0) {
      Adventure_manager_Alert_Reload_0x600062a();
      lVar2 = *(long *)(*(long *)(*(long *)puVar1 + 0xb8) + 0x10);
      if ((lVar2 != 0) && (lVar2 = *(long *)(lVar2 + 0x40), lVar2 != 0)) {
        Adventure_Panel_Alert_Reload_0x60006d4(lVar2,0);
        return;
      }
    }
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

