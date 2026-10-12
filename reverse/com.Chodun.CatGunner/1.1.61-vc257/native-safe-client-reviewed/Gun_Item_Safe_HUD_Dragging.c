/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b70fb0, Ghidra VA 02c70fb0. */

void Gun_Item_Safe_HUD_Dragging(long param_1,uint param_2)

{
  undefined *puVar1;
  long lVar2;
  ulong uVar3;
  
  puVar1 = PTR_DAT_05e591c0;
  if ((bRam000000000625c2d5 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e591c0);
    bRam000000000625c2d5 = 1;
  }
  lVar2 = Gun_Item_Safe_HUD_Get_0x6000b2b();
  if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
    func_0x029f5bd0(*(long *)puVar1);
  }
  uVar3 = Object_op_Equality_0x6000dec(lVar2,0,0);
  if ((uVar3 & 1) == 0) {
    if ((param_2 & 1) == 0) {
      if (lVar2 == 0) goto LAB_02c7106c;
      Safe_HUD_SetDragging(lVar2,param_2 & 1,0);
    }
    else {
      if (*(char *)(param_1 + 0x70) != '\0') {
        return;
      }
      if (lVar2 == 0) {
LAB_02c7106c:
                    /* WARNING: Subroutine does not return */
        Throw_NullReference_Wrapper();
      }
      Safe_HUD_SetDragging(lVar2,param_2 & 1,0);
      if ((param_2 & 1) != 0) {
        return;
      }
    }
    *(undefined1 *)(param_1 + 0xe8) = 0;
  }
  return;
}

