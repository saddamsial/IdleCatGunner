/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b60f18, Ghidra VA 02c60f18. */

void Fish_Item_ForceEndDrag(long param_1)

{
  undefined *puVar1;
  ulong uVar2;
  undefined8 uVar3;
  
  if ((bRam000000000625c222 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e63850);
    func_0x029f5a50(PTR_DAT_05e591c0);
    bRam000000000625c222 = 1;
  }
  puVar1 = PTR_DAT_05e591c0;
  if (*(char *)(param_1 + 0x84) != '\0') {
    *(undefined2 *)(param_1 + 0x84) = 0;
    uVar3 = *(undefined8 *)(param_1 + 0x60);
    if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
      func_0x029f5bd0();
    }
    uVar2 = Object_op_Inequality_0x6000ded(uVar3,0,0);
    if ((uVar2 & 1) != 0) {
      if (*(long *)(param_1 + 0x60) == 0) {
                    /* WARNING: Subroutine does not return */
        Throw_NullReference_Wrapper();
      }
      Canvas_set_sortingOrder_0x600006a(*(long *)(param_1 + 0x60),*(undefined4 *)(param_1 + 0x80),0)
      ;
    }
    puVar1 = PTR_DAT_05e63850;
    if (*(long *)(param_1 + 0x70) != 0) {
      Fish_Tank_ClearAllFusionAlerts();
    }
    if (**(long **)(*(long *)puVar1 + 0xb8) != 0) {
      Fish_DeleteZone_Hide();
      return;
    }
  }
  return;
}

