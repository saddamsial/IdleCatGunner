/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b4424c, Ghidra VA 02c4424c. */

void Cat_manager__Helper_Reload
               (undefined1 param_1 [16],float param_2,float param_3,long param_4,ulong param_5)

{
  undefined *puVar1;
  undefined *puVar2;
  uint uVar3;
  ulong uVar4;
  long lVar5;
  long lVar6;
  undefined8 uVar7;
  float fVar8;
  
  puVar1 = PTR_DAT_05e591c0;
  if ((bRam000000000625c0c8 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5dd40);
    func_0x029f5a50(PTR_DAT_05e591c0);
    func_0x029f5a50(PTR_DAT_05e5e070);
    bRam000000000625c0c8 = 1;
  }
  uVar7 = *(undefined8 *)(param_4 + 0x28);
  if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  uVar4 = Object_op_Equality_0x6000dec(uVar7,0,0);
  puVar2 = PTR_DAT_05e5e070;
  if ((uVar4 & 1) != 0) {
    return;
  }
  if ((param_5 & 1) != 0) {
    lVar5 = *(long *)PTR_DAT_05e5e070;
    if (*(int *)(lVar5 + 0xe4) == 0) {
      func_0x029f5bd0();
      lVar5 = *(long *)puVar2;
    }
    uVar7 = **(undefined8 **)(lVar5 + 0xb8);
    if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
      func_0x029f5bd0(*(long *)puVar1);
    }
    uVar4 = Object_op_Inequality_0x6000ded(uVar7,0,0);
    if ((uVar4 & 1) != 0) {
      lVar5 = *(long *)puVar2;
      if (*(int *)(lVar5 + 0xe4) == 0) {
        func_0x029f5bd0();
        lVar5 = *(long *)puVar2;
      }
      if (**(long **)(lVar5 + 0xb8) == 0) goto LAB_02c444d0;
      uVar4 = Raid_manager__get_Is_Helper_Active();
      if ((uVar4 & 1) != 0) {
        if (*(int *)(*(long *)puVar2 + 0xe4) == 0) {
          func_0x029f5bd0();
        }
        uVar3 = Raid_manager__Helper_GunNum_return();
        if (uVar3 != 0xffffffff) {
          if ((*(long *)(param_4 + 0x28) != 0) &&
             (lVar5 = Component_get_gameObject_0x6000c83(*(long *)(param_4 + 0x28),0), lVar5 != 0))
          {
            uVar4 = GameObject_get_activeSelf_0x6000cff(lVar5,0);
            if ((**(long **)(*(long *)PTR_DAT_05e5dd40 + 0xb8) != 0) &&
               (lVar5 = *(long *)(**(long **)(*(long *)PTR_DAT_05e5dd40 + 0xb8) + 0x20), lVar5 != 0)
               ) {
              if (*(uint *)(lVar5 + 0x18) <= uVar3) goto LAB_02c444d4;
              if (*(long *)(param_4 + 0x28) != 0) {
                Cat__Balance_Reload(*(long *)(param_4 + 0x28),uVar3,
                                    *(undefined8 *)(lVar5 + (long)(int)uVar3 * 8 + 0x20),0);
                if ((*(long *)(param_4 + 0x28) != 0) &&
                   (lVar5 = Component_get_gameObject_0x6000c83(*(long *)(param_4 + 0x28),0),
                   lVar5 != 0)) {
                  GameObject_SetActive_0x6000cfe(lVar5,1,0);
                  if (((uVar4 & 1) == 0) &&
                     ((lVar5 = *(long *)(param_4 + 0x20), lVar5 != 0 &&
                      (*(long *)(lVar5 + 0x18) != 0)))) {
                    if ((int)*(long *)(lVar5 + 0x18) == 0) {
LAB_02c444d4:
                    /* WARNING: Subroutine does not return */
                      Throw_Index_Wrapper();
                    }
                    uVar7 = *(undefined8 *)(lVar5 + 0x20);
                    if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
                      func_0x029f5bd0();
                    }
                    uVar4 = Object_op_Inequality_0x6000ded(uVar7,0,0);
                    if ((uVar4 & 1) != 0) {
                      lVar5 = *(long *)(param_4 + 0x20);
                      if (lVar5 != 0) {
                        if (*(int *)(lVar5 + 0x18) == 0) goto LAB_02c444d4;
                        if (*(long *)(lVar5 + 0x20) != 0) {
                          lVar6 = *(long *)(param_4 + 0x28);
                          lVar5 = Component_get_transform_0x6000c82(*(long *)(lVar5 + 0x20),0);
                          if (lVar5 != 0) {
                            fVar8 = (float)Transform_get_position_0x6000f4d(lVar5,0);
                            lVar5 = *(long *)(param_4 + 0x28);
                            if ((lVar5 != 0) && (lVar6 != 0)) {
                              Cat_Warp_0x6000769(fVar8 + *(float *)(lVar5 + 0x1c4),
                                                 param_2 + *(float *)(lVar5 + 0x1c8),
                                                 param_3 + *(float *)(lVar5 + 0x1cc),lVar6,0);
                              return;
                            }
                          }
                        }
                      }
                      goto LAB_02c444d0;
                    }
                  }
                  return;
                }
              }
            }
          }
          goto LAB_02c444d0;
        }
      }
    }
  }
  if ((*(long *)(param_4 + 0x28) != 0) &&
     (lVar5 = Component_get_gameObject_0x6000c83(*(long *)(param_4 + 0x28),0), lVar5 != 0)) {
    GameObject_SetActive_0x6000cfe(lVar5,0,0);
    return;
  }
LAB_02c444d0:
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

