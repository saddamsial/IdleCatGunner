/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2ba7618, Ghidra VA 02ca7618. */

void Skin_manager_Skin_Value_Reload(long param_1)

{
  undefined *puVar1;
  undefined *puVar2;
  undefined *puVar3;
  int iVar4;
  long *plVar5;
  long lVar6;
  undefined8 uVar7;
  undefined8 *puVar8;
  undefined4 uStack_3c;
  undefined4 uStack_38;
  undefined4 uStack_34;
  
  if ((bRam000000000625c4e5 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5d5b0);
    func_0x029f5a50(PTR_DAT_05e5d4e0);
    func_0x029f5a50(PTR_DAT_05e649c8);
    func_0x029f5a50(PTR_DAT_05e63810);
    bRam000000000625c4e5 = 1;
  }
  puVar2 = PTR_DAT_05e5d5b0;
  puVar1 = PTR_DAT_05e5d4e0;
  if (*(char *)(param_1 + 0x48) == '\0') {
    iVar4 = Skin_manager_Damage_Accum_return(param_1);
    **(int **)(*(long *)puVar1 + 0xb8) = iVar4 + 100;
    iVar4 = Skin_manager_Speed_Accum_return(param_1);
    *(int *)(*(long *)(*(long *)puVar1 + 0xb8) + 4) = iVar4 + 100;
    iVar4 = Skin_manager_Money_Accum_return_0x6000e93(param_1);
    plVar5 = *(long **)(param_1 + 0x78);
    *(int *)(*(long *)(*(long *)puVar1 + 0xb8) + 8) = iVar4 + 100;
    uStack_34 = Skin_manager_Damage_Accum_return(param_1);
    puVar1 = PTR_DAT_05e58a10;
    uVar7 = func_0x029f5bd8(*(undefined8 *)(PTR_DAT_05e58a10 + 0x48),&uStack_34);
    puVar3 = PTR_DAT_05e63810;
    uVar7 = String_Format_0x600029c(*(undefined8 *)PTR_DAT_05e63810,uVar7,0);
    if (plVar5 != (long *)0x0) {
      (**(code **)(*plVar5 + 0x558))(plVar5,uVar7,*(undefined8 *)(*plVar5 + 0x560));
      plVar5 = *(long **)(param_1 + 0x80);
      uStack_38 = Skin_manager_Speed_Accum_return(param_1);
      uVar7 = func_0x029f5bd8(*(undefined8 *)(puVar1 + 0x48),&uStack_38);
      uVar7 = String_Format_0x600029c(*(undefined8 *)puVar3,uVar7,0);
      if (plVar5 != (long *)0x0) {
        (**(code **)(*plVar5 + 0x558))(plVar5,uVar7,*(undefined8 *)(*plVar5 + 0x560));
        plVar5 = *(long **)(param_1 + 0x88);
        uStack_3c = Skin_manager_Money_Accum_return_0x6000e93(param_1);
        uVar7 = func_0x029f5bd8(*(undefined8 *)(puVar1 + 0x48),&uStack_3c);
        uVar7 = String_Format_0x600029c(*(undefined8 *)puVar3,uVar7,0);
        if (plVar5 != (long *)0x0) {
          (**(code **)(*plVar5 + 0x558))(plVar5,uVar7,*(undefined8 *)(*plVar5 + 0x560));
          lVar6 = *(long *)(*(long *)(*(long *)puVar2 + 0xb8) + 8);
          if (lVar6 != 0) {
            Cat_manager_Balance_Reload(lVar6,0);
            return;
          }
        }
      }
    }
  }
  else {
    plVar5 = *(long **)(param_1 + 0x78);
    puVar8 = *(undefined8 **)(*(long *)PTR_DAT_05e5d4e0 + 0xb8);
    *puVar8 = 0x6400000064;
    *(undefined4 *)(puVar8 + 1) = 100;
    puVar1 = PTR_DAT_05e649c8;
    if (plVar5 != (long *)0x0) {
      (**(code **)(*plVar5 + 0x558))
                (plVar5,*(undefined8 *)PTR_DAT_05e649c8,*(undefined8 *)(*plVar5 + 0x560));
      plVar5 = *(long **)(param_1 + 0x80);
      if (plVar5 != (long *)0x0) {
        (**(code **)(*plVar5 + 0x558))
                  (plVar5,*(undefined8 *)puVar1,*(undefined8 *)(*plVar5 + 0x560));
        plVar5 = *(long **)(param_1 + 0x88);
        if (plVar5 != (long *)0x0) {
          (**(code **)(*plVar5 + 0x558))
                    (plVar5,*(undefined8 *)puVar1,*(undefined8 *)(*plVar5 + 0x560));
          lVar6 = *(long *)(*(long *)(*(long *)puVar2 + 0xb8) + 8);
          if (lVar6 != 0) {
            Cat_manager_Balance_Reload(lVar6,0);
            return;
          }
        }
      }
    }
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

