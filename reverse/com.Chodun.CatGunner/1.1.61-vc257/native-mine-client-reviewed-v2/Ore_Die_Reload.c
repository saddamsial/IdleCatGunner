/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b4c1b0, Ghidra VA 02c4c1b0. */

void Ore_Die_Reload(undefined1 param_1 [16],undefined4 param_2,undefined4 param_3,long param_4)

{
  undefined8 *puVar1;
  undefined *puVar2;
  undefined *puVar3;
  undefined *puVar4;
  long lVar5;
  undefined8 uVar6;
  undefined4 uVar7;
  
  puVar2 = PTR_DAT_05e5d338;
  if ((bRam000000000625c12b & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5d338);
    func_0x029f5a50(PTR_DAT_05e5dd48);
    func_0x029f5a50(PTR_DAT_05e62148);
    func_0x029f5a50(PTR_DAT_05e63470);
    func_0x029f5a50(PTR_DAT_05e63478);
    bRam000000000625c12b = 1;
  }
  lVar5 = *(long *)puVar2;
  if (*(int *)(lVar5 + 0xe4) == 0) {
    func_0x029f5bd0();
    lVar5 = *(long *)puVar2;
  }
  if (**(char **)(lVar5 + 0xb8) != '\0') {
    if (*(long *)(param_4 + 0x30) != 0) {
      lVar5 = *(long *)(*(long *)(*(long *)PTR_DAT_05e62148 + 0xb8) + 8);
      Transform_get_position_0x6000f4d(*(long *)(param_4 + 0x30),0);
      puVar1 = (undefined8 *)PTR_DAT_05e63478;
      puVar4 = PTR_DAT_05e63470;
      if (lVar5 != 0) {
        Particle_Polling_Spawn_0x60003fb(lVar5,5,0);
        puVar3 = PTR_DAT_05e5dd48;
        if (*(int *)(param_4 + 0x20) != 1) {
          puVar1 = (undefined8 *)puVar4;
        }
        if (*(long *)(param_4 + 0x30) != 0) {
          uVar6 = *puVar1;
          uVar7 = Transform_get_position_0x6000f4d(*(long *)(param_4 + 0x30),0);
          if (*(int *)(*(long *)puVar2 + 0xe4) == 0) {
            func_0x029f5bd0();
          }
          Gamemanager_Dia_Devide_Txt_Spawn_0x600008c(uVar7,param_2,param_3,uVar6,0);
          if (**(long **)(*(long *)puVar3 + 0xb8) != 0) {
            Mine_manager_Ore_Destroyed(**(long **)(*(long *)puVar3 + 0xb8),param_4);
            lVar5 = Component_get_gameObject_0x6000c83(param_4,0);
            if (lVar5 != 0) {
              GameObject_SetActive_0x6000cfe(lVar5,0,0);
              return;
            }
          }
        }
      }
    }
                    /* WARNING: Subroutine does not return */
    Throw_NullReference_Wrapper();
  }
  return;
}

