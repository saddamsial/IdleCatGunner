/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2a83f28, Ghidra VA 02b83f28. */

void DamageTextMeshManager_CalWorldPosition(undefined8 param_1,long param_2,long param_3)

{
  int iVar1;
  int iVar2;
  long lVar3;
  undefined4 uVar4;
  float fVar5;
  float fVar6;
  float fVar7;
  
  if (param_3 != 0) {
    if (*(char *)(param_3 + 0x28) == '\0') {
      lVar3 = DamageTextMeshManager_get_MainCamera_0x60000f5(param_1);
      if ((param_2 != 0) && (lVar3 != 0)) {
        fVar7 = *(float *)(param_2 + 0x14);
        fVar5 = *(float *)(param_2 + 0x18);
        uVar4 = Camera_WorldToViewportPoint_0x60002aa(*(undefined4 *)(param_2 + 0x10),lVar3,0);
        lVar3 = DamageTextMeshManager_get_RenderCamera_0x60000f6(param_1);
        if (lVar3 != 0) {
          uVar4 = Camera_ViewportToWorldPoint_0x60002ab(uVar4,lVar3,0);
          goto LAB_02b83ffc;
        }
      }
    }
    else {
      iVar1 = Screen_get_width_0x6000444(0);
      fVar6 = *(float *)(param_3 + 0x2c);
      iVar2 = Screen_get_height_0x6000445(0);
      fVar7 = *(float *)(param_3 + 0x30);
      lVar3 = DamageTextMeshManager_get_RenderCamera_0x60000f6(param_1);
      if (lVar3 != 0) {
        fVar7 = fVar7 * (float)iVar2;
        fVar5 = 0.0;
        uVar4 = Camera_ScreenToWorldPoint_0x60002ac(fVar6 * (float)iVar1,lVar3,0);
        if (param_2 != 0) {
          fVar5 = fVar5 + 100.0;
LAB_02b83ffc:
          *(undefined4 *)(param_2 + 0x2c) = uVar4;
          *(float *)(param_2 + 0x30) = fVar7;
          *(float *)(param_2 + 0x34) = fVar5;
          return;
        }
      }
    }
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

