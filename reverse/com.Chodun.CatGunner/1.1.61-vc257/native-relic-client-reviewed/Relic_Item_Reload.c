/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b31ba4, Ghidra VA 02c31ba4. */

void Relic_Item_Reload(long param_1,long param_2)

{
  int iVar1;
  int iVar2;
  uint uVar3;
  undefined4 uVar4;
  char cVar5;
  undefined *puVar6;
  undefined *puVar7;
  undefined8 uVar8;
  undefined8 uVar9;
  long lVar10;
  int iVar11;
  long *plVar12;
  float fVar13;
  int iStack_5c;
  undefined4 uStack_58;
  int iStack_54;
  
  if ((bRam000000000625c03b & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5dd28);
    func_0x029f5a50(PTR_DAT_05e5d4d8);
    func_0x029f5a50(PTR_DAT_05e61f18);
    func_0x029f5a50(PTR_DAT_05e63080);
    func_0x029f5a50(PTR_DAT_05e61f28);
    bRam000000000625c03b = 1;
  }
  if (((*(long *)(param_1 + 0x20) != 0) &&
      (Relic_Item_Demo_Reload(*(long *)(param_1 + 0x20),param_2), param_2 != 0)) &&
     (*(long *)(param_1 + 0x40) != 0)) {
    cVar5 = *(char *)(param_2 + 0x20);
    GameObject_SetActive_0x6000cfe(*(long *)(param_1 + 0x40),cVar5 != '\0',0);
    if (*(long *)(param_1 + 0x48) != 0) {
      GameObject_SetActive_0x6000cfe(*(long *)(param_1 + 0x48),cVar5 == '\0',0);
      puVar7 = PTR_DAT_05e61f18;
      if (cVar5 == '\0') {
        lVar10 = *(long *)(param_1 + 0x68);
        if (lVar10 != 0) {
          if (*(uint *)(lVar10 + 0x18) <= *(uint *)(param_2 + 0x14)) {
                    /* WARNING: Subroutine does not return */
            Throw_Index_Wrapper();
          }
          if (*(long *)(param_1 + 0x58) != 0) {
            Image_set_sprite_0x600013f
                      (*(long *)(param_1 + 0x58),
                       *(undefined8 *)(lVar10 + (long)(int)*(uint *)(param_2 + 0x14) * 8 + 0x20),0);
            lVar10 = *(long *)(param_1 + 0x60);
            uVar4 = *(undefined4 *)(param_2 + 0x14);
            if (*(int *)(*(long *)PTR_DAT_05e5dd28 + 0xe4) == 0) {
              func_0x029f5bd0();
            }
            uVar8 = Adventure_manager_Core_sprite_return_0x600062e(uVar4,0);
            if (lVar10 != 0) {
              Image_set_sprite_0x600013f(lVar10,uVar8,0);
              return;
            }
          }
        }
      }
      else {
        iVar2 = *(int *)(param_2 + 0x18);
        uVar3 = *(uint *)(param_2 + 0x10);
        iStack_54 = iVar2;
        if (*(int *)(*(long *)PTR_DAT_05e5d4d8 + 0xe4) == 0) {
          func_0x029f5bd0();
          iStack_54 = *(int *)(param_2 + 0x18);
        }
        puVar6 = PTR_DAT_05e58a10;
        plVar12 = *(long **)(param_1 + 0x28);
        iVar1 = iStack_54 * 2 + 2;
        iStack_54 = iStack_54 + 1;
        if (0x31 < iVar1) {
          iVar1 = 0x32;
        }
        if (iVar1 < 3) {
          iVar1 = 2;
        }
        uVar8 = func_0x029f5bd8(*(undefined8 *)(PTR_DAT_05e58a10 + 0x48),&iStack_54);
        uVar8 = String_Format_0x600029c(*(undefined8 *)puVar7,uVar8,0);
        if (plVar12 != (long *)0x0) {
          iVar11 = 300;
          if (8 < uVar3) {
            iVar11 = 0x32;
          }
          (**(code **)(*plVar12 + 0x558))(plVar12,uVar8,*(undefined8 *)(*plVar12 + 0x560));
          plVar12 = *(long **)(param_1 + 0x30);
          if (iVar2 < iVar11) {
            uStack_58 = *(undefined4 *)(param_2 + 0x1c);
            uVar8 = func_0x029f5bd8(*(undefined8 *)(puVar6 + 0x48),&uStack_58);
            iStack_5c = iVar1;
            uVar9 = func_0x029f5bd8(*(undefined8 *)(puVar6 + 0x48),&iStack_5c);
            uVar8 = String_Format_0x600029d(*(undefined8 *)PTR_DAT_05e61f28,uVar8,uVar9,0);
            if (plVar12 == (long *)0x0) goto LAB_02c31e8c;
            (**(code **)(*plVar12 + 0x558))(plVar12,uVar8,*(undefined8 *)(*plVar12 + 0x560));
            fVar13 = (float)*(int *)(param_2 + 0x1c) / (float)iVar1;
          }
          else {
            if (plVar12 == (long *)0x0) goto LAB_02c31e8c;
            (**(code **)(*plVar12 + 0x558))
                      (plVar12,*(undefined8 *)PTR_DAT_05e63080,*(undefined8 *)(*plVar12 + 0x560));
            fVar13 = 0.0;
          }
          if (*(long *)(param_1 + 0x38) != 0) {
            SlicedFilledImage_set_fillAmount_0x60005d0(fVar13,*(long *)(param_1 + 0x38),0);
            if (*(long *)(param_1 + 0x50) != 0) {
              GameObject_SetActive_0x6000cfe
                        (*(long *)(param_1 + 0x50),iVar1 <= *(int *)(param_2 + 0x1c),0);
              return;
            }
          }
        }
      }
    }
  }
LAB_02c31e8c:
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

