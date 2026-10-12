/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b8bcd4, Ghidra VA 02c8bcd4. */

void DailyGun_Item_Reload(long param_1)

{
  undefined4 uVar1;
  undefined *puVar2;
  undefined *puVar3;
  int iVar4;
  long lVar5;
  ulong uVar6;
  undefined8 uVar7;
  long lVar8;
  undefined8 uVar9;
  long *plVar10;
  undefined4 uStack_48;
  int iStack_44;
  
  puVar2 = PTR_DAT_05e62660;
  if ((bRam000000000625c3b2 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e62660);
    func_0x029f5a50(PTR_DAT_05e591c0);
    func_0x029f5a50(PTR_DAT_05e61f20);
    bRam000000000625c3b2 = 1;
  }
  puVar3 = PTR_DAT_05e591c0;
  lVar5 = *(long *)puVar2;
  if (*(int *)(lVar5 + 0xe4) == 0) {
    func_0x029f5bd0();
    lVar5 = *(long *)puVar2;
  }
  uVar9 = **(undefined8 **)(lVar5 + 0xb8);
  if (*(int *)(*(long *)puVar3 + 0xe4) == 0) {
    func_0x029f5bd0(*(long *)puVar3);
  }
  uVar6 = Object_op_Equality_0x6000dec(uVar9,0,0);
  if ((uVar6 & 1) != 0) {
    return;
  }
  lVar5 = *(long *)puVar2;
  if (*(int *)(lVar5 + 0xe4) == 0) {
    func_0x029f5bd0();
    lVar5 = *(long *)puVar2;
  }
  lVar8 = (*(long **)(lVar5 + 0xb8))[1];
  if (lVar8 != 0) {
    if (*(uint *)(lVar8 + 0x18) <= *(uint *)(param_1 + 0x20)) {
                    /* WARNING: Subroutine does not return */
      Throw_Index_Wrapper();
    }
    if (**(long **)(lVar5 + 0xb8) != 0) {
      uVar1 = *(undefined4 *)(lVar8 + (long)(int)*(uint *)(param_1 + 0x20) * 4 + 0x20);
      iVar4 = DailyGun_Remain_Count_return();
      uVar9 = *(undefined8 *)(param_1 + 0x38);
      if (*(int *)(*(long *)puVar3 + 0xe4) == 0) {
        func_0x029f5bd0(*(long *)puVar3);
      }
      uVar6 = Object_op_Inequality_0x6000ded(uVar9,0,0);
      puVar2 = PTR_DAT_05e58a10;
      if ((uVar6 & 1) != 0) {
        plVar10 = *(long **)(param_1 + 0x38);
        iStack_44 = iVar4;
        uVar9 = func_0x029f5bd8(*(undefined8 *)(PTR_DAT_05e58a10 + 0x48),&iStack_44);
        uStack_48 = uVar1;
        uVar7 = func_0x029f5bd8(*(undefined8 *)(puVar2 + 0x48),&uStack_48);
        uVar9 = String_Format_0x600029d(*(undefined8 *)PTR_DAT_05e61f20,uVar9,uVar7,0);
        if (plVar10 == (long *)0x0) goto LAB_02c8bf30;
        (**(code **)(*plVar10 + 0x558))(plVar10,uVar9,*(undefined8 *)(*plVar10 + 0x560));
      }
      uVar9 = *(undefined8 *)(param_1 + 0x40);
      if (*(int *)(*(long *)puVar3 + 0xe4) == 0) {
        func_0x029f5bd0();
      }
      uVar6 = Object_op_Inequality_0x6000ded(uVar9,0,0);
      if ((uVar6 & 1) != 0) {
        if (*(long *)(param_1 + 0x40) == 0) goto LAB_02c8bf30;
        GameObject_SetActive_0x6000cfe(*(long *)(param_1 + 0x40),iVar4 < 1,0);
      }
      uVar9 = *(undefined8 *)(param_1 + 0x48);
      if (*(int *)(*(long *)puVar3 + 0xe4) == 0) {
        func_0x029f5bd0();
      }
      uVar6 = Object_op_Inequality_0x6000ded(uVar9,0,0);
      if ((uVar6 & 1) != 0) {
        if (*(long *)(param_1 + 0x48) == 0) goto LAB_02c8bf30;
        GameObject_SetActive_0x6000cfe(*(long *)(param_1 + 0x48),iVar4 < 1,0);
      }
      uVar9 = *(undefined8 *)(param_1 + 0x50);
      if (*(int *)(*(long *)puVar3 + 0xe4) == 0) {
        func_0x029f5bd0();
      }
      uVar6 = Object_op_Inequality_0x6000ded(uVar9,0,0);
      if ((uVar6 & 1) != 0) {
        if (*(long *)(param_1 + 0x50) == 0) goto LAB_02c8bf30;
        GameObject_SetActive_0x6000cfe(*(long *)(param_1 + 0x50),0 < iVar4,0);
      }
      return;
    }
  }
LAB_02c8bf30:
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

