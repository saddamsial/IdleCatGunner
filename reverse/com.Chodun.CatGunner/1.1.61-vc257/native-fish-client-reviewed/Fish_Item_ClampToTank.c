/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b61a8c, Ghidra VA 02c61a8c. */

void Fish_Item_ClampToTank(long param_1)

{
  undefined *puVar1;
  ulong uVar2;
  long lVar3;
  undefined8 uVar4;
  
  puVar1 = PTR_DAT_05e591c0;
  if ((bRam000000000625c22f & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e591c0);
    bRam000000000625c22f = 1;
  }
  uVar4 = *(undefined8 *)(param_1 + 0x70);
  if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  uVar2 = Object_op_Equality_0x6000dec(uVar4,0,0);
  if ((uVar2 & 1) != 0) {
    return;
  }
  if ((*(long *)(param_1 + 0x70) != 0) && (lVar3 = Fish_Tank_get_TankRect(), lVar3 != 0)) {
    RectTransform_get_rect_0x6000f26(lVar3,0);
    if (*(long *)(param_1 + 0x50) != 0) {
      RectTransform_get_rect_0x6000f26(*(long *)(param_1 + 0x50),0);
      if (*(long *)(param_1 + 0x50) != 0) {
        Transform_get_localScale_0x6000f5d(*(long *)(param_1 + 0x50),0);
        return;
      }
    }
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

