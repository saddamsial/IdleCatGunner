/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b58a38, Ghidra VA 02c58a38. */

void Raid_manager_Game_Start(long param_1)

{
  int iVar1;
  int iVar2;
  undefined *puVar3;
  undefined *puVar4;
  undefined *puVar5;
  long lVar6;
  ulong uVar7;
  long lVar8;
  undefined8 *puVar9;
  undefined8 uVar10;
  
  puVar4 = PTR_DAT_05e5d338;
  if ((bRam000000000625c1b1 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5d338);
    func_0x029f5a50(PTR_DAT_05e591c0);
    func_0x029f5a50(PTR_DAT_05e5e068);
    func_0x029f5a50(PTR_DAT_05e5e3e0);
    bRam000000000625c1b1 = 1;
  }
  puVar5 = PTR_DAT_05e5e068;
  puVar3 = PTR_DAT_05e591c0;
  lVar6 = *(long *)puVar4;
  if (*(int *)(lVar6 + 0xe4) == 0) {
    func_0x029f5bd0();
    lVar6 = *(long *)puVar4;
  }
  lVar8 = *(long *)puVar3;
  iVar1 = *(int *)(param_1 + 0x7c);
  puVar9 = *(undefined8 **)(*(long *)puVar5 + 0xb8);
  iVar2 = *(int *)(lVar8 + 0xe4);
  **(undefined1 **)(lVar6 + 0xb8) = 1;
  uVar10 = *puVar9;
  *(int *)(param_1 + 0x7c) = iVar1 + 1;
  if (iVar2 == 0) {
    func_0x029f5bd0(lVar8);
  }
  uVar7 = Object_op_Inequality_0x6000ded(uVar10,0,0);
  if ((uVar7 & 1) != 0) {
    if (**(long **)(*(long *)puVar5 + 0xb8) == 0) goto LAB_02c58bcc;
    Raid_Mission_manager_Refresh_Clear_0x60008c6();
  }
  puVar4 = PTR_DAT_05e5e3e0;
  lVar6 = *(long *)PTR_DAT_05e5e3e0;
  if (*(int *)(lVar6 + 0xe4) == 0) {
    func_0x029f5bd0();
    lVar6 = *(long *)puVar4;
  }
  lVar8 = *(long *)puVar3;
  uVar10 = **(undefined8 **)(lVar6 + 0xb8);
  if (*(int *)(lVar8 + 0xe4) == 0) {
    func_0x029f5bd0(lVar8);
  }
  uVar7 = Object_op_Inequality_0x6000ded(uVar10,0,0);
  if ((uVar7 & 1) != 0) {
    lVar6 = *(long *)puVar4;
    if (*(int *)(lVar6 + 0xe4) == 0) {
      func_0x029f5bd0();
      lVar6 = *(long *)puVar4;
    }
    if (**(long **)(lVar6 + 0xb8) == 0) {
LAB_02c58bcc:
                    /* WARNING: Subroutine does not return */
      Throw_NullReference_Wrapper();
    }
    StarGem_Pig_OnRaidEnter_0x6000df5(**(long **)(lVar6 + 0xb8),0);
  }
  Raid_manager_Boss_Spawn_0x6000920(param_1);
  uVar10 = Raid_manager_Game_Cor_0x600091a(param_1);
  puVar9 = (undefined8 *)(param_1 + 0xb8);
  *puVar9 = uVar10;
  Managed_WriteBarrier(puVar9,uVar10);
  MonoBehaviour_StartCoroutine_0x6000d43(param_1,*puVar9,0);
  return;
}

