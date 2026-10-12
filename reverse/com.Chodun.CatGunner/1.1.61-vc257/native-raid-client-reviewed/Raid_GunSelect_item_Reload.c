/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b5a8bc, Ghidra VA 02c5a8bc. */

void Raid_GunSelect_item_Reload(long param_1,undefined4 param_2)

{
  undefined *puVar1;
  undefined *puVar2;
  int iVar3;
  uint uVar4;
  long lVar5;
  ulong uVar6;
  long lVar7;
  undefined8 uVar8;
  
  puVar2 = PTR_DAT_05e5e070;
  if ((bRam000000000625c1d6 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e591c0);
    func_0x029f5a50(PTR_DAT_05e5e070);
    bRam000000000625c1d6 = 1;
  }
  lVar5 = *(long *)puVar2;
  *(undefined4 *)(param_1 + 0x38) = param_2;
  if (*(int *)(lVar5 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  puVar1 = PTR_DAT_05e591c0;
  iVar3 = Raid_manager_GunNum_By_Index(param_2,0);
  if (iVar3 == -1) {
    if (*(long *)(param_1 + 0x20) != 0) {
      GameObject_SetActive_0x6000cfe(*(long *)(param_1 + 0x20),0,0);
      uVar8 = *(undefined8 *)(param_1 + 0x28);
      if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
        func_0x029f5bd0();
      }
      uVar6 = Object_op_Inequality_0x6000ded(uVar8,0,0);
      if ((uVar6 & 1) != 0) {
        if (*(long *)(param_1 + 0x28) == 0) goto LAB_02c5aa94;
        GameObject_SetActive_0x6000cfe(*(long *)(param_1 + 0x28),0,0);
      }
      if ((*(long *)(param_1 + 0x30) != 0) &&
         (lVar5 = Component_get_gameObject_0x6000c83(*(long *)(param_1 + 0x30),0), lVar5 != 0)) {
        uVar4 = 0;
LAB_02c5aa70:
        GameObject_SetActive_0x6000cfe(lVar5,uVar4,0);
        return;
      }
    }
  }
  else if ((*(long *)(param_1 + 0x30) != 0) &&
          (lVar5 = Component_get_gameObject_0x6000c83(*(long *)(param_1 + 0x30),0), lVar5 != 0)) {
    GameObject_SetActive_0x6000cfe(lVar5,1,0);
    if (*(long *)(param_1 + 0x30) != 0) {
      Gun_Item_Demo_Reload_0x6000b5a(*(long *)(param_1 + 0x30),iVar3,0);
      lVar5 = *(long *)puVar2;
      lVar7 = *(long *)(param_1 + 0x20);
      if (*(int *)(lVar5 + 0xe4) == 0) {
        func_0x029f5bd0();
        lVar5 = *(long *)puVar2;
      }
      if ((**(long **)(lVar5 + 0xb8) != 0) &&
         (uVar4 = Raid_manager_Is_Index_Used_By_AnySlot
                            (**(long **)(lVar5 + 0xb8),*(undefined4 *)(param_1 + 0x38),0),
         lVar7 != 0)) {
        GameObject_SetActive_0x6000cfe(lVar7,uVar4 & 1,0);
        uVar8 = *(undefined8 *)(param_1 + 0x28);
        if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
          func_0x029f5bd0();
        }
        uVar6 = Object_op_Inequality_0x6000ded(uVar8,0,0);
        if ((uVar6 & 1) == 0) {
          return;
        }
        lVar5 = *(long *)(param_1 + 0x28);
        if (*(int *)(*(long *)puVar2 + 0xe4) == 0) {
          func_0x029f5bd0();
        }
        uVar4 = Raid_manager_Is_Weak_Gun(iVar3,0);
        if (lVar5 != 0) {
          uVar4 = uVar4 & 1;
          goto LAB_02c5aa70;
        }
      }
    }
  }
LAB_02c5aa94:
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

