/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b61d20, Ghidra VA 02c61d20. */

void Fish_Item_OnPointerUp(long param_1)

{
  undefined8 uVar1;
  
  if ((bRam000000000625c226 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e63850);
    bRam000000000625c226 = 1;
  }
  if (*(char *)(param_1 + 0x86) == '\0') {
    if ((*(char *)(param_1 + 0xb0) != '\0') &&
       (*(undefined1 *)(param_1 + 0xb0) = 0, *(char *)(param_1 + 0x84) == '\0')) {
      if (**(long **)(*(long *)PTR_DAT_05e63850 + 0xb8) != 0) {
        Fish_DeleteZone_Hide();
      }
      Fish_Item_StopPressCoroutine(param_1);
      uVar1 = Fish_Item_PressBounceBack(param_1);
      uVar1 = MonoBehaviour_StartCoroutine_0x6000d43(param_1,uVar1,0);
      *(undefined8 *)(param_1 + 0xa8) = uVar1;
      Managed_WriteBarrier((undefined8 *)(param_1 + 0xa8),uVar1);
      return;
    }
  }
  else {
    *(undefined1 *)(param_1 + 0xb0) = 0;
  }
  return;
}

