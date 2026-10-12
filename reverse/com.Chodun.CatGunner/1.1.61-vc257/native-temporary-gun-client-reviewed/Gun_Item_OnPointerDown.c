/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b71680, Ghidra VA 02c71680. */

void Gun_Item_OnPointerDown(long param_1)

{
  undefined8 uVar1;
  float fVar2;
  
  if (*(char *)(param_1 + 0x79) != '\0') {
    return;
  }
  *(undefined2 *)(param_1 + 0xb8) = 0x100;
  Gun_Item_StopPressCoroutine_0x6000b1f();
  fVar2 = *(float *)(param_1 + 0x80);
  uVar1 = Gun_Item_PressScaleAnim_0x6000b20
                    (*(float *)(param_1 + 0xf8) * fVar2,*(float *)(param_1 + 0xfc) * fVar2,
                     *(float *)(param_1 + 0x100) * fVar2,*(undefined4 *)(param_1 + 0x84),param_1);
  uVar1 = MonoBehaviour_StartCoroutine_0x6000d43(param_1,uVar1,0);
  *(undefined8 *)(param_1 + 0x108) = uVar1;
  Managed_WriteBarrier(param_1 + 0x108);
  return;
}

