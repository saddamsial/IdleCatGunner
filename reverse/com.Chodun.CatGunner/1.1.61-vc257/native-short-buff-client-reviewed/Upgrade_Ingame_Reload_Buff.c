/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2bb1234, Ghidra VA 02cb1234. */

void Upgrade_Ingame_Reload_Buff(long param_1)

{
  undefined *puVar1;
  undefined *puVar2;
  undefined4 uVar3;
  int iVar4;
  long lVar5;
  ulong uVar6;
  long *plVar7;
  
  puVar2 = PTR_DAT_05e5d4c0;
  if ((bRam000000000625c54a & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5d4c0);
    func_0x029f5a50(PTR_DAT_05e591c0);
    func_0x029f5a50(PTR_DAT_05e63800);
    bRam000000000625c54a = 1;
  }
  puVar1 = PTR_DAT_05e591c0;
  lVar5 = *(long *)puVar2;
  if (*(int *)(lVar5 + 0xe4) == 0) {
    func_0x029f5bd0();
    lVar5 = *(long *)puVar2;
  }
  lVar5 = **(long **)(lVar5 + 0xb8);
  if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
    func_0x029f5bd0(*(long *)puVar1);
  }
  uVar6 = Object_op_Inequality_0x6000ded(lVar5,0,0);
  if ((uVar6 & 1) == 0) {
    iVar4 = 1;
  }
  else {
    uVar3 = Upgrade_Ingame_ToBuffType(*(undefined4 *)(param_1 + 0x20));
    if (lVar5 == 0) goto LAB_02cb13f8;
    iVar4 = Buff_manager_GetMult(lVar5,uVar3,0);
  }
  if (iVar4 == *(int *)(param_1 + 0xc4)) {
    return;
  }
  *(int *)(param_1 + 0xc4) = iVar4;
  if (*(long *)(param_1 + 0x78) != 0) {
    GameObject_SetActive_0x6000cfe(*(long *)(param_1 + 0x78),1 < iVar4,0);
    if (*(long *)(param_1 + 0x80) != 0) {
      uVar6 = (ulong)(1 < iVar4);
      GameObject_SetActive_0x6000cfe(*(long *)(param_1 + 0x80),uVar6,0);
      lVar5 = *(long *)(param_1 + 0x68);
      if (lVar5 != 0) {
        if (*(uint *)(lVar5 + 0x18) <= (uint)(1 < iVar4)) {
LAB_02cb13fc:
                    /* WARNING: Subroutine does not return */
          Throw_Index_Wrapper();
        }
        plVar7 = *(long **)(param_1 + 0x28);
        if (plVar7 != (long *)0x0) {
          lVar5 = lVar5 + uVar6 * 0x10;
          (**(code **)(*plVar7 + 0x2a8))
                    (*(undefined4 *)(lVar5 + 0x20),*(undefined4 *)(lVar5 + 0x24),
                     *(undefined4 *)(lVar5 + 0x28),*(undefined4 *)(lVar5 + 0x2c),plVar7,
                     *(undefined8 *)(*plVar7 + 0x2b0));
          lVar5 = *(long *)(param_1 + 0x70);
          if (lVar5 != 0) {
            if (*(uint *)(lVar5 + 0x18) <= (uint)(1 < iVar4)) goto LAB_02cb13fc;
            plVar7 = *(long **)(param_1 + 0x60);
            if (plVar7 != (long *)0x0) {
              lVar5 = lVar5 + uVar6 * 0x10;
              (**(code **)(*plVar7 + 0x2a8))
                        (*(undefined4 *)(lVar5 + 0x20),*(undefined4 *)(lVar5 + 0x24),
                         *(undefined4 *)(lVar5 + 0x28),*(undefined4 *)(lVar5 + 0x2c),plVar7,
                         *(undefined8 *)(*plVar7 + 0x2b0));
              if (iVar4 < 2) {
                return;
              }
              if (*(long *)(param_1 + 0x88) != 0) {
                TMP_Text_SetText_0x6000603
                          ((float)iVar4,*(long *)(param_1 + 0x88),*(undefined8 *)PTR_DAT_05e63800,0)
                ;
                return;
              }
            }
          }
        }
      }
    }
  }
LAB_02cb13f8:
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

