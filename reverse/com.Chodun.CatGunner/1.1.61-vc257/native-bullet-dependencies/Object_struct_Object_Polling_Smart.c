/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b17bb4, Ghidra VA 02c17bb4. */

undefined8 Object_struct_Object_Polling_Smart(long param_1)

{
  int iVar1;
  int iVar2;
  int iVar3;
  undefined *puVar4;
  undefined *puVar5;
  ulong uVar6;
  long lVar7;
  int iVar8;
  uint uVar9;
  long lVar10;
  
  if ((bRam000000000625bf02 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e62770);
    func_0x029f5a50(PTR_DAT_05e591c0);
    bRam000000000625bf02 = 1;
  }
  if (*(long *)(param_1 + 8) == 0) {
LAB_02c17d7c:
                    /* WARNING: Subroutine does not return */
    Throw_NullReference_Wrapper();
  }
  iVar2 = *(int *)(*(long *)(param_1 + 8) + 0x18);
  if (0 < iVar2) {
    iVar8 = 0;
    do {
      lVar7 = *(long *)(param_1 + 8);
      if (lVar7 == 0) goto LAB_02c17d7c;
      iVar1 = iVar8 + *(int *)(param_1 + 0x10);
      iVar3 = 0;
      if (iVar2 != 0) {
        iVar3 = iVar1 / iVar2;
      }
      uVar9 = iVar1 - iVar3 * iVar2;
      if (*(uint *)(lVar7 + 0x18) <= uVar9) goto LAB_02c17d80;
      lVar10 = (long)(int)uVar9;
      lVar7 = *(long *)(lVar7 + lVar10 * 8 + 0x20);
      if (lVar7 == 0) goto LAB_02c17d7c;
      uVar6 = GameObject_get_activeInHierarchy_0x6000d00(lVar7,0);
      puVar5 = PTR_DAT_05e62770;
      puVar4 = PTR_DAT_05e591c0;
      if ((uVar6 & 1) == 0) goto LAB_02c17d38;
      iVar8 = iVar8 + 1;
    } while (iVar2 != iVar8);
    if (0 < iVar2) {
      iVar8 = 0;
      do {
        lVar7 = *(long *)(param_1 + 8);
        if (lVar7 == 0) goto LAB_02c17d7c;
        iVar1 = iVar8 + *(int *)(param_1 + 0x10);
        iVar3 = 0;
        if (iVar2 != 0) {
          iVar3 = iVar1 / iVar2;
        }
        uVar9 = iVar1 - iVar3 * iVar2;
        if (*(uint *)(lVar7 + 0x18) <= uVar9) goto LAB_02c17d80;
        lVar10 = (long)(int)uVar9;
        lVar7 = *(long *)(lVar7 + lVar10 * 8 + 0x20);
        if (lVar7 == 0) goto LAB_02c17d7c;
        lVar7 = func_0x030a02b4(lVar7,*(undefined8 *)puVar5);
        if (*(int *)(*(long *)puVar4 + 0xe4) == 0) {
          func_0x029f5bd0(*(long *)puVar4);
        }
        uVar6 = Object_op_Inequality_0x6000ded(lVar7,0,0);
        if ((uVar6 & 1) != 0) {
          if (lVar7 == 0) goto LAB_02c17d7c;
          if (*(char *)(lVar7 + 0x68) != '\0') {
            MonoBehaviour_CancelInvoke_0x6000d3c(lVar7,0);
            lVar7 = *(long *)(param_1 + 8);
            if (lVar7 == 0) goto LAB_02c17d7c;
            if (*(uint *)(lVar7 + 0x18) <= uVar9) goto LAB_02c17d80;
            lVar7 = *(long *)(lVar7 + lVar10 * 8 + 0x20);
            if (lVar7 != 0) {
              GameObject_SetActive_0x6000cfe(lVar7,0,0);
LAB_02c17d38:
              iVar8 = 0;
              if (iVar2 != 0) {
                iVar8 = (int)(uVar9 + 1) / iVar2;
              }
              lVar7 = *(long *)(param_1 + 8);
              *(uint *)(param_1 + 0x10) = (uVar9 + 1) - iVar8 * iVar2;
              if (lVar7 == 0) goto LAB_02c17d7c;
              if (uVar9 < *(uint *)(lVar7 + 0x18)) {
                return *(undefined8 *)(lVar7 + lVar10 * 8 + 0x20);
              }
LAB_02c17d80:
                    /* WARNING: Subroutine does not return */
              Throw_Index_Wrapper();
            }
            goto LAB_02c17d7c;
          }
        }
        iVar8 = iVar8 + 1;
      } while (iVar2 != iVar8);
    }
  }
  return 0;
}

