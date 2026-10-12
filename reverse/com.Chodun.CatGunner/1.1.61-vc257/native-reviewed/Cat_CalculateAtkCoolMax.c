/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b399cc, Ghidra VA 02c399cc. */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

float Cat_CalculateAtkCoolMax
                (float param_1,undefined8 param_2,ulong param_3,ulong param_4,uint param_5)

{
  float fVar1;
  undefined *puVar2;
  undefined *puVar3;
  int iVar4;
  int iVar5;
  long lVar6;
  ulong uVar7;
  undefined8 uVar8;
  float fVar9;
  float fVar10;
  undefined8 uStack_80;
  undefined8 uStack_78;
  undefined8 uStack_70;
  undefined8 uStack_68;
  undefined8 uStack_60;
  undefined8 uStack_58;
  undefined8 uStack_50;
  undefined8 uStack_48;
  
  puVar2 = PTR_DAT_05e5d4e0;
  if ((bRam000000000625c08b & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5d4c0);
    func_0x029f5a50(PTR_DAT_05e591c0);
    func_0x029f5a50(PTR_DAT_05e5d4e0);
    func_0x029f5a50(PTR_DAT_05e5dc20);
    func_0x029f5a50(PTR_DAT_05e5d4e8);
    bRam000000000625c08b = 1;
  }
  uStack_58 = 0;
  uStack_60 = 0;
  uStack_48 = 0;
  uStack_50 = 0;
  iVar5 = *(int *)(*(long *)(*(long *)puVar2 + 0xb8) + 4);
  if ((param_5 & 1) == 0) {
    Rebirth_manager_Speed_return_0x6000c8a(&uStack_80,0);
    uStack_58 = uStack_78;
    uStack_60 = uStack_80;
    uStack_48 = uStack_68;
    uStack_50 = uStack_70;
    iVar4 = InfVal_op_Explicit_0x6000056(&uStack_60,0);
    iVar5 = iVar5 + iVar4 + -200;
    if ((param_3 & 1) == 0) goto LAB_02c39ad0;
LAB_02c39a68:
    if ((param_4 & 1) != 0) goto LAB_02c39a6c;
LAB_02c39af8:
    iVar4 = 0;
  }
  else {
    iVar5 = iVar5 + -100;
    if ((param_3 & 1) != 0) goto LAB_02c39a68;
LAB_02c39ad0:
    if (*(int *)(*(long *)PTR_DAT_05e5d4e8 + 0xe4) == 0) {
      func_0x029f5bd0();
    }
    iVar4 = Upgrade_manager_AtkSpeed_Real_return(0);
    iVar5 = iVar4 + iVar5;
    if ((param_4 & 1) == 0) goto LAB_02c39af8;
LAB_02c39a6c:
    puVar2 = PTR_DAT_05e5dc20;
    lVar6 = *(long *)PTR_DAT_05e5dc20;
    if (*(int *)(lVar6 + 0xe4) == 0) {
      func_0x029f5bd0();
      lVar6 = *(long *)puVar2;
    }
    lVar6 = *(long *)(*(long *)(lVar6 + 0xb8) + 0x10);
    if (lVar6 == 0) goto LAB_02c39be4;
    iVar4 = *(int *)(lVar6 + 0x28) * -0x1e;
  }
  puVar3 = PTR_DAT_05e5d4c0;
  puVar2 = PTR_DAT_05e591c0;
  iVar4 = iVar4 + iVar5;
  if (9999 < iVar4) {
    iVar4 = 10000;
  }
  lVar6 = *(long *)PTR_DAT_05e5d4c0;
  if (iVar4 < 0x65) {
    iVar4 = 100;
  }
  if (*(int *)(lVar6 + 0xe4) == 0) {
    func_0x029f5bd0();
    lVar6 = *(long *)puVar3;
  }
  uVar8 = **(undefined8 **)(lVar6 + 0xb8);
  if (*(int *)(*(long *)puVar2 + 0xe4) == 0) {
    func_0x029f5bd0(*(long *)puVar2);
  }
  fVar10 = (param_1 / (float)iVar4) * 100.0;
  uVar7 = Object_op_Inequality_0x6000ded(uVar8,0,0);
  if ((uVar7 & 1) != 0) {
    lVar6 = *(long *)puVar3;
    if (*(int *)(lVar6 + 0xe4) == 0) {
      func_0x029f5bd0();
      lVar6 = *(long *)puVar3;
    }
    if (**(long **)(lVar6 + 0xb8) == 0) {
LAB_02c39be4:
                    /* WARNING: Subroutine does not return */
      Throw_NullReference_Wrapper();
    }
    iVar5 = Buff_manager_GetMult_0x600070d(**(long **)(lVar6 + 0xb8),2);
    fVar10 = fVar10 / (float)iVar5;
  }
  fVar9 = 2.0;
  if (fVar10 <= 2.0) {
    fVar9 = fVar10;
  }
  fVar1 = _UNK_0116c094;
  if (_UNK_0116c094 <= fVar10) {
    fVar1 = fVar9;
  }
  return fVar1;
}

