/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b35734, Ghidra VA 02c35734. */

void Adventure_Panel_Exp_Reload(long param_1)

{
  int iVar1;
  int iVar2;
  uint uVar3;
  undefined *puVar4;
  undefined *puVar5;
  undefined *puVar6;
  long lVar7;
  undefined8 uVar8;
  undefined8 uVar9;
  long lVar10;
  long *plVar11;
  float fVar12;
  int iStack_44;
  int iStack_38;
  int iStack_34;
  
  puVar5 = PTR_DAT_05e5dd28;
  if ((bRam000000000625c064 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5dd28);
    func_0x029f5a50(PTR_DAT_05e61f18);
    func_0x029f5a50(PTR_DAT_05e63080);
    func_0x029f5a50(PTR_DAT_05e61f28);
    bRam000000000625c064 = 1;
  }
  lVar7 = *(long *)puVar5;
  if (*(int *)(lVar7 + 0xe4) == 0) {
    func_0x029f5bd0();
    lVar7 = *(long *)puVar5;
  }
  puVar6 = PTR_DAT_05e61f18;
  puVar4 = PTR_DAT_05e58a10;
  lVar7 = *(long *)(*(long *)(lVar7 + 0xb8) + 0x10);
  if (lVar7 != 0) {
    uVar3 = *(uint *)(lVar7 + 0x30);
    plVar11 = *(long **)(param_1 + 0x20);
    iStack_34 = uVar3 + 1;
    uVar8 = func_0x029f5bd8(*(undefined8 *)(PTR_DAT_05e58a10 + 0x48),&iStack_34);
    uVar8 = String_Format_0x600029c(*(undefined8 *)puVar6,uVar8,0);
    if (plVar11 != (long *)0x0) {
      (**(code **)(*plVar11 + 0x558))(plVar11,uVar8,*(undefined8 *)(*plVar11 + 0x560));
      if (uVar3 == 0xf) {
        plVar11 = *(long **)(param_1 + 0x28);
        if (plVar11 != (long *)0x0) {
          (**(code **)(*plVar11 + 0x558))
                    (plVar11,*(undefined8 *)PTR_DAT_05e63080,*(undefined8 *)(*plVar11 + 0x560));
          lVar7 = *(long *)(param_1 + 0x30);
          if (lVar7 != 0) {
            fVar12 = 1.0;
LAB_02c35908:
            SlicedFilledImage_set_fillAmount_0x60005d0(fVar12,lVar7,0);
            return;
          }
        }
      }
      else {
        lVar7 = *(long *)puVar5;
        if (*(int *)(lVar7 + 0xe4) == 0) {
          func_0x029f5bd0();
          lVar7 = *(long *)puVar5;
        }
        lVar7 = *(long *)(*(long *)(lVar7 + 0xb8) + 0x10);
        if ((lVar7 != 0) && (lVar10 = *(long *)(lVar7 + 0x38), lVar10 != 0)) {
          if (*(uint *)(lVar10 + 0x18) <= uVar3) {
                    /* WARNING: Subroutine does not return */
            Throw_Index_Wrapper();
          }
          iVar1 = *(int *)(lVar7 + 0x34);
          plVar11 = *(long **)(param_1 + 0x28);
          iVar2 = *(int *)(lVar10 + (long)(int)uVar3 * 4 + 0x20);
          iStack_38 = iVar1;
          uVar8 = func_0x029f5bd8(*(undefined8 *)(puVar4 + 0x48),&iStack_38);
          iStack_44 = iVar2;
          uVar9 = func_0x029f5bd8(*(undefined8 *)(puVar4 + 0x48),&iStack_44);
          uVar8 = String_Format_0x600029d(*(undefined8 *)PTR_DAT_05e61f28,uVar8,uVar9,0);
          if (plVar11 != (long *)0x0) {
            (**(code **)(*plVar11 + 0x558))(plVar11,uVar8,*(undefined8 *)(*plVar11 + 0x560));
            lVar7 = *(long *)(param_1 + 0x30);
            if (lVar7 != 0) {
              fVar12 = (float)iVar1 / (float)iVar2;
              goto LAB_02c35908;
            }
          }
        }
      }
    }
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

