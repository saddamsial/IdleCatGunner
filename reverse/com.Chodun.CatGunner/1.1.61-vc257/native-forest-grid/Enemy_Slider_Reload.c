/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b5cbfc, Ghidra VA 02c5cbfc. */

void Enemy_Slider_Reload(long param_1)

{
  undefined *puVar1;
  undefined *puVar2;
  ulong uVar3;
  long lVar4;
  undefined8 uVar5;
  undefined8 uStack_e0;
  undefined8 uStack_d8;
  undefined8 uStack_d0;
  undefined8 uStack_c8;
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
  undefined8 uStack_40;
  undefined8 uStack_38;
  undefined8 uStack_30;
  undefined8 uStack_28;
  
  puVar1 = PTR_DAT_05e591c0;
  if ((bRam000000000625c1f1 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5dd30);
    func_0x029f5a50(PTR_DAT_05e591c0);
    func_0x029f5a50(PTR_DAT_05e5e070);
    bRam000000000625c1f1 = 1;
  }
  uVar5 = *(undefined8 *)(param_1 + 0x88);
  uStack_38 = 0;
  uStack_40 = 0;
  uStack_28 = 0;
  uStack_30 = 0;
  if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  uVar3 = Object_op_Equality_0x6000dec(uVar5,0,0);
  puVar2 = PTR_DAT_05e5e070;
  puVar1 = PTR_DAT_05e5dd30;
  if ((uVar3 & 1) == 0) {
    InfVal_op_Division_0x6000075(&uStack_e0,param_1 + 0x28,param_1 + 0x48,0);
    uStack_38 = uStack_d8;
    uStack_40 = uStack_e0;
    uStack_28 = uStack_c8;
    uStack_30 = uStack_d0;
    InfVal_op_Explicit_0x600005a(&uStack_40,0);
    if ((*(long *)(param_1 + 0x88) != 0) &&
       (lVar4 = *(long *)(*(long *)(param_1 + 0x88) + 0x20), lVar4 != 0)) {
      SpriteFill_Value_Reload_0x60000c3(lVar4,0);
      if ((*(long *)(param_1 + 0x88) != 0) &&
         (lVar4 = Component_get_gameObject_0x6000c83(*(long *)(param_1 + 0x88),0), lVar4 != 0)) {
        GameObject_SetActive_0x6000cfe(lVar4,1,0);
        return;
      }
    }
LAB_02c5cdb8:
                    /* WARNING: Subroutine does not return */
    Throw_NullReference_Wrapper();
  }
  if (*(int *)(param_1 + 0x20) == 5) {
    lVar4 = *(long *)PTR_DAT_05e5e070;
    if (*(int *)(lVar4 + 0xe4) == 0) {
      func_0x029f5bd0();
      lVar4 = *(long *)puVar2;
    }
    if ((**(long **)(lVar4 + 0xb8) == 0) ||
       (lVar4 = *(long *)(**(long **)(lVar4 + 0xb8) + 0xa8), lVar4 == 0)) goto LAB_02c5cdb8;
    uStack_98 = *(undefined8 *)(param_1 + 0x30);
    uStack_a0 = *(undefined8 *)(param_1 + 0x28);
    uStack_88 = *(undefined8 *)(param_1 + 0x40);
    uStack_90 = *(undefined8 *)(param_1 + 0x38);
    uStack_b8 = *(undefined8 *)(param_1 + 0x50);
    uStack_c0 = *(undefined8 *)(param_1 + 0x48);
    uStack_a8 = *(undefined8 *)(param_1 + 0x60);
    uStack_b0 = *(undefined8 *)(param_1 + 0x58);
    Raid_Ingame_UI_Health_Reload_0x60008ef(lVar4,&uStack_a0,&uStack_c0,0);
  }
  else if (*(int *)(param_1 + 0x20) == 2) {
    lVar4 = *(long *)PTR_DAT_05e5dd30;
    if (*(int *)(lVar4 + 0xe4) == 0) {
      func_0x029f5bd0();
      lVar4 = *(long *)puVar1;
    }
    lVar4 = *(long *)(*(long *)(lVar4 + 0xb8) + 8);
    if ((lVar4 == 0) || (lVar4 = *(long *)(lVar4 + 0xa0), lVar4 == 0)) goto LAB_02c5cdb8;
    uStack_58 = *(undefined8 *)(param_1 + 0x30);
    uStack_60 = *(undefined8 *)(param_1 + 0x28);
    uStack_48 = *(undefined8 *)(param_1 + 0x40);
    uStack_50 = *(undefined8 *)(param_1 + 0x38);
    uStack_78 = *(undefined8 *)(param_1 + 0x50);
    uStack_80 = *(undefined8 *)(param_1 + 0x48);
    uStack_68 = *(undefined8 *)(param_1 + 0x60);
    uStack_70 = *(undefined8 *)(param_1 + 0x58);
    Boss_Slider_Value_Reload_0x60007ce(lVar4,&uStack_60,&uStack_80,0);
  }
  return;
}

