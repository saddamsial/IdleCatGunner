/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b4c95c, Ghidra VA 02c4c95c. */

void Monster_manager_Monster_Invade(long param_1,undefined8 param_2)

{
  uint uVar1;
  int iVar2;
  undefined *puVar3;
  long lVar4;
  long lVar5;
  undefined8 *puVar6;
  long lVar7;
  
  puVar3 = PTR_DAT_05e5d338;
  if ((bRam000000000625c14f & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5d338);
    func_0x029f5a50(PTR_DAT_05e63498);
    func_0x029f5a50(PTR_DAT_05e634a0);
    bRam000000000625c14f = 1;
  }
  lVar4 = *(long *)puVar3;
  if (*(int *)(lVar4 + 0xe4) == 0) {
    func_0x029f5bd0();
    lVar4 = *(long *)puVar3;
  }
  if (**(char **)(lVar4 + 0xb8) == '\0') {
    return;
  }
  iVar2 = *(int *)(param_1 + 0xbc) + -1;
  *(int *)(param_1 + 0xbc) = iVar2;
  if (*(long *)(param_1 + 200) != 0) {
    Disc_set_AngRadiansEnd_0x600003e
              (((float)iVar2 / (float)*(int *)(param_1 + 0xc0)) * 360.0,*(long *)(param_1 + 200),0);
    if (*(int *)(param_1 + 0xbc) < 1) {
      Monster_manager_Game_Fail(param_1);
      return;
    }
    if (*(long *)(param_1 + 0x178) != 0) {
      func_0x0452e0a8(*(long *)(param_1 + 0x178),param_2,*(undefined8 *)PTR_DAT_05e634a0);
      lVar4 = *(long *)(param_1 + 0x170);
      if (lVar4 != 0) {
        lVar5 = *(long *)(lVar4 + 0x10);
        lVar7 = *(long *)PTR_DAT_05e63498;
        *(int *)(lVar4 + 0x1c) = *(int *)(lVar4 + 0x1c) + 1;
        if (lVar5 != 0) {
          uVar1 = *(uint *)(lVar4 + 0x18);
          if (uVar1 < *(uint *)(lVar5 + 0x18)) {
            *(uint *)(lVar4 + 0x18) = uVar1 + 1;
            puVar6 = (undefined8 *)(lVar5 + (long)(int)uVar1 * 8 + 0x20);
            *puVar6 = param_2;
            Managed_WriteBarrier(puVar6,param_2);
          }
          else {
            func_0x0452cba8(lVar4,param_2,
                            *(undefined8 *)(*(long *)(*(long *)(lVar7 + 0x20) + 0xc0) + 0x70));
          }
          *(int *)(param_1 + 0xd4) = *(int *)(param_1 + 0xd4) + 1;
          return;
        }
      }
    }
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

