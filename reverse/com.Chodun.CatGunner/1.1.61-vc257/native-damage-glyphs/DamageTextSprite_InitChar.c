/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2a85a10, Ghidra VA 02b85a10. */

void DamageTextSprite_InitChar
               (long param_1,undefined4 param_2,undefined8 param_3,undefined4 param_4)

{
  long lVar1;
  long lVar2;
  
  lVar1 = DamageTextSpriteManager_get_Instance_0x6000105();
  if ((lVar1 != 0) &&
     (lVar1 = DamageTextSpriteManager_GetSpriteInfo_0x600010a(lVar1,param_2,param_3,param_4),
     lVar1 != 0)) {
    lVar2 = *(long *)(param_1 + 0x20);
    *(undefined8 *)(param_1 + 0x38) = *(undefined8 *)(lVar1 + 0x10);
    if (lVar2 != 0) {
      if (*(int *)(lVar2 + 0x18) != 0) {
        *(undefined8 *)(lVar2 + 0x20) = *(undefined8 *)(lVar1 + 0x20);
        lVar2 = *(long *)(param_1 + 0x20);
        if (lVar2 == 0) goto LAB_02b85acc;
        if ((*(uint *)(lVar2 + 0x18) & 0xfffffffe) != 0) {
          *(undefined8 *)(lVar2 + 0x28) = *(undefined8 *)(lVar1 + 0x30);
          lVar2 = *(long *)(param_1 + 0x20);
          if (lVar2 == 0) goto LAB_02b85acc;
          if (2 < *(uint *)(lVar2 + 0x18)) {
            *(undefined8 *)(lVar2 + 0x30) = *(undefined8 *)(lVar1 + 0x28);
            lVar2 = *(long *)(param_1 + 0x20);
            if (lVar2 == 0) goto LAB_02b85acc;
            if ((*(uint *)(lVar2 + 0x18) & 0xfffffffc) != 0) {
              *(undefined8 *)(lVar2 + 0x38) = *(undefined8 *)(lVar1 + 0x18);
              return;
            }
          }
        }
      }
                    /* WARNING: Subroutine does not return */
      Throw_Index_Wrapper();
    }
  }
LAB_02b85acc:
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

