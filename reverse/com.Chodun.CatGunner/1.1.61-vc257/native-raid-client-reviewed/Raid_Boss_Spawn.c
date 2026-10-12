/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b55f84, Ghidra VA 02c55f84. */

void Raid_Boss_Spawn(long param_1,undefined8 *param_2,uint param_3)

{
  uint uVar1;
  undefined *puVar2;
  undefined8 uVar3;
  ulong uVar4;
  long lVar5;
  uint uVar6;
  long lVar7;
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
  undefined8 uStack_40;
  undefined8 uStack_38;
  
  if ((bRam000000000625c190 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e632d8);
    bRam000000000625c190 = 1;
  }
  *(uint *)(param_1 + 0x38) = param_3;
  uStack_48 = param_2[1];
  uStack_50 = *param_2;
  uStack_38 = param_2[3];
  uStack_40 = param_2[2];
  lVar5 = *(long *)(param_1 + 0x20);
  InfVal_op_Implicit_0x600003f(&uStack_70,0,0);
  if (lVar5 != 0) {
    uStack_88 = uStack_48;
    uStack_90 = uStack_50;
    uStack_78 = uStack_38;
    uStack_80 = uStack_40;
    uStack_a8 = uStack_68;
    uStack_b0 = uStack_70;
    uStack_98 = uStack_58;
    uStack_a0 = uStack_60;
    Enemy_Spawn_0x600097c(lVar5,&uStack_90,&uStack_b0,0);
    puVar2 = PTR_DAT_05e632d8;
    lVar5 = *(long *)(param_1 + 0x30);
    if (lVar5 != 0) {
      lVar7 = 0;
      while( true ) {
        uVar1 = *(uint *)(lVar5 + 0x18);
        uVar6 = (uint)lVar7;
        if ((int)uVar1 <= (int)uVar6) break;
        if (uVar1 <= uVar6) goto LAB_02c560e8;
        lVar5 = *(long *)(lVar5 + lVar7 * 8 + 0x20);
        if ((lVar5 == 0) || (lVar5 = GameObject_get_gameObject_0x6000d0f(lVar5,0), lVar5 == 0))
        goto LAB_02c56068;
        GameObject_SetActive_0x6000cfe(lVar5,param_3 == uVar6,0);
        lVar5 = *(long *)(param_1 + 0x30);
        lVar7 = lVar7 + 1;
        if (lVar5 == 0) goto LAB_02c56068;
      }
      if (uVar1 <= *(uint *)(param_1 + 0x38)) {
LAB_02c560e8:
                    /* WARNING: Subroutine does not return */
        Throw_Index_Wrapper();
      }
      lVar5 = *(long *)(lVar5 + (long)(int)*(uint *)(param_1 + 0x38) * 8 + 0x20);
      if (lVar5 != 0) {
        uVar3 = func_0x030a02b4(lVar5,*(undefined8 *)puVar2);
        *(undefined8 *)(param_1 + 0x28) = uVar3;
        Managed_WriteBarrier();
        lVar5 = Component_get_gameObject_0x6000c83(param_1,0);
        if (lVar5 != 0) {
          uVar4 = GameObject_get_activeInHierarchy_0x6000d00(lVar5,0);
          if ((uVar4 & 1) == 0) {
            lVar5 = Component_get_gameObject_0x6000c83(param_1,0);
            if (lVar5 == 0) goto LAB_02c56068;
            GameObject_SetActive_0x6000cfe(lVar5,1,0);
          }
          return;
        }
      }
    }
  }
LAB_02c56068:
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

