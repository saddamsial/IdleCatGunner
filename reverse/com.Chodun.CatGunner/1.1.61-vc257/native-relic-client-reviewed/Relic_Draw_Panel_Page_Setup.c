/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b30760, Ghidra VA 02c30760. */

void Relic_Draw_Panel_Page_Setup(long param_1,int param_2,byte param_3)

{
  uint uVar1;
  uint uVar2;
  int iVar3;
  int iVar4;
  long lVar5;
  long lVar6;
  long lVar7;
  uint uVar8;
  
  iVar3 = Relic_Draw_Panel_get_PageSize();
  iVar4 = Relic_Draw_Panel_get_PageSize(param_1);
  if (0 < iVar4) {
    lVar7 = 4;
    do {
      lVar5 = *(long *)(param_1 + 0x68);
      if (lVar5 == 0) {
LAB_02c30848:
                    /* WARNING: Subroutine does not return */
        Throw_NullReference_Wrapper();
      }
      uVar2 = (int)lVar7 - 4;
      uVar1 = *(uint *)(lVar5 + 0x18);
      uVar8 = uVar2 + iVar3 * param_2;
      if ((int)uVar8 < (int)uVar1) {
        lVar6 = *(long *)(param_1 + 0x28);
        if (lVar6 == 0) goto LAB_02c30848;
        if ((*(uint *)(lVar6 + 0x18) <= uVar2) || (uVar1 <= uVar8)) goto LAB_02c3084c;
        lVar6 = *(long *)(lVar6 + lVar7 * 8);
        if (lVar6 == 0) goto LAB_02c30848;
        Relic_Item_Demo_Reload(lVar6,*(undefined8 *)(lVar5 + (long)(int)uVar8 * 8 + 0x20),0);
      }
      lVar5 = *(long *)(param_1 + 0x38);
      if (lVar5 == 0) goto LAB_02c30848;
      if (*(uint *)(lVar5 + 0x18) <= uVar2) {
LAB_02c3084c:
                    /* WARNING: Subroutine does not return */
        Throw_Index_Wrapper();
      }
      lVar5 = *(long *)(lVar5 + lVar7 * 8);
      if (lVar5 == 0) goto LAB_02c30848;
      GameObject_SetActive_0x6000cfe(lVar5,(int)uVar8 < (int)uVar1 & param_3,0);
      iVar4 = Relic_Draw_Panel_get_PageSize(param_1);
      lVar7 = lVar7 + 1;
    } while ((int)lVar7 + -4 < iVar4);
  }
  return;
}

