/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2ba8828, Ghidra VA 02ca8828. */

void SpeedRun_manager_Game_Enter(long param_1)

{
  uint uVar1;
  int iVar2;
  uint uVar3;
  undefined *puVar4;
  undefined *puVar5;
  undefined *puVar6;
  long lVar7;
  undefined8 uVar8;
  long lVar9;
  long lVar10;
  undefined8 *puVar11;
  ulong uVar12;
  
  puVar4 = PTR_DAT_05e5d338;
  if ((bRam000000000625c4f0 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5d5b0);
    func_0x029f5a50(PTR_DAT_05e5d338);
    func_0x029f5a50(PTR_DAT_05e649d8);
    func_0x029f5a50(PTR_DAT_05e649e0);
    func_0x029f5a50(PTR_DAT_05e62670);
    func_0x029f5a50(PTR_DAT_05e5dc20);
    func_0x029f5a50(PTR_DAT_05e5d368);
    bRam000000000625c4f0 = 1;
  }
  puVar5 = PTR_DAT_05e5dc20;
  lVar7 = *(long *)puVar4;
  if (*(int *)(lVar7 + 0xe4) == 0) {
    func_0x029f5bd0();
    lVar7 = *(long *)puVar4;
  }
  lVar9 = *(long *)puVar5;
  iVar2 = *(int *)(lVar9 + 0xe4);
  **(undefined1 **)(lVar7 + 0xb8) = 0;
  if (iVar2 == 0) {
    func_0x029f5bd0(lVar9);
    lVar9 = *(long *)puVar5;
  }
  puVar4 = PTR_DAT_05e62670;
  if (*(long *)(*(long *)(lVar9 + 0xb8) + 0x10) != 0) {
    Tree_manager_Game_Exit_0x6000f03();
    lVar7 = *(long *)(*(long *)(*(long *)puVar4 + 0xb8) + 8);
    if (lVar7 != 0) {
      Setting_EcoMode_Off_0x600052f(lVar7,0);
      *(undefined2 *)(param_1 + 0x54) = 0;
      *(undefined1 *)(param_1 + 0x56) = 0;
      *(int *)(param_1 + 0x50) = *(int *)(param_1 + 0x30);
      uVar1 = *(int *)(param_1 + 0x30) * 0xf + 0x14;
      if (0xbd < (int)uVar1) {
        uVar1 = 0xbe;
      }
      if ((int)uVar1 < 0x15) {
        uVar1 = 0x14;
      }
      lVar7 = *(long *)(param_1 + 0x28);
      *(uint *)(param_1 + 0x58) = uVar1;
      *(uint *)(param_1 + 0x5c) = uVar1;
      if (lVar7 != 0) {
        iVar2 = *(int *)(lVar7 + 0x18);
        *(undefined4 *)(lVar7 + 0x18) = 0;
        *(int *)(lVar7 + 0x1c) = *(int *)(lVar7 + 0x1c) + 1;
        if (0 < iVar2) {
          Array_Clear_0x6000d48(*(undefined8 *)(lVar7 + 0x10),0,iVar2,0);
        }
        puVar6 = PTR_DAT_05e649d8;
        puVar5 = PTR_DAT_05e5d5b0;
        puVar4 = PTR_DAT_05e5d368;
        lVar7 = *(long *)(param_1 + 0x20);
        if (lVar7 != 0) {
          uVar12 = 0;
          do {
            uVar3 = *(uint *)(lVar7 + 0x18);
            if ((long)(int)uVar3 <= (long)uVar12) {
              if (**(long **)(*(long *)puVar4 + 0xb8) != 0) {
                UI_manager_UI_Reload_0x60005fa(**(long **)(*(long *)puVar4 + 0xb8),1,0);
                lVar7 = *(long *)(*(long *)(*(long *)puVar5 + 0xb8) + 8);
                if (lVar7 != 0) {
                  Cat_manager_Warp_0x600077c
                            (*(undefined4 *)(param_1 + 0x70),*(undefined4 *)(param_1 + 0x74),
                             *(undefined4 *)(param_1 + 0x78),lVar7,0);
                  lVar7 = *(long *)(*(long *)(*(long *)puVar5 + 0xb8) + 8);
                  if (lVar7 != 0) {
                    Cat_manager_Balance_Reload_0x6000779(lVar7,0);
                    if (cRam000000000625ba57 == '\0') {
                      func_0x029f5a50(PTR_DAT_05e5dd70);
                      cRam000000000625ba57 = '\x01';
                    }
                    if (**(long **)(*(long *)PTR_DAT_05e5dd70 + 0xb8) != 0) {
                      Sound_manager_PlaySfx_0x600054a
                                (0x3f800000,**(long **)(*(long *)PTR_DAT_05e5dd70 + 0xb8),10,0,0);
                      uVar8 = SpeedRun_manager_Enter_Cor(param_1);
                      MonoBehaviour_StartCoroutine_0x6000d43(param_1,uVar8,0);
                      return;
                    }
                  }
                }
              }
              break;
            }
            if (uVar12 < uVar1) {
              if (uVar3 <= uVar12) {
LAB_02ca8b28:
                    /* WARNING: Subroutine does not return */
                Throw_Index_Wrapper();
              }
              lVar9 = *(long *)(param_1 + 0x28);
              if (lVar9 == 0) break;
              lVar10 = *(long *)(lVar9 + 0x10);
              uVar8 = *(undefined8 *)(lVar7 + uVar12 * 8 + 0x20);
              lVar7 = *(long *)puVar6;
              *(int *)(lVar9 + 0x1c) = *(int *)(lVar9 + 0x1c) + 1;
              if (lVar10 == 0) break;
              uVar3 = *(uint *)(lVar9 + 0x18);
              if (uVar3 < *(uint *)(lVar10 + 0x18)) {
                *(uint *)(lVar9 + 0x18) = uVar3 + 1;
                puVar11 = (undefined8 *)(lVar10 + (long)(int)uVar3 * 8 + 0x20);
                *puVar11 = uVar8;
                Managed_WriteBarrier(puVar11);
              }
              else {
                func_0x0452cba8(lVar9,uVar8,
                                *(undefined8 *)(*(long *)(*(long *)(lVar7 + 0x20) + 0xc0) + 0x70));
              }
            }
            else {
              if (uVar3 <= uVar12) goto LAB_02ca8b28;
              lVar7 = *(long *)(lVar7 + uVar12 * 8 + 0x20);
              if ((lVar7 == 0) || (lVar7 = Component_get_gameObject_0x6000c83(lVar7,0), lVar7 == 0))
              break;
              GameObject_SetActive_0x6000cfe(lVar7,0,0);
            }
            lVar7 = *(long *)(param_1 + 0x20);
            uVar12 = uVar12 + 1;
          } while (lVar7 != 0);
        }
      }
    }
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

