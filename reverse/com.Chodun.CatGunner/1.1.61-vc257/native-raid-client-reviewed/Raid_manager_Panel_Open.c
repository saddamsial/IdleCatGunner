/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b57280, Ghidra VA 02c57280. */

void Raid_manager_Panel_Open(long param_1)

{
  undefined *puVar1;
  undefined *puVar2;
  long lVar3;
  ulong uVar4;
  undefined8 uVar5;
  
  if ((bRam000000000625c1a0 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e591c0);
    func_0x029f5a50(PTR_DAT_05e5e3e0);
    bRam000000000625c1a0 = 1;
  }
  if ((*(long *)(param_1 + 0x30) != 0) &&
     (lVar3 = Component_get_gameObject_0x6000c83(*(long *)(param_1 + 0x30),0), lVar3 != 0)) {
    GameObject_SetActive_0x6000cfe(lVar3,1,0);
    Raid_manager_Gun_Auto_Select(param_1);
    puVar2 = PTR_DAT_05e5e3e0;
    puVar1 = PTR_DAT_05e591c0;
    if (*(long *)(param_1 + 0x30) != 0) {
      Raid_Start_UI_Reload(*(long *)(param_1 + 0x30),0);
      Raid_manager_Helper_UI_Reload_0x6000933(param_1);
      lVar3 = *(long *)puVar2;
      if (*(int *)(lVar3 + 0xe4) == 0) {
        func_0x029f5bd0();
        lVar3 = *(long *)puVar2;
      }
      uVar5 = **(undefined8 **)(lVar3 + 0xb8);
      if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
        func_0x029f5bd0(*(long *)puVar1);
      }
      uVar4 = Object_op_Inequality_0x6000ded(uVar5,0,0);
      if ((uVar4 & 1) == 0) {
        return;
      }
      lVar3 = *(long *)puVar2;
      if (*(int *)(lVar3 + 0xe4) == 0) {
        func_0x029f5bd0();
        lVar3 = *(long *)puVar2;
      }
      if (**(long **)(lVar3 + 0xb8) != 0) {
        StarGem_Pig_Season_Check_0x6000df4(**(long **)(lVar3 + 0xb8),0);
        return;
      }
    }
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

