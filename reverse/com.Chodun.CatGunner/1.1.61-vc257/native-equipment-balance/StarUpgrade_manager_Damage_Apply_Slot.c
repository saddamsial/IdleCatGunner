/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b6db38, Ghidra VA 02c6db38. */

void StarUpgrade_manager_Damage_Apply_Slot(undefined8 *param_1,undefined8 *param_2,uint param_3)

{
  undefined *puVar1;
  undefined *puVar2;
  long lVar3;
  ulong uVar4;
  undefined4 uVar5;
  undefined8 uVar6;
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
  
  puVar2 = PTR_DAT_05e5e058;
  if ((bRam000000000625c2ac & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e591c0);
    func_0x029f5a50(PTR_DAT_05e5e058);
    bRam000000000625c2ac = 1;
  }
  puVar1 = PTR_DAT_05e591c0;
  lVar3 = *(long *)puVar2;
  if (*(int *)(lVar3 + 0xe4) == 0) {
    func_0x029f5bd0();
    lVar3 = *(long *)puVar2;
  }
  uVar6 = **(undefined8 **)(lVar3 + 0xb8);
  if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
    func_0x029f5bd0(*(long *)puVar1);
  }
  uVar4 = Object_op_Equality_0x6000dec(uVar6,0,0);
  if ((uVar4 & 1) == 0) {
    lVar3 = *(long *)puVar2;
    uStack_48 = param_2[1];
    uStack_50 = *param_2;
    uStack_38 = param_2[3];
    uStack_40 = param_2[2];
    if (*(int *)(lVar3 + 0xe4) == 0) {
      func_0x029f5bd0();
      lVar3 = *(long *)puVar2;
    }
    if (**(long **)(lVar3 + 0xb8) == 0) {
                    /* WARNING: Subroutine does not return */
      Throw_NullReference_Wrapper();
    }
    uVar5 = 0;
    if ((-1 < (int)param_3) && (lVar3 = *(long *)(**(long **)(lVar3 + 0xb8) + 0x30), lVar3 != 0)) {
      if ((int)param_3 < *(int *)(lVar3 + 0x18)) {
        uVar5 = *(undefined4 *)(lVar3 + (ulong)param_3 * 4 + 0x20);
      }
      else {
        uVar5 = 0;
      }
    }
    uStack_88 = uStack_48;
    uStack_90 = uStack_50;
    uStack_78 = uStack_38;
    uStack_80 = uStack_40;
    StarUpgrade_manager_Damage_Apply(&uStack_70,&uStack_90,uVar5);
  }
  else {
    uStack_68 = param_2[1];
    uStack_70 = *param_2;
    uStack_58 = param_2[3];
    uStack_60 = param_2[2];
  }
  param_1[1] = uStack_68;
  *param_1 = uStack_70;
  param_1[3] = uStack_58;
  param_1[2] = uStack_60;
  return;
}

