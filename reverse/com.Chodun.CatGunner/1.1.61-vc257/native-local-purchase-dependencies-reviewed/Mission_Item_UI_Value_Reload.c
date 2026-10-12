/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b03e2c, Ghidra VA 02c03e2c. */

void Mission_Item_UI_Value_Reload(long param_1,int param_2,int param_3,int param_4)

{
  undefined *puVar1;
  undefined *puVar2;
  undefined8 uVar3;
  undefined8 uVar4;
  int *piVar5;
  long *plVar6;
  int iVar7;
  double dVar8;
  double dVar9;
  int iStack_60;
  int iStack_5c;
  int iStack_58;
  undefined4 uStack_54;
  
  if ((bRam000000000625be5a & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e61f28);
    bRam000000000625be5a = 1;
  }
  puVar2 = PTR_DAT_05e61f28;
  iStack_5c = 0;
  if (*(long *)(param_1 + 0x50) == 0) goto LAB_02c0409c;
  SlicedFilledImage_set_fillAmount_0x60005d0
            ((float)param_2 / (float)param_3,*(long *)(param_1 + 0x50),0);
  puVar1 = PTR_DAT_05e58a10;
  plVar6 = *(long **)(param_1 + 0x48);
  iStack_58 = param_2;
  uVar3 = func_0x029f5bd8(*(undefined8 *)(PTR_DAT_05e58a10 + 0x48),&iStack_58);
  iStack_60 = param_3;
  uVar4 = func_0x029f5bd8(*(undefined8 *)(puVar1 + 0x48),&iStack_60);
  uVar3 = String_Format_0x600029d(*(undefined8 *)puVar2,uVar3,uVar4,0);
  if (plVar6 == (long *)0x0) goto LAB_02c0409c;
  (**(code **)(*plVar6 + 0x558))(plVar6,uVar3,*(undefined8 *)(*plVar6 + 0x560));
  plVar6 = *(long **)(param_1 + 0x30);
  piVar5 = (int *)(param_1 + 0x24);
  if (param_4 == 3) {
    iVar7 = *piVar5;
    if (cRam000000000625b95a == '\0') {
      func_0x029f5a50(PTR_DAT_05e59000);
      cRam000000000625b95a = '\x01';
    }
    if (*(int *)(*(long *)PTR_DAT_05e59000 + 0xe4) == 0) {
      func_0x029f5bd0();
    }
    dVar9 = (double)((float)iVar7 * 0.5);
    dVar8 = (double)func_0x05afb230(dVar9,&iStack_58);
    if (0.0 <= (float)iVar7 * 0.5) {
      if (dVar8 == 0.5) {
        dVar8 = 1.0;
        goto LAB_02c03f9c;
      }
      dVar9 = (double)(long)(dVar9 + 0.5);
    }
    else if (dVar8 == -0.5) {
      dVar8 = -1.0;
LAB_02c03f9c:
      dVar9 = (double)CONCAT44(uStack_54,iStack_58);
      if (((long)dVar9 & 1U) != 0) {
        dVar9 = dVar9 + dVar8;
      }
    }
    else {
      dVar9 = (double)(long)(dVar9 + -0.5);
    }
    piVar5 = &iStack_5c;
    iStack_5c = -0x80000000;
    if (dVar9 != INFINITY) {
      iStack_5c = (int)dVar9;
    }
  }
  uVar3 = Int32_ToString_0x600080e(piVar5,0);
  if (plVar6 != (long *)0x0) {
    (**(code **)(*plVar6 + 0x558))(plVar6,uVar3,*(undefined8 *)(*plVar6 + 0x560));
    if (*(long *)(param_1 + 0x58) != 0) {
      GameObject_SetActive_0x6000cfe(*(long *)(param_1 + 0x58),param_4 == 0,0);
      if (*(long *)(param_1 + 0x60) != 0) {
        GameObject_SetActive_0x6000cfe(*(long *)(param_1 + 0x60),param_4 == 1,0);
        if (*(long *)(param_1 + 0x68) != 0) {
          GameObject_SetActive_0x6000cfe(*(long *)(param_1 + 0x68),param_4 == 2,0);
          if (*(long *)(param_1 + 0x70) != 0) {
            GameObject_SetActive_0x6000cfe(*(long *)(param_1 + 0x70),param_4 == 3,0);
            if (*(long *)(param_1 + 0x88) != 0) {
              GameObject_SetActive_0x6000cfe(*(long *)(param_1 + 0x88),param_4 == 3,0);
              return;
            }
          }
        }
      }
    }
  }
LAB_02c0409c:
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

