/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b612b4, Ghidra VA 02c612b4. */

void Fish_Item_SyncSizeToSkin(long param_1)

{
  undefined *puVar1;
  ulong uVar2;
  long lVar3;
  undefined8 uVar4;
  
  puVar1 = PTR_DAT_05e591c0;
  if ((bRam000000000625c21f & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e591c0);
    bRam000000000625c21f = 1;
  }
  uVar4 = *(undefined8 *)(param_1 + 0x58);
  if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  uVar2 = Object_op_Equality_0x6000dec(uVar4,0,0);
  if ((uVar2 & 1) == 0) {
    uVar4 = *(undefined8 *)(param_1 + 0x50);
    if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
      func_0x029f5bd0();
    }
    uVar2 = Object_op_Equality_0x6000dec(uVar4,0,0);
    if ((uVar2 & 1) == 0) {
      if (*(long *)(param_1 + 0x58) != 0) {
        lVar3 = *(long *)(param_1 + 0x50);
        RectTransform_get_sizeDelta_0x6000f2d(*(long *)(param_1 + 0x58),0);
        if (lVar3 != 0) {
          RectTransform_set_sizeDelta_0x6000f2e(lVar3,0);
          return;
        }
      }
                    /* WARNING: Subroutine does not return */
      Throw_NullReference_Wrapper();
    }
  }
  return;
}

