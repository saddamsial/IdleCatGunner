/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2ba7e00, Ghidra VA 02ca7e00. */

void Skin_Item_UI_First_Reload(long param_1,uint param_2)

{
  undefined *puVar1;
  long lVar2;
  undefined8 uVar3;
  long lVar4;
  
  puVar1 = PTR_DAT_05e5d4e0;
  if ((bRam000000000625c4eb & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5d4e0);
    bRam000000000625c4eb = 1;
  }
  lVar2 = *(long *)puVar1;
  *(uint *)(param_1 + 0x20) = param_2;
  lVar2 = *(long *)(*(long *)(lVar2 + 0xb8) + 0x10);
  if ((lVar2 != 0) && (lVar2 = *(long *)(lVar2 + 0x50), lVar2 != 0)) {
    if (*(uint *)(lVar2 + 0x18) <= param_2) {
                    /* WARNING: Subroutine does not return */
      Throw_Index_Wrapper();
    }
    if (*(long *)(param_1 + 0x30) != 0) {
      lVar4 = *(long *)(param_1 + 0x28);
      uVar3 = *(undefined8 *)(lVar2 + (long)(int)param_2 * 8 + 0x20);
      Image_set_sprite_0x600013f(*(long *)(param_1 + 0x30),uVar3,0);
      if (lVar4 != 0) {
        Image_set_sprite_0x600013f(lVar4,uVar3,0);
        return;
      }
    }
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

