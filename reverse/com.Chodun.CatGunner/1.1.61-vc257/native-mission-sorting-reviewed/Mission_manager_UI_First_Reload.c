/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2aa55ac, Ghidra VA 02ba55ac. */

void Mission_manager_UI_First_Reload(long param_1)

{
  undefined *puVar1;
  undefined8 uVar2;
  undefined8 uVar3;
  undefined8 uVar4;
  long lVar5;
  long lVar6;
  uint uVar7;
  ulong uVar8;
  long lVar9;
  undefined4 uStack_44;
  
  lVar5 = *(long *)(param_1 + 0x90);
  *(undefined1 *)(param_1 + 0xd0) = 1;
  puVar1 = PTR_DAT_05e58a10;
  if (lVar5 != 0) {
    lVar9 = 4;
    lVar6 = param_1;
    do {
      uVar7 = (uint)(lVar9 - 4U);
      if (*(int *)(lVar5 + 0x18) <= (int)uVar7) {
        lVar5 = *(long *)(param_1 + 0x98);
        if (lVar5 != 0) {
          uVar8 = 0;
          goto LAB_02ba569c;
        }
        break;
      }
      lVar5 = *(long *)(param_1 + 0x20);
      if (lVar5 == 0) break;
      if (*(uint *)(lVar5 + 0x18) <= uVar7) goto LAB_02ba56f0;
      lVar5 = *(long *)(lVar5 + lVar9 * 8);
      if (lVar5 == 0) break;
      uVar2 = Mission_manager_Mission_Name_str_return_0x6000362(lVar6,*(undefined4 *)(lVar5 + 0x18))
      ;
      uVar3 = Mission_manager_Mission_Explain_str_return_0x6000363
                        (uVar2,*(undefined4 *)(lVar5 + 0x18));
      uStack_44 = *(undefined4 *)(lVar5 + 0x1c);
      uVar4 = func_0x029f5bd8(*(undefined8 *)(puVar1 + 0x48),&uStack_44);
      uVar3 = String_Format_0x600029c(uVar3,uVar4,0);
      lVar6 = *(long *)(param_1 + 0x90);
      if (lVar6 == 0) break;
      if (*(uint *)(lVar6 + 0x18) <= uVar7) goto LAB_02ba56f0;
      lVar6 = *(long *)(lVar6 + lVar9 * 8);
      if (lVar6 == 0) break;
      lVar6 = Mission_Item_UI_First_Reload_0x6000385
                        (lVar6,lVar9 - 4U & 0xffffffff,*(undefined4 *)(lVar5 + 0x20),uVar2,uVar3,
                         *(undefined1 *)(lVar5 + 0x26),0);
      lVar5 = *(long *)(param_1 + 0x90);
      lVar9 = lVar9 + 1;
    } while (lVar5 != 0);
  }
  goto LAB_02ba56d4;
  while( true ) {
    Mission_Reward_Slot_First_Reload_0x600038e(lVar5,uVar8 & 0xffffffff,0);
    lVar5 = *(long *)(param_1 + 0x98);
    uVar8 = uVar8 + 1;
    if (lVar5 == 0) break;
LAB_02ba569c:
    if ((int)*(uint *)(lVar5 + 0x18) <= (int)(uint)uVar8) {
      return;
    }
    if (*(uint *)(lVar5 + 0x18) <= (uint)uVar8) {
LAB_02ba56f0:
                    /* WARNING: Subroutine does not return */
      Throw_Index_Wrapper();
    }
    lVar5 = *(long *)(lVar5 + uVar8 * 8 + 0x20);
    if (lVar5 == 0) break;
  }
LAB_02ba56d4:
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

