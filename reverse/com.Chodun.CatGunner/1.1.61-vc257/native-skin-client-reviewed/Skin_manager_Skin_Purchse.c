/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2ba7934, Ghidra VA 02ca7934. */

void Skin_manager_Skin_Purchse(long param_1,uint param_2)

{
  undefined *puVar1;
  int iVar2;
  int iVar3;
  ulong uVar4;
  long lVar5;
  long lVar6;
  
  if ((bRam000000000625c4e3 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5d338);
    bRam000000000625c4e3 = 1;
  }
  iVar2 = Skin_manager_Price_return(param_1,param_2);
  uVar4 = Skin_manager_is_Unlock(param_1,param_2);
  puVar1 = PTR_DAT_05e5d338;
  if ((uVar4 & 1) == 0) {
    lVar5 = *(long *)PTR_DAT_05e5d338;
    if (*(int *)(lVar5 + 0xe4) == 0) {
      func_0x029f5bd0();
      lVar5 = *(long *)puVar1;
    }
    iVar3 = ObscuredInt_op_Implicit_0x6000412
                      (*(undefined8 *)(*(long *)(lVar5 + 0xb8) + 0x90),
                       *(undefined8 *)(*(long *)(lVar5 + 0xb8) + 0x98),0);
    if (iVar2 <= iVar3) {
      if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
        func_0x029f5bd0();
      }
      Gamemanager_Lose_Dia(iVar2,2,0);
      lVar5 = *(long *)(param_1 + 0x28);
      if (lVar5 != 0) {
        if (*(uint *)(lVar5 + 0x18) <= param_2) {
                    /* WARNING: Subroutine does not return */
          Throw_Index_Wrapper();
        }
        lVar6 = *(long *)(param_1 + 0x70);
        *(undefined1 *)(lVar5 + (int)param_2 + 0x20) = 1;
        if (lVar6 != 0) {
          Skin_Info_UI_Reload_0x6000e9b(lVar6,*(undefined4 *)(lVar6 + 0x20));
          Skin_manager_UI_Reload(param_1);
          Skin_manager_Skin_Value_Reload(param_1);
          if (cRam000000000625ba57 == '\0') {
            func_0x029f5a50(PTR_DAT_05e5dd70);
            cRam000000000625ba57 = '\x01';
          }
          if (**(long **)(*(long *)PTR_DAT_05e5dd70 + 0xb8) != 0) {
            Sound_manager_PlaySfx_0x600054a
                      (0x3f800000,**(long **)(*(long *)PTR_DAT_05e5dd70 + 0xb8),7,0,0);
            Gamemanager_InvalidateMoneyCache_0x6000071(0);
            return;
          }
        }
      }
                    /* WARNING: Subroutine does not return */
      Throw_NullReference_Wrapper();
    }
  }
  return;
}

