/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b0504c, Ghidra VA 02c0504c. */

void NewSeason_UI_Reload(long param_1)

{
  ulong uVar1;
  int iVar2;
  int iVar3;
  uint uVar4;
  int iVar5;
  int iVar6;
  uint uVar7;
  undefined *puVar8;
  undefined4 uVar9;
  long lVar10;
  int iVar11;
  char *pcVar12;
  ulong uVar13;
  long lVar14;
  long lVar15;
  ulong uVar16;
  ulong uVar17;
  long lVar18;
  
  puVar8 = PTR_DAT_05e5dd50;
  if ((bRam000000000625be69 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5dd50);
    bRam000000000625be69 = 1;
  }
  lVar15 = *(long *)(param_1 + 0x20);
  if (*(int *)(*(long *)puVar8 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  if (lVar15 != 0) {
    GameObject_SetActive_0x6000cfe(lVar15,**(char **)(*(long *)puVar8 + 0xb8) == '\0',0);
    pcVar12 = *(char **)(*(long *)puVar8 + 0xb8);
    if (*pcVar12 == '\0') {
      if (*(int *)(*(long *)puVar8 + 0xe4) == 0) {
        func_0x029f5bd0();
        pcVar12 = *(char **)(*(long *)puVar8 + 0xb8);
      }
      lVar15 = *(long *)(pcVar12 + 8);
      if (((lVar15 == 0) || (*(long *)(lVar15 + 0x30) == 0)) || (*(long *)(param_1 + 0x28) == 0))
      goto LAB_02c0524c;
      uVar13 = *(ulong *)(*(long *)(param_1 + 0x28) + 0x18);
      iVar11 = (int)uVar13;
      if (0 < iVar11) {
        iVar5 = *(int *)(*(long *)(lVar15 + 0x30) + 0x18);
        iVar6 = *(int *)(lVar15 + 0x48);
        uVar16 = 0;
        iVar2 = iVar6;
        if (iVar5 <= iVar6) {
          iVar2 = iVar5;
        }
        iVar3 = 0;
        if (-1 < iVar6) {
          iVar3 = iVar2;
        }
        uVar7 = iVar3 - iVar11;
        uVar4 = iVar5 - iVar11;
        if ((int)((uVar7 & ((int)uVar7 >> 0x1f ^ 0xffffffffU)) + iVar11) <= iVar5) {
          uVar4 = uVar7;
        }
        uVar17 = (ulong)(uVar4 & ((int)uVar4 >> 0x1f ^ 0xffffffffU));
        lVar18 = uVar17 << 0x20;
        do {
          lVar14 = *(long *)(param_1 + 0x28);
          if (lVar14 == 0) goto LAB_02c0524c;
          if (*(uint *)(lVar14 + 0x18) <= uVar16) {
LAB_02c05250:
                    /* WARNING: Subroutine does not return */
            Throw_Index_Wrapper();
          }
          uVar1 = uVar17 + uVar16;
          lVar14 = *(long *)(lVar14 + uVar16 * 8 + 0x20);
          if ((int)uVar1 < iVar5) {
            if ((lVar14 == 0) ||
               (lVar10 = Component_get_gameObject_0x6000c83(lVar14,0), lVar10 == 0))
            goto LAB_02c0524c;
            GameObject_SetActive_0x6000cfe(lVar10,1,0);
            lVar10 = *(long *)(lVar15 + 0x30);
            if (lVar10 == 0) goto LAB_02c0524c;
            if ((ulong)*(uint *)(lVar10 + 0x18) <= uVar17 + uVar16) goto LAB_02c05250;
            lVar10 = *(long *)(lVar10 + (lVar18 >> 0x1d) + 0x20);
            if (lVar10 == 0) goto LAB_02c0524c;
            Mission_Reward_Item_First_Reload
                      (lVar14,1,uVar1 & 0xffffffff,*(undefined4 *)(lVar10 + 0x14),
                       *(undefined4 *)(lVar10 + 0x18));
            uVar9 = Mission_manager_Reward_Status_return_0x600035f(lVar15,1,uVar1 & 0xffffffff,0);
            Mission_Reward_Item_Value_Reload(lVar14,uVar9,0,0);
          }
          else {
            if ((lVar14 == 0) ||
               (lVar14 = Component_get_gameObject_0x6000c83(lVar14,0), lVar14 == 0))
            goto LAB_02c0524c;
            GameObject_SetActive_0x6000cfe(lVar14,0,0);
          }
          uVar16 = uVar16 + 1;
          lVar18 = lVar18 + 0x100000000;
        } while ((uVar13 & 0xffffffff) != uVar16);
      }
    }
    return;
  }
LAB_02c0524c:
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

