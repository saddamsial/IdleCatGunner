/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2a83ca0, Ghidra VA 02b83ca0. */

void DamageTextManager_ShowDamageText_0x60000de
               (long param_1,long param_2,undefined8 param_3,undefined8 param_4)

{
  ulong uVar1;
  long *plVar2;
  long lVar3;
  undefined8 uVar4;
  undefined4 *puVar5;
  long lVar6;
  undefined1 auVar7 [16];
  undefined4 uStack_34;
  
  if ((bRam000000000625b8e6 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e58f08);
    func_0x029f5a50(PTR_DAT_05e5d5a0);
    func_0x029f5a50(PTR_DAT_05e59768);
    func_0x029f5a50(PTR_DAT_05e5d5a8);
    bRam000000000625b8e6 = 1;
  }
  uStack_34 = 0;
  if (*(long *)(param_1 + 0x30) != 0) {
    puVar5 = &uStack_34;
    lVar6 = *(long *)PTR_DAT_05e5d5a0;
    uVar1 = func_0x03e41968(*(long *)(param_1 + 0x30),param_2,puVar5);
    if ((uVar1 & 1) == 0) {
      plVar2 = (long *)func_0x029f5b40(*(undefined8 *)PTR_DAT_05e59768,1);
      if (plVar2 == (long *)0x0) goto LAB_02b83dd4;
      if ((param_2 != 0) &&
         (lVar3 = func_0x029f5bd4(param_2,*(undefined8 *)(*plVar2 + 0x40)), lVar3 == 0)) {
        uVar4 = func_0x029f5d20();
        auVar7 = func_0x029f5bc0(uVar4,0);
        if (lVar6 != 0) {
          Transform_get_position_0x6000f4d(lVar6,0);
          DamageTextManager_ShowDamageText_0x60000e1(auVar7._0_8_,auVar7._8_8_ & 0xffffffff,puVar5);
          return;
        }
                    /* WARNING: Subroutine does not return */
        Throw_NullReference_Wrapper();
      }
      if ((int)plVar2[3] == 0) {
                    /* WARNING: Subroutine does not return */
        Throw_Index_Wrapper();
      }
      plVar2[4] = param_2;
      Managed_WriteBarrier(plVar2 + 4,param_2);
      if (*(int *)(*(long *)PTR_DAT_05e58f08 + 0xe4) == 0) {
        func_0x029f5bd0();
      }
      Debug_LogErrorFormat_0x6000342(*(undefined8 *)PTR_DAT_05e5d5a8,plVar2,0);
    }
    else {
      DamageTextManager_ShowDamageText_0x60000df(param_1,uStack_34,param_3,param_4);
    }
    return;
  }
LAB_02b83dd4:
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

