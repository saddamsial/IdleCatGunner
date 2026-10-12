/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b1dd54, Ghidra VA 02c1dd54. */

void UI_manager_Alert(undefined8 param_1)

{
  int iVar1;
  int iVar2;
  uint uVar3;
  int iVar4;
  undefined *puVar5;
  undefined *puVar6;
  ulong uVar7;
  long lVar8;
  long *plVar9;
  undefined8 uVar10;
  
  puVar6 = PTR_DAT_05e5d368;
  puVar5 = PTR_DAT_05e591c0;
  if ((bRam000000000625bfde & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e591c0);
    func_0x029f5a50(PTR_DAT_05e5d368);
    bRam000000000625bfde = 1;
  }
  uVar10 = **(undefined8 **)(*(long *)puVar6 + 0xb8);
  if (*(int *)(*(long *)puVar5 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  uVar7 = Object_op_Equality_0x6000dec(uVar10,0,0);
  if ((uVar7 & 1) != 0) {
    return;
  }
  lVar8 = **(long **)(*(long *)puVar6 + 0xb8);
  if ((lVar8 != 0) && (lVar8 = *(long *)(lVar8 + 0x50), lVar8 != 0)) {
    uVar3 = *(uint *)(*(long **)(*(long *)puVar6 + 0xb8) + 1);
    if (*(uint *)(lVar8 + 0x18) <= uVar3) {
LAB_02c1dee8:
                    /* WARNING: Subroutine does not return */
      Throw_Index_Wrapper();
    }
    lVar8 = *(long *)(lVar8 + (long)(int)uVar3 * 8 + 0x20);
    if ((lVar8 != 0) && (lVar8 = Component_get_gameObject_0x6000c83(lVar8,0), lVar8 != 0)) {
      uVar7 = GameObject_get_activeInHierarchy_0x6000d00(lVar8,0);
      if ((uVar7 & 1) != 0) {
        lVar8 = **(long **)(*(long *)puVar6 + 0xb8);
        if ((lVar8 == 0) || (lVar8 = *(long *)(lVar8 + 0x50), lVar8 == 0)) goto LAB_02c1dee4;
        uVar3 = *(uint *)(*(long **)(*(long *)puVar6 + 0xb8) + 1);
        if (*(uint *)(lVar8 + 0x18) <= uVar3) goto LAB_02c1dee8;
        lVar8 = *(long *)(lVar8 + (long)(int)uVar3 * 8 + 0x20);
        if ((lVar8 == 0) || (lVar8 = Component_get_gameObject_0x6000c83(lVar8,0), lVar8 == 0))
        goto LAB_02c1dee4;
        GameObject_SetActive_0x6000cfe(lVar8,0,0);
      }
      lVar8 = **(long **)(*(long *)puVar6 + 0xb8);
      if ((lVar8 != 0) && (lVar8 = *(long *)(lVar8 + 0x50), lVar8 != 0)) {
        uVar3 = *(uint *)(*(long **)(*(long *)puVar6 + 0xb8) + 1);
        if (*(uint *)(lVar8 + 0x18) <= uVar3) goto LAB_02c1dee8;
        lVar8 = *(long *)(lVar8 + (long)(int)uVar3 * 8 + 0x20);
        if (lVar8 != 0) {
          Alert_Reload(lVar8,param_1);
          plVar9 = *(long **)(*(long *)puVar6 + 0xb8);
          if ((*plVar9 != 0) && (lVar8 = *(long *)(*plVar9 + 0x50), lVar8 != 0)) {
            iVar2 = *(int *)(lVar8 + 0x18);
            iVar1 = (int)plVar9[1] + 1;
            iVar4 = 0;
            if (iVar2 != 0) {
              iVar4 = iVar1 / iVar2;
            }
            *(int *)(plVar9 + 1) = iVar1 - iVar4 * iVar2;
            return;
          }
        }
      }
    }
  }
LAB_02c1dee4:
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

