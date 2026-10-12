/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b5738c, Ghidra VA 02c5738c. */

void Raid_manager_Gun_Auto_Select(long param_1)

{
  undefined *puVar1;
  undefined *puVar2;
  undefined4 uVar3;
  long lVar4;
  undefined8 uVar5;
  long lVar6;
  ulong uVar7;
  long lVar8;
  long lVar9;
  
  puVar1 = PTR_DAT_05e5e070;
  if ((bRam000000000625c1ad & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e62fe8);
    func_0x029f5a50(PTR_DAT_05e63128);
    func_0x029f5a50(PTR_DAT_05e5e070);
    bRam000000000625c1ad = 1;
  }
  if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  lVar4 = Raid_manager_Sorted_Index_List();
  puVar2 = PTR_DAT_05e63128;
  lVar6 = *(long *)(param_1 + 0x88);
  if (lVar6 != 0) {
    lVar8 = 8;
    do {
      uVar7 = lVar8 - 8;
      if ((long)(int)*(uint *)(lVar6 + 0x18) <= (long)uVar7) {
        return;
      }
      if (lVar4 == 0) break;
      if ((long)uVar7 < (long)*(int *)(lVar4 + 0x18)) {
        lVar6 = *(long *)(param_1 + 0x90);
        uVar3 = func_0x044f7718(lVar4,uVar7 & 0xffffffff,*(undefined8 *)puVar2);
        if (lVar6 == 0) break;
        if (*(uint *)(lVar6 + 0x18) <= uVar7) {
LAB_02c574f4:
                    /* WARNING: Subroutine does not return */
          Throw_Index_Wrapper();
        }
        uVar5 = *(undefined8 *)puVar2;
        lVar9 = *(long *)(param_1 + 0x88);
        *(undefined4 *)(lVar6 + lVar8 * 4) = uVar3;
        uVar3 = func_0x044f7718(lVar4,uVar7 & 0xffffffff,uVar5);
        lVar6 = *(long *)puVar1;
        if (*(int *)(lVar6 + 0xe4) == 0) {
          func_0x029f5bd0(lVar6);
        }
        uVar3 = Raid_manager_GunNum_By_Index(uVar3);
        if (lVar9 == 0) break;
        if (*(uint *)(lVar9 + 0x18) <= uVar7) goto LAB_02c574f4;
        lVar6 = *(long *)(param_1 + 0x88);
        *(undefined4 *)(lVar9 + lVar8 * 4) = uVar3;
      }
      else {
        if (*(uint *)(lVar6 + 0x18) <= uVar7) goto LAB_02c574f4;
        lVar9 = *(long *)(param_1 + 0x90);
        *(undefined4 *)(lVar6 + lVar8 * 4) = 0xffffffff;
        if (lVar9 == 0) break;
        if (*(uint *)(lVar9 + 0x18) <= uVar7) goto LAB_02c574f4;
        *(undefined4 *)(lVar9 + lVar8 * 4) = 0xffffffff;
      }
      lVar8 = lVar8 + 1;
    } while (lVar6 != 0);
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

