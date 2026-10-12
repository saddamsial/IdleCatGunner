/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b75ec8, Ghidra VA 02c75ec8. */

void Gun_Item_List_AlignGrid(long param_1)

{
  uint uVar1;
  undefined *puVar2;
  undefined *puVar3;
  long lVar4;
  long lVar5;
  long lVar6;
  int iVar7;
  
  if ((bRam000000000625c2ed & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5be98);
    func_0x029f5a50(PTR_DAT_05e63c50);
    func_0x029f5a50(PTR_DAT_05e63c58);
    bRam000000000625c2ed = 1;
  }
  puVar3 = PTR_DAT_05e63c58;
  puVar2 = PTR_DAT_05e5be98;
  lVar4 = *(long *)(param_1 + 0x40);
  if (lVar4 != 0) {
    iVar7 = 0;
    do {
      if (*(int *)(lVar4 + 0x18) <= iVar7) {
        return;
      }
      lVar4 = func_0x0452c8d8(lVar4,iVar7,*(undefined8 *)puVar3);
      if (lVar4 == 0) break;
      uVar1 = *(uint *)(lVar4 + 0x90);
      if (-1 < (int)uVar1) {
        if (*(long *)(param_1 + 0x28) == 0) break;
        if ((int)uVar1 < *(int *)(*(long *)(param_1 + 0x28) + 0x18)) {
          lVar5 = func_0x02fe5f2c(lVar4,*(undefined8 *)puVar2);
          lVar6 = *(long *)(param_1 + 0x28);
          if (lVar6 == 0) break;
          if (*(uint *)(lVar6 + 0x18) <= uVar1) {
                    /* WARNING: Subroutine does not return */
            Throw_Index_Wrapper();
          }
          lVar6 = *(long *)(lVar6 + (ulong)uVar1 * 8 + 0x20);
          if (((lVar6 == 0) || (lVar6 = func_0x02fe5f2c(lVar6,*(undefined8 *)puVar2), lVar6 == 0))
             || (RectTransform_get_anchoredPosition_0x6000f2b(lVar6,0), lVar5 == 0)) break;
          RectTransform_set_anchoredPosition_0x6000f2c(lVar5,0);
          lVar4 = Component_get_transform_0x6000c82(lVar4,0);
          if (lVar4 == 0) break;
          Transform_SetSiblingIndex_0x6000f7f(lVar4,iVar7,0);
        }
      }
      lVar4 = *(long *)(param_1 + 0x40);
      iVar7 = iVar7 + 1;
    } while (lVar4 != 0);
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

