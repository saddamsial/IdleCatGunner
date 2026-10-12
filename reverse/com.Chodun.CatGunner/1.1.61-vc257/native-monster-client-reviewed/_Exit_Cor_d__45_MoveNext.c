/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b5030c, Ghidra VA 02c5030c. */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

undefined8 _Exit_Cor_d__45_MoveNext(long param_1)

{
  int iVar1;
  undefined *puVar2;
  long lVar3;
  undefined8 uVar4;
  ulong uVar5;
  long lVar6;
  
  if ((bRam000000000625c152 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5d910);
    func_0x029f5a50(PTR_DAT_05e591c0);
    func_0x029f5a50(PTR_DAT_05e5dc20);
    func_0x029f5a50(PTR_DAT_05e5d368);
    func_0x029f5a50(PTR_DAT_05e5a710);
    bRam000000000625c152 = 1;
  }
  puVar2 = PTR_DAT_05e5dc20;
  iVar1 = *(int *)(param_1 + 0x10);
  if (iVar1 == 2) {
    lVar6 = *(long *)(param_1 + 0x20);
    lVar3 = **(long **)(*(long *)PTR_DAT_05e5d368 + 0xb8);
    *(undefined4 *)(param_1 + 0x10) = 0xffffffff;
    if ((lVar3 != 0) &&
       (UI_manager_Loading_Off_0x60005fe(lVar3,0), puVar2 = PTR_DAT_05e5d910, lVar6 != 0)) {
      if ((*(char *)(lVar6 + 0xb9) != '\0') &&
         ((*(char *)(lVar6 + 0xba) == '\0' && (0 < *(int *)(lVar6 + 0x13c))))) {
        uVar4 = **(undefined8 **)(*(long *)PTR_DAT_05e5d910 + 0xb8);
        if (*(int *)(*(long *)PTR_DAT_05e591c0 + 0xe4) == 0) {
          func_0x029f5bd0();
        }
        uVar5 = Object_op_Inequality_0x6000ded(uVar4,0,0);
        if ((uVar5 & 1) != 0) {
          if (**(long **)(*(long *)puVar2 + 0xb8) == 0) goto LAB_02c50520;
          Admob_ShowPlacementInterstitial_0x60001a4(**(long **)(*(long *)puVar2 + 0xb8),4,0,0);
        }
      }
      return 0;
    }
  }
  else if (iVar1 == 1) {
    *(undefined4 *)(param_1 + 0x10) = 0xffffffff;
    lVar3 = *(long *)puVar2;
    if (*(int *)(lVar3 + 0xe4) == 0) {
      func_0x029f5bd0();
      lVar3 = *(long *)puVar2;
    }
    lVar3 = *(long *)(*(long *)(lVar3 + 0xb8) + 0x10);
    if (lVar3 != 0) {
      Tree_manager_Game_Start_0x6000eff(lVar3,0);
      uVar4 = func_0x029f5cec(*(undefined8 *)PTR_DAT_05e5a710);
      WaitForSeconds__ctor_0x6000e26(_UNK_0116c060,uVar4,0);
      *(undefined8 *)(param_1 + 0x18) = uVar4;
      Managed_WriteBarrier((undefined8 *)(param_1 + 0x18),uVar4);
      *(undefined4 *)(param_1 + 0x10) = 2;
      return 1;
    }
  }
  else {
    if (iVar1 != 0) {
      return 0;
    }
    lVar3 = **(long **)(*(long *)PTR_DAT_05e5d368 + 0xb8);
    *(undefined4 *)(param_1 + 0x10) = 0xffffffff;
    if (lVar3 != 0) {
      UI_manager_Loading_On_0x60005fd(lVar3,0);
      uVar4 = func_0x029f5cec(*(undefined8 *)PTR_DAT_05e5a710);
      WaitForSeconds__ctor_0x6000e26(0x3fc00000,uVar4,0);
      *(undefined8 *)(param_1 + 0x18) = uVar4;
      Managed_WriteBarrier((undefined8 *)(param_1 + 0x18),uVar4);
      *(undefined4 *)(param_1 + 0x10) = 1;
      return 1;
    }
  }
LAB_02c50520:
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

