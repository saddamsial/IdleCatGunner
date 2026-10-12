/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b30af4, Ghidra VA 02c30af4. */

undefined8 _Draw_Multi_d__19_MoveNext(long param_1)

{
  int iVar1;
  undefined *puVar2;
  int iVar3;
  int iVar4;
  undefined8 uVar5;
  uint uVar6;
  long lVar7;
  undefined4 uVar8;
  
  if ((bRam000000000625c037 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5a710);
    bRam000000000625c037 = 1;
  }
  iVar4 = *(int *)(param_1 + 0x10);
  lVar7 = *(long *)(param_1 + 0x20);
  if (iVar4 == 2) {
    *(undefined4 *)(param_1 + 0x10) = 0xffffffff;
    iVar4 = *(int *)(param_1 + 0x3c);
    uVar6 = *(int *)(param_1 + 0x40) + 1;
    *(uint *)(param_1 + 0x40) = uVar6;
    goto LAB_02c30c64;
  }
  if (iVar4 == 1) {
    *(undefined4 *)(param_1 + 0x10) = 0xffffffff;
    if (lVar7 != 0) {
      iVar4 = *(int *)(param_1 + 0x38);
      goto LAB_02c30c14;
    }
  }
  else {
    if (iVar4 != 0) {
      return 0;
    }
    *(undefined4 *)(param_1 + 0x10) = 0xffffffff;
    if (lVar7 != 0) {
      *(undefined1 *)(lVar7 + 0x78) = 1;
      if (*(long *)(lVar7 + 0x30) != 0) {
        GameObject_SetActive_0x6000cfe(*(long *)(lVar7 + 0x30),0,0);
        puVar2 = PTR_DAT_05e5a710;
        uVar8 = *(undefined4 *)(lVar7 + 0x5c);
        uVar5 = func_0x029f5cec(*(undefined8 *)PTR_DAT_05e5a710);
        WaitForSeconds__ctor_0x6000e26(uVar8,uVar5,0);
        *(undefined8 *)(param_1 + 0x28) = uVar5;
        Managed_WriteBarrier((undefined8 *)(param_1 + 0x28),uVar5);
        uVar8 = *(undefined4 *)(lVar7 + 0x60);
        uVar5 = func_0x029f5cec(*(undefined8 *)puVar2);
        WaitForSeconds__ctor_0x6000e26(uVar8,uVar5,0);
        *(undefined8 *)(param_1 + 0x30) = uVar5;
        Managed_WriteBarrier((undefined8 *)(param_1 + 0x30),uVar5);
        iVar4 = 0;
        *(undefined4 *)(param_1 + 0x38) = 0;
        do {
          if (*(int *)(lVar7 + 0x74) <= iVar4) {
            *(undefined1 *)(lVar7 + 0x78) = 0;
            if (*(long *)(lVar7 + 0x40) != 0) {
              GameObject_SetActive_0x6000cfe(*(long *)(lVar7 + 0x40),1,0);
              Relic_Draw_Panel_Arrow_Reload(lVar7,0);
              *(undefined8 *)(lVar7 + 0x80) = 0;
              Managed_WriteBarrier((undefined8 *)(lVar7 + 0x80),0);
              return 0;
            }
            break;
          }
          *(int *)(lVar7 + 0x70) = iVar4;
          if (0 < iVar4) {
            *(undefined8 *)(param_1 + 0x18) = *(undefined8 *)(param_1 + 0x30);
            Managed_WriteBarrier((undefined8 *)(param_1 + 0x18));
            *(undefined4 *)(param_1 + 0x10) = 1;
            return 1;
          }
LAB_02c30c14:
          Relic_Draw_Panel_Page_Setup(lVar7,iVar4,0,0);
          iVar1 = *(int *)(param_1 + 0x38);
          iVar3 = Relic_Draw_Panel_get_PageSize(lVar7,0);
          iVar4 = Relic_Draw_Panel_get_PageSize(lVar7,0);
          if (*(long *)(lVar7 + 0x68) == 0) break;
          uVar6 = 0;
          iVar1 = *(int *)(*(long *)(lVar7 + 0x68) + 0x18) - iVar3 * iVar1;
          if (iVar1 <= iVar4) {
            iVar4 = iVar1;
          }
          *(int *)(param_1 + 0x3c) = iVar4;
          *(undefined4 *)(param_1 + 0x40) = 0;
LAB_02c30c64:
          if ((int)uVar6 < iVar4) {
            if ((lVar7 != 0) && (lVar7 = *(long *)(lVar7 + 0x38), lVar7 != 0)) {
              if (*(uint *)(lVar7 + 0x18) <= uVar6) {
                    /* WARNING: Subroutine does not return */
                Throw_Index_Wrapper();
              }
              lVar7 = *(long *)(lVar7 + (long)(int)uVar6 * 8 + 0x20);
              if (lVar7 != 0) {
                GameObject_SetActive_0x6000cfe(lVar7,1,0);
                if (cRam000000000625ba57 == '\0') {
                  func_0x029f5a50(PTR_DAT_05e5dd70);
                  cRam000000000625ba57 = '\x01';
                }
                if (**(long **)(*(long *)PTR_DAT_05e5dd70 + 0xb8) != 0) {
                  Sound_manager_PlaySfx_0x600054a
                            (0x3f800000,**(long **)(*(long *)PTR_DAT_05e5dd70 + 0xb8),0xe,0,0);
                  *(undefined8 *)(param_1 + 0x18) = *(undefined8 *)(param_1 + 0x28);
                  Managed_WriteBarrier((undefined8 *)(param_1 + 0x18));
                  *(undefined4 *)(param_1 + 0x10) = 2;
                  return 1;
                }
              }
            }
            break;
          }
          iVar4 = *(int *)(param_1 + 0x38) + 1;
          *(int *)(param_1 + 0x38) = iVar4;
        } while (lVar7 != 0);
      }
    }
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

