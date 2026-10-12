/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b30464, Ghidra VA 02c30464. */

void Relic_Draw_Panel_Reload(long param_1,long param_2)

{
  int iVar1;
  undefined8 uVar2;
  long *plVar3;
  long *plVar4;
  long lVar5;
  int iVar6;
  float fVar7;
  
  if ((param_2 == 0) || (*(long *)(param_2 + 0x18) == 0)) {
    return;
  }
  plVar3 = (long *)(param_1 + 0x80);
  if (*plVar3 != 0) {
    MonoBehaviour_StopCoroutine_0x6000d46(param_1,*plVar3,0);
    *(undefined8 *)(param_1 + 0x80) = 0;
    Managed_WriteBarrier(plVar3,0);
  }
  plVar4 = (long *)(param_1 + 0x68);
  *plVar4 = param_2;
  Managed_WriteBarrier(plVar4,param_2);
  lVar5 = *plVar4;
  *(undefined4 *)(param_1 + 0x70) = 0;
  if (lVar5 != 0) {
    iVar1 = Relic_Draw_Panel_get_PageSize(param_1);
    iVar6 = *(int *)(lVar5 + 0x18);
    if (cRam000000000625baea == '\0') {
      func_0x029f5a50(PTR_DAT_05e59000);
      cRam000000000625baea = '\x01';
    }
    fVar7 = (float)iVar6 / (float)iVar1;
    if (*(int *)(*(long *)PTR_DAT_05e59000 + 0xe4) == 0) {
      func_0x029f5bd0();
    }
    iVar1 = -0x80000000;
    if ((float)(int)fVar7 != INFINITY) {
      iVar1 = (int)fVar7;
    }
    *(int *)(param_1 + 0x74) = iVar1;
    lVar5 = Component_get_gameObject_0x6000c83(param_1,0);
    if (lVar5 != 0) {
      GameObject_SetActive_0x6000cfe(lVar5,1,0);
      if (*(long *)(param_1 + 0x40) != 0) {
        GameObject_SetActive_0x6000cfe(*(long *)(param_1 + 0x40),0,0);
        if (*(long *)(param_1 + 0x48) != 0) {
          GameObject_SetActive_0x6000cfe(*(long *)(param_1 + 0x48),0,0);
          if (*(long *)(param_1 + 0x50) != 0) {
            GameObject_SetActive_0x6000cfe(*(long *)(param_1 + 0x50),0,0);
            lVar5 = *plVar4;
            if (lVar5 != 0) {
              if (*(int *)(lVar5 + 0x18) < 2) {
                if (*(int *)(lVar5 + 0x18) == 0) {
                    /* WARNING: Subroutine does not return */
                  Throw_Index_Wrapper();
                }
                uVar2 = Relic_Draw_Panel_Draw_Single(param_1,*(undefined8 *)(lVar5 + 0x20));
              }
              else {
                uVar2 = Relic_Draw_Panel_Draw_Multi(param_1);
              }
              uVar2 = MonoBehaviour_StartCoroutine_0x6000d43(param_1,uVar2,0);
              *(undefined8 *)(param_1 + 0x80) = uVar2;
              Managed_WriteBarrier(plVar3,uVar2);
              if (cRam000000000625ba57 == '\0') {
                func_0x029f5a50(PTR_DAT_05e5dd70);
                cRam000000000625ba57 = '\x01';
              }
              if (**(long **)(*(long *)PTR_DAT_05e5dd70 + 0xb8) != 0) {
                Sound_manager_PlaySfx_0x600054a
                          (0x3f800000,**(long **)(*(long *)PTR_DAT_05e5dd70 + 0xb8),7,0);
                return;
              }
            }
          }
        }
      }
    }
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

