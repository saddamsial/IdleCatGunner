/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2bb3030, Ghidra VA 02cb3030. */

undefined8 Upgrade_manager_Upgrade_Silent(long param_1,uint param_2)

{
  undefined *puVar1;
  int iVar2;
  uint uVar3;
  ulong uVar4;
  long lVar5;
  long lVar6;
  long lVar7;
  undefined1 auVar8 [16];
  undefined8 uStack_90;
  undefined8 uStack_88;
  undefined8 uStack_80;
  undefined8 uStack_78;
  undefined8 uStack_70;
  undefined8 uStack_68;
  undefined8 uStack_60;
  undefined8 uStack_58;
  undefined8 uStack_50;
  undefined8 uStack_48;
  undefined8 uStack_40;
  undefined8 uStack_38;
  
  if ((bRam000000000625c562 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5d338);
    bRam000000000625c562 = 1;
  }
  lVar5 = *(long *)(param_1 + 0x20);
  uStack_48 = 0;
  uStack_50 = 0;
  uStack_38 = 0;
  uStack_40 = 0;
  if (lVar5 != 0) {
    if (*(uint *)(lVar5 + 0x18) <= param_2) goto LAB_02cb31c0;
    lVar6 = (long)(int)param_2;
    lVar5 = *(long *)(lVar5 + lVar6 * 8 + 0x20);
    if (lVar5 != 0) {
      iVar2 = ObscuredInt_op_Implicit_0x6000412
                        (*(undefined8 *)(lVar5 + 0x18),*(undefined8 *)(lVar5 + 0x20),0);
      if (9999 < iVar2) {
        return 0;
      }
      lVar5 = *(long *)(param_1 + 0x20);
      if (lVar5 != 0) {
        if (*(uint *)(lVar5 + 0x18) <= param_2) goto LAB_02cb31c0;
        lVar5 = *(long *)(lVar5 + lVar6 * 8 + 0x20);
        if (lVar5 != 0) {
          lVar7 = *(long *)(param_1 + 0x30);
          uVar3 = ObscuredInt_op_Implicit_0x6000412
                            (*(undefined8 *)(lVar5 + 0x18),*(undefined8 *)(lVar5 + 0x20),0);
          puVar1 = PTR_DAT_05e5d338;
          if (lVar7 != 0) {
            if (*(uint *)(lVar7 + 0x18) <= uVar3) {
LAB_02cb31c0:
                    /* WARNING: Subroutine does not return */
              Throw_Index_Wrapper();
            }
            lVar7 = lVar7 + (long)(int)uVar3 * 0x20;
            lVar5 = *(long *)PTR_DAT_05e5d338;
            uStack_48 = *(undefined8 *)(lVar7 + 0x28);
            uStack_50 = *(undefined8 *)(lVar7 + 0x20);
            uStack_38 = *(undefined8 *)(lVar7 + 0x38);
            uStack_40 = *(undefined8 *)(lVar7 + 0x30);
            if (*(int *)(lVar5 + 0xe4) == 0) {
              func_0x029f5bd0();
              lVar5 = *(long *)puVar1;
            }
            uVar4 = InfVal_op_LessThan_0x600007e(*(long *)(lVar5 + 0xb8) + 0x30,&uStack_50,0);
            if ((uVar4 & 1) != 0) {
              return 0;
            }
            uStack_68 = uStack_48;
            uStack_70 = uStack_50;
            uStack_58 = uStack_38;
            uStack_60 = uStack_40;
            if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
              func_0x029f5bd0();
            }
            uStack_88 = uStack_68;
            uStack_90 = uStack_70;
            uStack_78 = uStack_58;
            uStack_80 = uStack_60;
            Gamemanager_Lose_Money_0x600007c(&uStack_90,0);
            lVar5 = *(long *)(param_1 + 0x20);
            if (lVar5 != 0) {
              if (*(uint *)(lVar5 + 0x18) <= param_2) goto LAB_02cb31c0;
              lVar5 = *(long *)(lVar5 + lVar6 * 8 + 0x20);
              if (lVar5 != 0) {
                iVar2 = ObscuredInt_op_Implicit_0x6000412
                                  (*(undefined8 *)(lVar5 + 0x18),*(undefined8 *)(lVar5 + 0x20),0);
                auVar8 = ObscuredInt_op_Implicit_0x6000411(iVar2 + 1,0);
                *(undefined1 (*) [16])(lVar5 + 0x18) = auVar8;
                return 1;
              }
            }
          }
        }
      }
    }
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

