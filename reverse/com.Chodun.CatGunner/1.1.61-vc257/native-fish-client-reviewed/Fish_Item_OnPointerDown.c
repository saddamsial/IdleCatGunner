/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b61bd4, Ghidra VA 02c61bd4. */

void Fish_Item_OnPointerDown(long param_1)

{
  undefined *puVar1;
  long lVar2;
  undefined8 uVar3;
  float fVar4;
  
  if ((bRam000000000625c225 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e63850);
    bRam000000000625c225 = 1;
  }
  puVar1 = PTR_DAT_05e63850;
  if (*(char *)(param_1 + 0x86) != '\0') {
    return;
  }
  *(undefined1 *)(param_1 + 0x84) = 0;
  lVar2 = **(long **)(*(long *)puVar1 + 0xb8);
  *(undefined1 *)(param_1 + 0xb0) = 1;
  if (lVar2 != 0) {
    Fish_DeleteZone_Show();
  }
  Fish_Item_StopPressCoroutine(param_1);
  fVar4 = *(float *)(param_1 + 0x94);
  uVar3 = Fish_Item_PressScaleAnim
                    (*(float *)(param_1 + 0x9c) * fVar4,*(float *)(param_1 + 0xa0) * fVar4,
                     *(float *)(param_1 + 0xa4) * fVar4,*(undefined4 *)(param_1 + 0x98),param_1);
  uVar3 = MonoBehaviour_StartCoroutine_0x6000d43(param_1,uVar3,0);
  *(undefined8 *)(param_1 + 0xa8) = uVar3;
  Managed_WriteBarrier((undefined8 *)(param_1 + 0xa8),uVar3);
  return;
}

