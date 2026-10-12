/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b52064, Ghidra VA 02c52064. */

void Raid_Helper_Purchase_Popup__Reload(long param_1)

{
  undefined *puVar1;
  undefined *puVar2;
  uint uVar3;
  int iVar4;
  long lVar5;
  ulong uVar6;
  undefined8 uVar7;
  
  puVar2 = PTR_DAT_05e5e070;
  if ((bRam000000000625c163 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e591c0);
    func_0x029f5a50(PTR_DAT_05e5e070);
    bRam000000000625c163 = 1;
  }
  puVar1 = PTR_DAT_05e591c0;
  lVar5 = *(long *)puVar2;
  if (*(int *)(lVar5 + 0xe4) == 0) {
    func_0x029f5bd0();
    lVar5 = *(long *)puVar2;
  }
  lVar5 = **(long **)(lVar5 + 0xb8);
  if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
    func_0x029f5bd0(*(long *)puVar1);
  }
  uVar6 = Object_op_Inequality_0x6000ded(lVar5,0,0);
  if ((uVar6 & 1) == 0) {
    uVar3 = 0;
  }
  else {
    if (lVar5 == 0) goto LAB_02c52204;
    uVar3 = Raid_manager__get_Is_Helper_Active(lVar5);
  }
  uVar7 = *(undefined8 *)(param_1 + 0x28);
  if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  uVar6 = Object_op_Inequality_0x6000ded(uVar7,0,0);
  if ((uVar6 & 1) != 0) {
    if (*(long *)(param_1 + 0x28) == 0) goto LAB_02c52204;
    GameObject_SetActive_0x6000cfe(*(long *)(param_1 + 0x28),uVar3 & 1,0);
  }
  uVar7 = *(undefined8 *)(param_1 + 0x30);
  if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  uVar6 = Object_op_Inequality_0x6000ded(uVar7,0,0);
  if ((uVar6 & 1) != 0) {
    if (*(long *)(param_1 + 0x30) == 0) goto LAB_02c52204;
    GameObject_SetActive_0x6000cfe(*(long *)(param_1 + 0x30),(uVar3 ^ 0xffffffff) & 1,0);
  }
  if (*(int *)(*(long *)puVar2 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  iVar4 = Raid_manager__Helper_GunNum_return();
  uVar7 = *(undefined8 *)(param_1 + 0x20);
  if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
    func_0x029f5bd0(*(long *)puVar1);
  }
  uVar6 = Object_op_Inequality_0x6000ded(uVar7,0,0);
  if (((uVar6 & 1) == 0) || (iVar4 == -1)) {
    return;
  }
  if (*(long *)(param_1 + 0x20) != 0) {
    Gun_Item_Demo_Reload_0x6000b5a(*(long *)(param_1 + 0x20),iVar4,0);
    return;
  }
LAB_02c52204:
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

