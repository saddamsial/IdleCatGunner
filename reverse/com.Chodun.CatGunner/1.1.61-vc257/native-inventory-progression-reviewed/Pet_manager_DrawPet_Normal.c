/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b7d310, Ghidra VA 02c7d310. */

void Pet_manager_DrawPet_Normal(undefined8 param_1)

{
  undefined *puVar1;
  int iVar2;
  long lVar3;
  undefined8 uVar4;
  
  puVar1 = PTR_DAT_05e5d338;
  if ((bRam000000000625c327 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5d338);
    bRam000000000625c327 = 1;
  }
  lVar3 = *(long *)puVar1;
  if (*(int *)(lVar3 + 0xe4) == 0) {
    func_0x029f5bd0();
    lVar3 = *(long *)puVar1;
  }
  if ((*(int *)(*(long *)(lVar3 + 0xb8) + 0xc0) < 100) ||
     (iVar2 = Pet_manager_DrawPet(param_1,0), iVar2 == -1)) {
    if (cRam000000000625ba57 == '\0') {
      func_0x029f5a50(PTR_DAT_05e5dd70);
      cRam000000000625ba57 = '\x01';
    }
    lVar3 = **(long **)(*(long *)PTR_DAT_05e5dd70 + 0xb8);
    if (lVar3 == 0) goto LAB_02c7d440;
    uVar4 = 5;
  }
  else {
    if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
      func_0x029f5bd0();
    }
    Gamemanager_Lose_PetCoin_0x600007f(100,0);
    Pet_manager_NewPet_UI_Reload_0x6000be6(param_1,iVar2);
    if (cRam000000000625ba57 == '\0') {
      func_0x029f5a50(PTR_DAT_05e5dd70);
      cRam000000000625ba57 = '\x01';
    }
    lVar3 = **(long **)(*(long *)PTR_DAT_05e5dd70 + 0xb8);
    if (lVar3 == 0) {
LAB_02c7d440:
                    /* WARNING: Subroutine does not return */
      Throw_NullReference_Wrapper();
    }
    uVar4 = 2;
  }
  Sound_manager_PlaySfx_0x600054a(0x3f800000,lVar3,uVar4,0,0);
  return;
}

