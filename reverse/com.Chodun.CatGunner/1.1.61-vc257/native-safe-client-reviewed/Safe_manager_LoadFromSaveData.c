/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b6c694, Ghidra VA 02c6c694. */

void Safe_manager_LoadFromSaveData(long param_1,long param_2)

{
  long lVar1;
  uint uVar2;
  undefined *puVar3;
  ulong uVar4;
  int iVar5;
  long lVar6;
  ulong uVar7;
  uint uVar8;
  long lVar9;
  undefined8 uVar10;
  
  if ((bRam000000000625c299 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5dd40);
    func_0x029f5a50(PTR_DAT_05e591c0);
    bRam000000000625c299 = 1;
  }
  Safe_manager_InitArray(param_1);
  *(undefined4 *)(param_1 + 0x28) = 0;
  if (param_2 == 0) goto LAB_02c6c7d8;
  uVar8 = *(uint *)(param_2 + 0x198);
  if (9 < (int)uVar8) {
    uVar8 = 10;
  }
  lVar6 = *(long *)(param_2 + 400);
  *(uint *)(param_1 + 0x28) = uVar8 & ((int)uVar8 >> 0x1f ^ 0xffffffffU);
  puVar3 = PTR_DAT_05e5dd40;
  if (lVar6 == 0) goto LAB_02c6c7d8;
  uVar10 = **(undefined8 **)(*(long *)PTR_DAT_05e5dd40 + 0xb8);
  if (*(int *)(*(long *)PTR_DAT_05e591c0 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  uVar4 = Object_op_Inequality_0x6000ded(uVar10,0,0);
  if ((uVar4 & 1) == 0) {
LAB_02c6c764:
    iVar5 = 0x7fffffff;
  }
  else {
    if (**(long **)(*(long *)puVar3 + 0xb8) == 0) goto LAB_02c6c7f0;
    lVar6 = *(long *)(**(long **)(*(long *)puVar3 + 0xb8) + 0x48);
    if (lVar6 == 0) goto LAB_02c6c764;
    iVar5 = *(int *)(lVar6 + 0x18);
  }
  lVar6 = *(long *)(param_2 + 400);
  if (lVar6 == 0) {
LAB_02c6c7f0:
                    /* WARNING: Subroutine does not return */
    Throw_NullReference_Wrapper();
  }
  uVar4 = *(ulong *)(lVar6 + 0x18);
  uVar8 = (uint)uVar4;
  if (0 < (int)uVar8) {
    uVar7 = 0;
    if (0xf < (int)uVar8) {
      uVar8 = 0x10;
    }
    do {
      if ((uVar4 & 0xffffffff) == uVar7) {
LAB_02c6c7ec:
                    /* WARNING: Subroutine does not return */
        Throw_Index_Wrapper();
      }
      uVar2 = *(uint *)(lVar6 + 0x20 + uVar7 * 4);
      lVar9 = *(long *)(param_1 + 0x20);
      if (iVar5 <= (int)uVar2 || 0x7fffffff < uVar2) {
        uVar2 = 0xffffffff;
      }
      if (lVar9 == 0) goto LAB_02c6c7f0;
      if (*(uint *)(lVar9 + 0x18) <= uVar7) goto LAB_02c6c7ec;
      lVar1 = uVar7 * 4;
      uVar7 = uVar7 + 1;
      *(uint *)(lVar9 + lVar1 + 0x20) = uVar2;
    } while (uVar8 != uVar7);
  }
LAB_02c6c7d8:
  Safe_manager_UI_Reload(param_1);
  return;
}

