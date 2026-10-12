/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b59af4, Ghidra VA 02c59af4. */

undefined8 Raid_manager_Helper_Apply(long param_1)

{
  undefined *puVar1;
  undefined *puVar2;
  undefined *puVar3;
  undefined4 uVar4;
  ulong uVar5;
  long lVar6;
  undefined8 uVar7;
  
  puVar2 = PTR_DAT_05e5e070;
  if ((bRam000000000625c1cc & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5d5b0);
    func_0x029f5a50(PTR_DAT_05e5d338);
    func_0x029f5a50(PTR_DAT_05e591c0);
    func_0x029f5a50(PTR_DAT_05e5e070);
    func_0x029f5a50(PTR_DAT_05e5d368);
    func_0x029f5a50(PTR_DAT_05e63730);
    bRam000000000625c1cc = 1;
  }
  puVar1 = PTR_DAT_05e591c0;
  if (*(int *)(*(long *)puVar2 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  uVar4 = Raid_manager_get_Season_Index_Now_0x6000923();
  *(undefined4 *)(param_1 + 0x100) = uVar4;
  SaveSystem_Save_0x600048a(0);
  uVar7 = *(undefined8 *)(param_1 + 0x110);
  if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  uVar5 = Object_op_Inequality_0x6000ded(uVar7,0,0);
  if ((uVar5 & 1) != 0) {
    if (*(long *)(param_1 + 0x110) == 0) goto LAB_02c59d14;
    GameObject_SetActive_0x6000cfe(*(long *)(param_1 + 0x110),0,0);
  }
  puVar2 = PTR_DAT_05e5d338;
  Raid_manager_Helper_UI_Reload_0x6000933(param_1);
  lVar6 = *(long *)puVar2;
  if (*(int *)(lVar6 + 0xe4) == 0) {
    func_0x029f5bd0();
    lVar6 = *(long *)puVar2;
  }
  puVar2 = PTR_DAT_05e5d368;
  if (**(char **)(lVar6 + 0xb8) != '\0') {
    uVar7 = **(undefined8 **)(*(long *)PTR_DAT_05e5d368 + 0xb8);
    if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
      func_0x029f5bd0();
    }
    uVar5 = Object_op_Inequality_0x6000ded(uVar7,0,0);
    puVar3 = PTR_DAT_05e5d5b0;
    if ((uVar5 & 1) != 0) {
      if (**(long **)(*(long *)puVar2 + 0xb8) == 0) goto LAB_02c59d14;
      if (*(int *)(**(long **)(*(long *)puVar2 + 0xb8) + 0x20) == 5) {
        uVar7 = *(undefined8 *)(*(long *)(*(long *)PTR_DAT_05e5d5b0 + 0xb8) + 8);
        if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
          func_0x029f5bd0();
        }
        uVar5 = Object_op_Inequality_0x6000ded(uVar7,0,0);
        if ((uVar5 & 1) != 0) {
          if (*(long *)(*(long *)(*(long *)puVar3 + 0xb8) + 8) == 0) goto LAB_02c59d14;
          Cat_manager_Balance_Reload_0x6000779();
        }
      }
    }
  }
  uVar7 = *(undefined8 *)(param_1 + 0x30);
  if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  uVar5 = Object_op_Inequality_0x6000ded(uVar7,0,0);
  if ((uVar5 & 1) != 0) {
    if ((*(long *)(param_1 + 0x30) == 0) ||
       (lVar6 = Component_get_gameObject_0x6000c83(*(long *)(param_1 + 0x30),0), lVar6 == 0)) {
LAB_02c59d14:
                    /* WARNING: Subroutine does not return */
      Throw_NullReference_Wrapper();
    }
    uVar5 = GameObject_get_activeInHierarchy_0x6000d00(lVar6,0);
    if ((uVar5 & 1) != 0) {
      uVar7 = Gun_manager_Loc_0x6000a7a(*(undefined8 *)PTR_DAT_05e63730,0);
      UI_manager_Alert_0x6000602(uVar7,0);
    }
  }
  return 1;
}

