/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b7c524, Ghidra VA 02c7c524. */

void Pet_manager_Pet_Reload(long param_1)

{
  uint uVar1;
  undefined *puVar2;
  undefined *puVar3;
  long lVar4;
  undefined8 *puVar5;
  int iVar6;
  ulong uVar7;
  long lVar8;
  undefined8 uStack_c0;
  undefined8 uStack_b8;
  undefined8 uStack_b0;
  undefined8 uStack_a8;
  undefined8 uStack_a0;
  undefined8 uStack_98;
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
  
  puVar2 = PTR_DAT_05e63d20;
  if ((bRam000000000625c32a & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5d5b0);
    func_0x029f5a50(PTR_DAT_05e63d20);
    func_0x029f5a50(PTR_DAT_05e5d4d0);
    bRam000000000625c32a = 1;
  }
  uStack_78 = 0;
  uStack_80 = 0;
  uStack_68 = 0;
  uStack_70 = 0;
  uStack_58 = 0;
  uStack_60 = 0;
  uStack_48 = 0;
  uStack_50 = 0;
  if (**(long **)(*(long *)puVar2 + 0xb8) != 0) {
    Pet_Ingame_manager_Pet_Reload_0x6000bbf();
    InfVal_op_Implicit_0x600003f(&uStack_60,0,0);
    puVar3 = PTR_DAT_05e5d5b0;
    puVar2 = PTR_DAT_05e5d4d0;
    lVar4 = *(long *)(param_1 + 0x30);
    if (lVar4 != 0) {
      uVar7 = 0;
      iVar6 = 0;
      do {
        if ((long)(int)*(uint *)(lVar4 + 0x18) <= (long)uVar7) {
          InfVal_op_Implicit_0x600003f(&uStack_a0,100,0);
          uStack_78 = uStack_98;
          uStack_80 = uStack_a0;
          uStack_68 = uStack_88;
          uStack_70 = uStack_90;
          InfVal_op_Addition_0x6000072(&uStack_c0,&uStack_60,&uStack_80,0);
          lVar4 = *(long *)puVar2;
          if (*(int *)(lVar4 + 0xe4) == 0) {
            func_0x029f5bd0();
            lVar4 = *(long *)puVar2;
          }
          puVar5 = *(undefined8 **)(lVar4 + 0xb8);
          puVar5[1] = uStack_b8;
          *puVar5 = uStack_c0;
          puVar5[3] = uStack_a8;
          puVar5[2] = uStack_b0;
          Managed_WriteBarrier(*(undefined8 *)(*(long *)puVar2 + 0xb8),0);
          lVar4 = *(long *)puVar3;
          *(int *)(*(long *)(*(long *)puVar2 + 0xb8) + 0x20) = iVar6 + 100;
          lVar4 = *(long *)(*(long *)(lVar4 + 0xb8) + 8);
          if (lVar4 != 0) {
            Cat_manager_Balance_Reload_0x6000779(lVar4,0);
            return;
          }
          break;
        }
        if (*(uint *)(lVar4 + 0x18) <= uVar7) {
LAB_02c7c6e0:
                    /* WARNING: Subroutine does not return */
          Throw_Index_Wrapper();
        }
        uVar1 = *(uint *)(lVar4 + uVar7 * 4 + 0x20);
        if (uVar1 != 0xffffffff) {
          lVar4 = *(long *)(param_1 + 0x20);
          if (lVar4 == 0) break;
          if (*(uint *)(lVar4 + 0x18) <= uVar1) goto LAB_02c7c6e0;
          lVar8 = *(long *)(lVar4 + (long)(int)uVar1 * 8 + 0x20);
          if (lVar8 == 0) break;
          InfVal_op_Addition_0x6000072(&uStack_a0,&uStack_60,lVar8 + 0x18,0);
          lVar4 = *(long *)(param_1 + 0x30);
          iVar6 = *(int *)(lVar8 + 0x38) + iVar6;
          uStack_58 = uStack_98;
          uStack_60 = uStack_a0;
          uStack_48 = uStack_88;
          uStack_50 = uStack_90;
        }
        uVar7 = uVar7 + 1;
      } while (lVar4 != 0);
    }
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

