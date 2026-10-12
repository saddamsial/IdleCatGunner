/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b4bd28, Ghidra VA 02c4bd28. */

void Mine_Start_UI_SpeedBuff_Reload(long param_1)

{
  bool bVar1;
  int iVar2;
  undefined *puVar3;
  byte bVar4;
  int iVar5;
  ulong uVar6;
  long lVar7;
  undefined8 uVar8;
  
  puVar3 = PTR_DAT_05e591c0;
  if ((bRam000000000625c124 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5d4c0);
    func_0x029f5a50(PTR_DAT_05e5dd48);
    func_0x029f5a50(PTR_DAT_05e591c0);
    bRam000000000625c124 = 1;
  }
  uVar8 = *(undefined8 *)(param_1 + 0x50);
  if (*(int *)(*(long *)puVar3 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  uVar6 = Object_op_Equality_0x6000dec(uVar8,0,0);
  puVar3 = PTR_DAT_05e5d4c0;
  if ((uVar6 & 1) != 0) {
    return;
  }
  lVar7 = *(long *)PTR_DAT_05e5d4c0;
  if (*(int *)(lVar7 + 0xe4) == 0) {
    func_0x029f5bd0();
    lVar7 = *(long *)puVar3;
  }
  if (**(long **)(lVar7 + 0xb8) != 0) {
    bVar4 = Buff_manager_IsBuffActive_0x600070a(**(long **)(lVar7 + 0xb8),2,0);
    if (**(long **)(*(long *)PTR_DAT_05e5dd48 + 0xb8) != 0) {
      iVar2 = *(int *)(**(long **)(*(long *)PTR_DAT_05e5dd48 + 0xb8) + 0x50);
      iVar5 = Mine_manager_Ticket_MaxCount_return();
      bVar1 = iVar2 < iVar5;
      if (*(long *)(param_1 + 0x50) != 0) {
        GameObject_SetActive_0x6000cfe(*(long *)(param_1 + 0x50),bVar1 & (bVar4 ^ 1),0);
        if (*(long *)(param_1 + 0x58) != 0) {
          GameObject_SetActive_0x6000cfe(*(long *)(param_1 + 0x58),bVar1 & (bVar4 ^ 1),0);
          return;
        }
      }
    }
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

