/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b38d44, Ghidra VA 02c38d44. */

void Cat_Skin_Reload(long param_1)

{
  undefined *puVar1;
  long lVar2;
  undefined8 uVar3;
  long lVar4;
  
  puVar1 = PTR_DAT_05e5d4e0;
  if ((bRam000000000625c088 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5d4e0);
    bRam000000000625c088 = 1;
  }
  lVar2 = *(long *)(*(long *)(*(long *)puVar1 + 0xb8) + 0x10);
  if (lVar2 != 0) {
    lVar4 = *(long *)(param_1 + 0x270);
    uVar3 = Skin_manager_Skin_Bone_return_0x6000e96(lVar2,0);
    if (lVar4 != 0) {
      SpriteRenderer_set_sprite_0x6000197(lVar4,uVar3,0);
      lVar2 = *(long *)(*(long *)(*(long *)puVar1 + 0xb8) + 0x10);
      if (lVar2 != 0) {
        lVar4 = *(long *)(param_1 + 0x278);
        Skin_manager_Skin_Color_return_0x6000e97(lVar2,0);
        if (lVar4 != 0) {
          SpriteRenderer_set_color_0x6000199(lVar4,0);
          return;
        }
      }
    }
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

