/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b57578, Ghidra VA 02c57578. */

void Raid_manager_Reward_Panel_Reload(long param_1)

{
  undefined *puVar1;
  undefined *puVar2;
  undefined4 uVar3;
  undefined8 uVar4;
  undefined4 *puVar5;
  long *plVar6;
  undefined4 uStack_38;
  undefined4 uStack_34;
  
  puVar2 = PTR_DAT_05e5e070;
  if ((bRam000000000625c1a1 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5d338);
    func_0x029f5a50(PTR_DAT_05e5e070);
    func_0x029f5a50(PTR_DAT_05e61f18);
    bRam000000000625c1a1 = 1;
  }
  uVar3 = *(undefined4 *)(param_1 + 0xb0);
  if (*(int *)(*(long *)puVar2 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  uVar3 = Raid_manager_StarGem_Reward_return(uVar3);
  puVar5 = (undefined4 *)(param_1 + 0x60);
  *puVar5 = uVar3;
  plVar6 = *(long **)(param_1 + 0x48);
  uVar4 = Int32_ToString_0x600080e(puVar5,0);
  puVar2 = PTR_DAT_05e61f18;
  if (plVar6 != (long *)0x0) {
    (**(code **)(*plVar6 + 0x558))(plVar6,uVar4,*(undefined8 *)(*plVar6 + 0x560));
    puVar1 = PTR_DAT_05e58a10;
    uStack_34 = *(undefined4 *)(param_1 + 0xb0);
    plVar6 = *(long **)(param_1 + 0x50);
    uVar4 = func_0x029f5bd8(*(undefined8 *)(PTR_DAT_05e58a10 + 0x48),&uStack_34);
    uVar4 = String_Format_0x600029c(*(undefined8 *)puVar2,uVar4,0);
    if (plVar6 != (long *)0x0) {
      (**(code **)(*plVar6 + 0x558))(plVar6,uVar4,*(undefined8 *)(*plVar6 + 0x560));
      uStack_38 = *(undefined4 *)(param_1 + 0x80);
      plVar6 = *(long **)(param_1 + 0x58);
      uVar4 = func_0x029f5bd8(*(undefined8 *)(puVar1 + 0x48),&uStack_38);
      uVar4 = String_Format_0x600029c(*(undefined8 *)puVar2,uVar4,0);
      puVar2 = PTR_DAT_05e5d338;
      if (plVar6 != (long *)0x0) {
        (**(code **)(*plVar6 + 0x558))(plVar6,uVar4,*(undefined8 *)(*plVar6 + 0x560));
        uVar3 = *puVar5;
        if (*(int *)(*(long *)puVar2 + 0xe4) == 0) {
          func_0x029f5bd0();
        }
        Gamemanager_Get_StarGem_0x6000080(uVar3,0);
        return;
      }
    }
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

