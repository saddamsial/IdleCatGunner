/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b5bb40, Ghidra VA 02c5bb40. */

void Raid_Start_UI_Reload_Entry(long param_1)

{
  undefined *puVar1;
  undefined *puVar2;
  int iVar3;
  long lVar4;
  ulong uVar5;
  undefined8 uVar6;
  long *plVar7;
  undefined8 uVar8;
  undefined4 uStack_28;
  undefined4 uStack_24;
  
  puVar1 = PTR_DAT_05e5e070;
  if ((bRam000000000625c1e1 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e591c0);
    func_0x029f5a50(PTR_DAT_05e5e070);
    func_0x029f5a50(PTR_DAT_05e61f28);
    bRam000000000625c1e1 = 1;
  }
  lVar4 = *(long *)puVar1;
  if (*(int *)(lVar4 + 0xe4) == 0) {
    func_0x029f5bd0();
    lVar4 = *(long *)puVar1;
  }
  lVar4 = **(long **)(lVar4 + 0xb8);
  if (lVar4 != 0) {
    iVar3 = Raid_manager_Enter_Type_Now(lVar4,0);
    if (*(long *)(param_1 + 0x38) != 0) {
      GameObject_SetActive_0x6000cfe(*(long *)(param_1 + 0x38),iVar3 == 1,0);
      if (*(long *)(param_1 + 0x40) != 0) {
        GameObject_SetActive_0x6000cfe(*(long *)(param_1 + 0x40),iVar3 == 2,0);
        puVar1 = PTR_DAT_05e591c0;
        if (*(long *)(param_1 + 0x48) != 0) {
          GameObject_SetActive_0x6000cfe(*(long *)(param_1 + 0x48),iVar3 == 3,0);
          uVar8 = *(undefined8 *)(param_1 + 0x68);
          if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
            func_0x029f5bd0();
          }
          uVar5 = Object_op_Inequality_0x6000ded(uVar8,0,0);
          if ((uVar5 & 1) != 0) {
            if (*(long *)(param_1 + 0x68) == 0) goto LAB_02c5bce4;
            GameObject_SetActive_0x6000cfe(*(long *)(param_1 + 0x68),iVar3 == 0,0);
          }
          puVar2 = PTR_DAT_05e61f28;
          plVar7 = *(long **)(param_1 + 0x50);
          uStack_24 = Raid_manager_get_Free_Remain(lVar4,0);
          puVar1 = PTR_DAT_05e58a10;
          uVar8 = func_0x029f5bd8(*(undefined8 *)(PTR_DAT_05e58a10 + 0x48),&uStack_24);
          uStack_28 = 2;
          uVar6 = func_0x029f5bd8(*(undefined8 *)(puVar1 + 0x48),&uStack_28);
          uVar8 = String_Format_0x600029d(*(undefined8 *)puVar2,uVar8,uVar6,0);
          if (plVar7 != (long *)0x0) {
            (**(code **)(*plVar7 + 0x558))(plVar7,uVar8,*(undefined8 *)(*plVar7 + 0x560));
            return;
          }
        }
      }
    }
  }
LAB_02c5bce4:
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

