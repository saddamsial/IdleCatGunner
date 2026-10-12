/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b35e28, Ghidra VA 02c35e28. */

void Adventure_PetSelect_Slot_Reload(long param_1,ulong param_2)

{
  undefined *puVar1;
  bool bVar2;
  byte bVar3;
  byte bVar4;
  long lVar5;
  ulong uVar6;
  long lVar7;
  uint uVar8;
  int iVar9;
  undefined8 uVar10;
  
  puVar1 = PTR_DAT_05e5d4d0;
  if ((bRam000000000625c068 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e591c0);
    func_0x029f5a50(PTR_DAT_05e5d4d0);
    bRam000000000625c068 = 1;
  }
  lVar5 = *(long *)puVar1;
  uVar8 = (uint)(param_2 >> 0x20);
  *(int *)(param_1 + 0x40) = (int)param_2;
  *(uint *)(param_1 + 0x44) = uVar8;
  if (*(int *)(lVar5 + 0xe4) == 0) {
    func_0x029f5bd0();
    lVar5 = *(long *)puVar1;
  }
  lVar5 = *(long *)(*(long *)(lVar5 + 0xb8) + 0x28);
  if ((int)param_2 == 1) {
    if (lVar5 == 0) goto LAB_02c36078;
    lVar7 = *(long *)(lVar5 + 0x30);
    if ((lVar7 == 0) || ((int)*(uint *)(lVar7 + 0x18) <= (int)uVar8)) {
      iVar9 = -1;
    }
    else {
      if (*(uint *)(lVar7 + 0x18) <= uVar8) {
LAB_02c3607c:
                    /* WARNING: Subroutine does not return */
        Throw_Index_Wrapper();
      }
      iVar9 = *(int *)(lVar7 + ((long)param_2 >> 0x20) * 4 + 0x20);
    }
    bVar3 = Pet_manager_CanDispatchSelected(lVar5,param_2 >> 0x20,0);
  }
  else {
    if (lVar5 == 0) goto LAB_02c36078;
    lVar7 = *(long *)(lVar5 + 0x38);
    if ((lVar7 == 0) || ((int)*(uint *)(lVar7 + 0x18) <= (int)uVar8)) {
      iVar9 = -1;
    }
    else {
      if (*(uint *)(lVar7 + 0x18) <= uVar8) goto LAB_02c3607c;
      iVar9 = *(int *)(lVar7 + ((long)param_2 >> 0x20) * 4 + 0x20);
    }
    bVar3 = Pet_manager_CanDispatchOwned(lVar5,param_2 >> 0x20,0);
  }
  *(bool *)(param_1 + 0x48) = iVar9 != -1;
  if (iVar9 == -1) {
    *(undefined1 *)(param_1 + 0x49) = 0;
    if (*(long *)(param_1 + 0x20) == 0) goto LAB_02c36078;
    GameObject_SetActive_0x6000cfe(*(long *)(param_1 + 0x20),0,0);
    if (*(long *)(param_1 + 0x28) == 0) goto LAB_02c36078;
    GameObject_SetActive_0x6000cfe(*(long *)(param_1 + 0x28),0,0);
    if ((*(long *)(param_1 + 0x30) == 0) ||
       (lVar5 = Component_get_gameObject_0x6000c83(*(long *)(param_1 + 0x30),0), lVar5 == 0))
    goto LAB_02c36078;
    bVar2 = false;
    goto LAB_02c36064;
  }
  if ((*(long *)(param_1 + 0x30) == 0) ||
     (lVar5 = Component_get_gameObject_0x6000c83(*(long *)(param_1 + 0x30),0), lVar5 == 0))
  goto LAB_02c36078;
  GameObject_SetActive_0x6000cfe(lVar5,1,0);
  puVar1 = PTR_DAT_05e591c0;
  if (*(long *)(param_1 + 0x30) == 0) goto LAB_02c36078;
  Pet_Item_Demo_Reload_0x6000c3e(*(long *)(param_1 + 0x30),iVar9,0);
  uVar10 = *(undefined8 *)(param_1 + 0x38);
  if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  uVar6 = Object_op_Inequality_0x6000ded(uVar10,0,0);
  if ((uVar6 & 1) == 0) {
LAB_02c35fe8:
    bVar4 = 1;
  }
  else {
    if (*(long *)(param_1 + 0x38) == 0) goto LAB_02c36078;
    uVar10 = *(undefined8 *)(*(long *)(param_1 + 0x38) + 0x28);
    if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
      func_0x029f5bd0();
    }
    uVar6 = Object_op_Inequality_0x6000ded(uVar10,0,0);
    if ((uVar6 & 1) == 0) goto LAB_02c35fe8;
    if ((*(long *)(param_1 + 0x38) == 0) ||
       (lVar5 = *(long *)(*(long *)(param_1 + 0x38) + 0x28), lVar5 == 0)) goto LAB_02c36078;
    bVar4 = Adventure_Enter_popup_IsAlreadySelected(lVar5,param_2);
    bVar4 = bVar4 ^ 1;
  }
  bVar3 = bVar3 & bVar4 & 1;
  *(byte *)(param_1 + 0x49) = bVar3;
  if (*(long *)(param_1 + 0x20) != 0) {
    GameObject_SetActive_0x6000cfe(*(long *)(param_1 + 0x20),bVar3,0);
    lVar5 = *(long *)(param_1 + 0x28);
    if (lVar5 != 0) {
      bVar2 = *(char *)(param_1 + 0x49) == '\0';
LAB_02c36064:
      GameObject_SetActive_0x6000cfe(lVar5,bVar2,0);
      return;
    }
  }
LAB_02c36078:
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

