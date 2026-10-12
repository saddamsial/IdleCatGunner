/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b687b4, Ghidra VA 02c687b4. */

void Gun_manager_DrawRandom_Normal(long param_1)

{
  undefined *puVar1;
  int iVar2;
  long lVar3;
  undefined8 uVar4;
  
  puVar1 = PTR_DAT_05e5d338;
  if ((bRam000000000625c264 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5d338);
    bRam000000000625c264 = 1;
  }
  lVar3 = *(long *)puVar1;
  if (*(int *)(lVar3 + 0xe4) == 0) {
    func_0x029f5bd0();
    lVar3 = *(long *)puVar1;
  }
  iVar2 = ObscuredInt_op_Implicit_0x6000412
                    (*(undefined8 *)(*(long *)(lVar3 + 0xb8) + 0x90),
                     *(undefined8 *)(*(long *)(lVar3 + 0xb8) + 0x98),0);
  if (iVar2 < 100) {
    if (cRam000000000625ba57 == '\0') {
      func_0x029f5a50(PTR_DAT_05e5dd70);
      cRam000000000625ba57 = '\x01';
    }
    lVar3 = **(long **)(*(long *)PTR_DAT_05e5dd70 + 0xb8);
    if (lVar3 == 0) {
LAB_02c68914:
                    /* WARNING: Subroutine does not return */
      Throw_NullReference_Wrapper();
    }
    uVar4 = 5;
  }
  else {
    iVar2 = Gun_manager_DrawRandomGun(param_1,0);
    if (iVar2 == -1) {
      return;
    }
    if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
      func_0x029f5bd0();
    }
    Gamemanager_Lose_Dia_0x600007d(100,1,0);
    *(int *)(param_1 + 0xd4) = *(int *)(param_1 + 0xd4) + 1;
    Gun_manager_NewGun_UI_Reload_0x6000a70(param_1,iVar2);
    Gun_manager_OnWeaponAcquired(param_1,iVar2);
    if (cRam000000000625ba57 == '\0') {
      func_0x029f5a50(PTR_DAT_05e5dd70);
      cRam000000000625ba57 = '\x01';
    }
    lVar3 = **(long **)(*(long *)PTR_DAT_05e5dd70 + 0xb8);
    if (lVar3 == 0) goto LAB_02c68914;
    uVar4 = 2;
  }
  Sound_manager_PlaySfx_0x600054a(0x3f800000,lVar3,uVar4,0,0);
  return;
}

