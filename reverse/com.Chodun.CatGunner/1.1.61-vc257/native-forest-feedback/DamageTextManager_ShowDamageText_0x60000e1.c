/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2a83e28, Ghidra VA 02b83e28. */

void DamageTextManager_ShowDamageText_0x60000e1
               (undefined4 param_1,undefined4 param_2,undefined4 param_3,long param_4,uint param_5,
               undefined8 param_6)

{
  ulong uVar1;
  long lVar2;
  long lVar3;
  long lVar4;
  undefined4 uVar5;
  
  if (*(char *)(param_4 + 0x38) == '\0') {
    uVar1 = DamageTextManager_EnsureCameraBasis();
    if ((uVar1 & 1) != 0) {
      lVar3 = *(long *)(param_4 + 0x28);
      if (lVar3 != 0) {
        if (*(uint *)(lVar3 + 0x18) <= param_5) {
                    /* WARNING: Subroutine does not return */
          Throw_Index_Wrapper();
        }
        lVar4 = *(long *)(lVar3 + (long)(int)param_5 * 8 + 0x20);
        uVar5 = Time_get_time_0x6000ee1(0);
        lVar3 = DamageTextManager_RequestHudNumber(param_4);
        if (lVar3 != 0) {
          *(undefined4 *)(lVar3 + 0x5c) = uVar5;
          *(undefined4 *)(lVar3 + 0x10) = param_1;
          *(undefined4 *)(lVar3 + 0x14) = param_2;
          *(undefined4 *)(lVar3 + 0x18) = param_3;
          *(uint *)(lVar3 + 0x28) = param_5;
          if (lVar4 != 0) {
            DamageTextAnimation_InitDamageTextAnimation(lVar4,lVar3);
            lVar2 = DamageTextMeshManager_get_Instance_0x60000f4();
            if (lVar2 != 0) {
              DamageTextMeshManager_CalWorldPosition(lVar2,lVar3,lVar4);
              DamageTextObject_InitSprites(lVar3,*(undefined8 *)(lVar4 + 0x38),param_6);
              DamageTextManager_DoAnimation(uVar5,param_4,lVar3,1);
              return;
            }
          }
        }
      }
                    /* WARNING: Subroutine does not return */
      Throw_NullReference_Wrapper();
    }
  }
  return;
}

