/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2a80694, Ghidra VA 02b80694. */

void DamageTextManager_ShowDamageText_0x60000e0
               (uint param_1,uint param_2,uint param_3,long param_4,long param_5,undefined8 param_6)

{
  undefined *puVar1;
  long lVar2;
  ulong uVar3;
  long *plVar4;
  undefined8 uVar5;
  undefined8 unaff_x19;
  undefined8 unaff_x20;
  undefined8 unaff_x21;
  undefined8 unaff_x22;
  undefined8 unaff_x30;
  uint extraout_s0;
  uint uVar6;
  uint uVar7;
  undefined8 unaff_d8;
  undefined8 unaff_d9;
  undefined8 unaff_d10;
  
  while( true ) {
    *(undefined8 *)((long)register0x00000008 + -0x40) = unaff_d10;
    *(undefined8 *)((long)register0x00000008 + -0x38) = unaff_d9;
    *(undefined8 *)((long)register0x00000008 + -0x30) = unaff_d8;
    *(undefined8 *)((long)register0x00000008 + -0x28) = unaff_x30;
    *(undefined8 *)((long)register0x00000008 + -0x20) = unaff_x22;
    *(undefined8 *)((long)register0x00000008 + -0x18) = unaff_x21;
    *(undefined8 *)((long)register0x00000008 + -0x10) = unaff_x20;
    *(undefined8 *)((long)register0x00000008 + -8) = unaff_x19;
    unaff_x22 = 0x625b000;
    uVar6 = param_2;
    uVar7 = param_3;
    if ((bRam000000000625b8e7 & 1) == 0) {
      func_0x029f5a50(PTR_DAT_05e58f08);
      func_0x029f5a50(PTR_DAT_05e5d5a0);
      func_0x029f5a50(PTR_DAT_05e59768);
      func_0x029f5a50(PTR_DAT_05e5d5a8);
      bRam000000000625b8e7 = 1;
    }
    lVar2 = *(long *)(param_4 + 0x30);
    *(undefined4 *)((long)register0x00000008 + -0x44) = 0;
    if (lVar2 == 0) break;
    uVar3 = func_0x03e41968(lVar2,param_5,(undefined1 *)((long)register0x00000008 + -0x44),
                            *(undefined8 *)PTR_DAT_05e5d5a0);
    if ((uVar3 & 1) != 0) {
      DamageTextManager_ShowDamageText_0x60000e1
                (param_1,param_2,param_3,param_4,*(undefined4 *)((long)register0x00000008 + -0x44),
                 param_6);
      return;
    }
    plVar4 = (long *)func_0x029f5b40(*(undefined8 *)PTR_DAT_05e59768,1);
    if (plVar4 == (long *)0x0) break;
    if ((param_5 == 0) ||
       (lVar2 = func_0x029f5bd4(param_5,*(undefined8 *)(*plVar4 + 0x40)), lVar2 != 0)) {
      if ((int)plVar4[3] != 0) {
        plVar4[4] = param_5;
        Managed_WriteBarrier(plVar4 + 4,param_5);
        if (*(int *)(*(long *)PTR_DAT_05e58f08 + 0xe4) == 0) {
          func_0x029f5bd0();
        }
        Debug_LogErrorFormat_0x6000342(*(undefined8 *)PTR_DAT_05e5d5a8,plVar4,0);
        return;
      }
                    /* WARNING: Subroutine does not return */
      Throw_Index_Wrapper();
    }
    uVar5 = func_0x029f5d20();
    param_6 = func_0x029f5bc0(uVar5,0);
    puVar1 = PTR_DAT_05e591c0;
    *(ulong *)((long)register0x00000008 + -0x90) = (ulong)param_1;
    *(ulong *)((long)register0x00000008 + -0x80) = (ulong)param_2;
    *(ulong *)((long)register0x00000008 + -0x78) = (ulong)param_3;
    *(code **)((long)register0x00000008 + -0x70) = Gamemanager_Dia_Devide_Txt_Spawn_0x600008c;
    *(long *)((long)register0x00000008 + -0x68) = param_4;
    *(long **)((long)register0x00000008 + -0x60) = plVar4;
    *(long *)((long)register0x00000008 + -0x58) = param_5;
    if ((bRam000000000625b8cd & 1) == 0) {
      func_0x029f5a50(PTR_DAT_05e591c0);
      func_0x029f5a50(PTR_DAT_05e5d538);
      bRam000000000625b8cd = 1;
    }
    uVar5 = Camera_get_main_0x60002b1(0);
    if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
      func_0x029f5bd0(*(long *)puVar1);
    }
    uVar3 = Object_op_Inequality_0x6000ded(uVar5,0,0);
    if ((uVar3 & 1) == 0) {
      return;
    }
    param_4 = DamageTextManager_get_Instance_0x60000d4();
    if (param_4 == 0) {
                    /* WARNING: Subroutine does not return */
      Throw_NullReference_Wrapper();
    }
    unaff_x20 = *(undefined8 *)((long)register0x00000008 + -0x60);
    unaff_x19 = *(undefined8 *)((long)register0x00000008 + -0x58);
    unaff_x30 = *(undefined8 *)((long)register0x00000008 + -0x70);
    unaff_x21 = *(undefined8 *)((long)register0x00000008 + -0x68);
    param_5 = *(long *)PTR_DAT_05e5d538;
    unaff_d9 = *(undefined8 *)((long)register0x00000008 + -0x80);
    unaff_d8 = *(undefined8 *)((long)register0x00000008 + -0x78);
    unaff_d10 = *(undefined8 *)((long)register0x00000008 + -0x90);
    register0x00000008 = (BADSPACEBASE *)((long)register0x00000008 + -0x50);
    param_1 = extraout_s0;
    param_2 = uVar6;
    param_3 = uVar7;
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

