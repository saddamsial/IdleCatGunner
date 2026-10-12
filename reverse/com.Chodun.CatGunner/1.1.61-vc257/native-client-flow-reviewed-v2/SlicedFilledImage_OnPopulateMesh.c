/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b28a4c, Ghidra VA 02c28a4c. */

void SlicedFilledImage_OnPopulateMesh(undefined8 param_1,undefined8 param_2)

{
  undefined *puVar1;
  undefined8 uVar2;
  ulong uVar3;
  
  puVar1 = PTR_DAT_05e591c0;
  if ((bRam000000000625bfcf & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e591c0);
    bRam000000000625bfcf = 1;
  }
  uVar2 = SlicedFilledImage_get_activeSprite_0x60005d8(param_1);
  if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
    func_0x029f5bd0(*(long *)puVar1);
  }
  uVar3 = Object_op_Equality_0x6000dec(uVar2,0,0);
  if ((uVar3 & 1) != 0) {
    Graphic_OnPopulateMesh_0x600010e(param_1,param_2,0);
    return;
  }
  SlicedFilledImage_GenerateSlicedFilledSprite_0x60005e4(param_1,param_2);
  return;
}

