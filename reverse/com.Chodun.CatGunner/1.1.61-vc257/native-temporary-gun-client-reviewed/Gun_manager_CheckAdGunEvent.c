/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b6ab84, Ghidra VA 02c6ab84. */

void Gun_manager_CheckAdGunEvent(long param_1)

{
  int iVar1;
  ulong uVar2;
  
  if ((bRam000000000625c283 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5d6a8);
    bRam000000000625c283 = 1;
  }
  if (*(char *)(param_1 + 0xd8) == '\0') {
    if (*(int *)(*(long *)PTR_DAT_05e5d6a8 + 0xe4) == 0) {
      func_0x029f5bd0();
    }
    uVar2 = ServerConfig_manager_get_Weapon02AdOn(0);
    if (((uVar2 & 1) != 0) &&
       ((uVar2 = Gun_manager_Has_Degree_Or_Higher(param_1,2), (uVar2 & 1) != 0 ||
        (((*(char *)(param_1 + 0xe8) != '\0' && (*(int *)(param_1 + 0xc0) == -1)) &&
         (iVar1 = Gun_manager_AddAdRewardGun(0x44e10000,param_1,0xe), iVar1 != -1)))))) {
      *(undefined1 *)(param_1 + 0xd8) = 1;
    }
  }
  return;
}

