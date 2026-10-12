/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b53c8c, Ghidra VA 02c53c8c. */

void Raid_Mission_manager_Refresh_Clear(long param_1)

{
  bool bVar1;
  undefined *puVar2;
  undefined *puVar3;
  bool bVar4;
  int iVar5;
  long lVar6;
  ulong uVar7;
  undefined8 uVar8;
  
  puVar3 = PTR_DAT_05e5e070;
  if ((bRam000000000625c17b & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e591c0);
    func_0x029f5a50(PTR_DAT_05e5e068);
    func_0x029f5a50(PTR_DAT_05e5e070);
    bRam000000000625c17b = 1;
  }
  puVar2 = PTR_DAT_05e591c0;
  Raid_Mission_manager_Season_Check(param_1);
  lVar6 = *(long *)puVar3;
  if (*(int *)(lVar6 + 0xe4) == 0) {
    func_0x029f5bd0();
    lVar6 = *(long *)puVar3;
  }
  uVar8 = **(undefined8 **)(lVar6 + 0xb8);
  if (*(int *)(*(long *)puVar2 + 0xe4) == 0) {
    func_0x029f5bd0(*(long *)puVar2);
  }
  uVar7 = Object_op_Equality_0x6000dec(uVar8,0,0);
  if ((uVar7 & 1) == 0) {
    lVar6 = *(long *)puVar3;
    if (*(int *)(lVar6 + 0xe4) == 0) {
      func_0x029f5bd0();
      lVar6 = *(long *)puVar3;
    }
    if (**(long **)(lVar6 + 0xb8) == 0) {
LAB_02c53e4c:
                    /* WARNING: Subroutine does not return */
      Throw_NullReference_Wrapper();
    }
    Raid_manager_Season_Check_0x600090a();
    uVar7 = 0;
    bVar1 = false;
    do {
      while( true ) {
        lVar6 = *(long *)(param_1 + 0x30);
        if (lVar6 == 0) goto LAB_02c53e4c;
        if (*(uint *)(lVar6 + 0x18) <= uVar7) goto LAB_02c53e50;
        if (*(char *)(lVar6 + uVar7 + 0x20) == '\0') break;
LAB_02c53dcc:
        uVar7 = uVar7 + 1;
        if (uVar7 == 8) {
          if (!bVar1) {
            return;
          }
          goto LAB_02c53e10;
        }
      }
      lVar6 = *(long *)(param_1 + 0x20);
      if (lVar6 == 0) goto LAB_02c53e4c;
      if (*(uint *)(lVar6 + 0x18) <= uVar7) {
LAB_02c53e50:
                    /* WARNING: Subroutine does not return */
        Throw_Index_Wrapper();
      }
      lVar6 = *(long *)(lVar6 + uVar7 * 8 + 0x20);
      if (lVar6 == 0) goto LAB_02c53e4c;
      iVar5 = Raid_Mission_manager_Current_Value(*(undefined4 *)(lVar6 + 0x10));
      lVar6 = *(long *)(param_1 + 0x20);
      if (lVar6 == 0) goto LAB_02c53e4c;
      if (*(uint *)(lVar6 + 0x18) <= uVar7) goto LAB_02c53e50;
      lVar6 = *(long *)(lVar6 + uVar7 * 8 + 0x20);
      if (lVar6 == 0) goto LAB_02c53e4c;
      if (iVar5 < *(int *)(lVar6 + 0x14)) goto LAB_02c53dcc;
      lVar6 = *(long *)(param_1 + 0x30);
      if (lVar6 == 0) goto LAB_02c53e4c;
      if (*(uint *)(lVar6 + 0x18) <= uVar7) goto LAB_02c53e50;
      lVar6 = lVar6 + uVar7;
      bVar1 = true;
      bVar4 = uVar7 != 7;
      uVar7 = uVar7 + 1;
      *(undefined1 *)(lVar6 + 0x20) = 1;
    } while (bVar4);
LAB_02c53e10:
    lVar6 = *(long *)(*(long *)(*(long *)PTR_DAT_05e5e068 + 0xb8) + 8);
    if (lVar6 != 0) {
                    /* WARNING: Could not recover jumptable at 0x02c53e3c. Too many branches */
                    /* WARNING: Treating indirect jump as call */
      (**(code **)(lVar6 + 0x18))(*(undefined8 *)(lVar6 + 0x40),*(undefined8 *)(lVar6 + 0x28));
      return;
    }
  }
  return;
}

