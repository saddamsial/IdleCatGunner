/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b5ece8, Ghidra VA 02c5ece8. */

int Fish_manager_TryFusion(long param_1,int param_2,int param_3)

{
  undefined *puVar1;
  int iVar2;
  int iVar3;
  long lVar4;
  
  if ((bRam000000000625c208 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e63108);
    func_0x029f5a50(PTR_DAT_05e63840);
    func_0x029f5a50(PTR_DAT_05e62fe8);
    func_0x029f5a50(PTR_DAT_05e63128);
    bRam000000000625c208 = 1;
  }
  puVar1 = PTR_DAT_05e63128;
  if ((param_2 < 0) || (param_2 == param_3)) {
    return -1;
  }
  lVar4 = *(long *)(param_1 + 0x90);
  if (lVar4 != 0) {
    if (*(int *)(lVar4 + 0x18) <= param_3) {
      return -1;
    }
    if (param_3 < 0) {
      return -1;
    }
    if (*(int *)(lVar4 + 0x18) <= param_2) {
      return -1;
    }
    iVar2 = func_0x044f7718(lVar4,param_2,*(undefined8 *)PTR_DAT_05e63128);
    if (*(long *)(param_1 + 0x90) != 0) {
      iVar3 = func_0x044f7718(*(long *)(param_1 + 0x90),param_3,*(undefined8 *)puVar1);
      puVar1 = PTR_DAT_05e63840;
      if (0xb < iVar2) {
        return -1;
      }
      if (iVar2 != iVar3) {
        return -1;
      }
      iVar3 = param_2;
      if (param_3 <= param_2) {
        iVar3 = param_3;
      }
      if (*(long *)(param_1 + 0x90) != 0) {
        if (param_2 <= param_3) {
          param_2 = param_3;
        }
        func_0x044f9164(*(long *)(param_1 + 0x90),param_2,*(undefined8 *)PTR_DAT_05e63840);
        if (*(long *)(param_1 + 0x90) != 0) {
          func_0x044f9164(*(long *)(param_1 + 0x90),iVar3,*(undefined8 *)puVar1);
          if (*(long *)(param_1 + 0x90) != 0) {
            iVar2 = iVar2 + 1;
            func_0x02630c8c(*(long *)(param_1 + 0x90),iVar2,*(undefined8 *)PTR_DAT_05e63108);
            lVar4 = *(long *)(param_1 + 0xa8);
            if (lVar4 != 0) {
              (**(code **)(lVar4 + 0x18))
                        (*(undefined8 *)(lVar4 + 0x40),*(undefined8 *)(lVar4 + 0x28));
            }
            Fish_manager_UpdateStatTexts(param_1);
            Fish_manager_RefreshCatStats();
            Fish_manager_ShowNewFishPopup(param_1,iVar2);
            if (cRam000000000625ba57 == '\0') {
              func_0x029f5a50(PTR_DAT_05e5dd70);
              cRam000000000625ba57 = '\x01';
            }
            if (**(long **)(*(long *)PTR_DAT_05e5dd70 + 0xb8) != 0) {
              Sound_manager_PlaySfx_0x600054a
                        (0x3f800000,**(long **)(*(long *)PTR_DAT_05e5dd70 + 0xb8),3,0,0);
              return iVar2;
            }
          }
        }
      }
    }
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

