/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b3f874, Ghidra VA 02c3f874. */

undefined4 Cat_GetLaggedLeaderPos(long param_1)

{
  undefined4 uVar1;
  undefined *puVar2;
  undefined *puVar3;
  undefined *puVar4;
  long lVar5;
  ulong uVar6;
  undefined8 uVar7;
  float fVar8;
  undefined4 uVar9;
  float in_s3;
  float fVar10;
  undefined8 uStack_80;
  undefined8 uStack_78;
  undefined8 uStack_70;
  undefined8 uStack_68;
  
  puVar3 = PTR_DAT_05e631d8;
  if ((bRam000000000625c09b & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e631d8);
    func_0x029f5a50(PTR_DAT_05e63240);
    func_0x029f5a50(PTR_DAT_05e63248);
    func_0x029f5a50(PTR_DAT_05e63250);
    func_0x029f5a50(PTR_DAT_05e591c0);
    func_0x029f5a50(PTR_DAT_05e63258);
    bRam000000000625c09b = 1;
  }
  puVar2 = PTR_DAT_05e591c0;
  uStack_78 = 0;
  uStack_80 = 0;
  uStack_68 = 0;
  uStack_70 = 0;
  fVar8 = (float)Time_get_time_0x6000ee1(0);
  lVar5 = *(long *)puVar3;
  fVar10 = *(float *)(param_1 + 0x248);
  if (*(int *)(lVar5 + 0xe4) == 0) {
    func_0x029f5bd0();
    lVar5 = *(long *)puVar3;
  }
  uVar7 = *(undefined8 *)(*(long *)(lVar5 + 0xb8) + 0x68);
  if (*(int *)(*(long *)puVar2 + 0xe4) == 0) {
    func_0x029f5bd0(*(long *)puVar2);
  }
  uVar6 = Object_op_Inequality_0x6000ded(uVar7,0,0);
  if ((uVar6 & 1) != 0) {
    lVar5 = *(long *)puVar3;
    if (*(int *)(lVar5 + 0xe4) == 0) {
      func_0x029f5bd0();
      lVar5 = *(long *)puVar3;
    }
    param_1 = *(long *)(*(long *)(lVar5 + 0xb8) + 0x68);
    if (param_1 == 0) goto LAB_02c3fa78;
  }
  lVar5 = Component_get_transform_0x6000c82(param_1,0);
  if (lVar5 != 0) {
    uVar9 = Transform_get_position_0x6000f4d(lVar5,0);
    lVar5 = *(long *)puVar3;
    if (*(int *)(lVar5 + 0xe4) == 0) {
      func_0x029f5bd0();
      lVar5 = *(long *)puVar3;
    }
    puVar4 = PTR_DAT_05e63250;
    puVar2 = PTR_DAT_05e63248;
    puVar3 = PTR_DAT_05e63240;
    lVar5 = *(long *)(*(long *)(lVar5 + 0xb8) + 0x70);
    if (lVar5 != 0) {
      func_0x03716d60(&uStack_80,lVar5,*(undefined8 *)PTR_DAT_05e63258);
      do {
        uVar1 = uVar9;
        uVar6 = func_0x03fd5310(&uStack_80,*(undefined8 *)puVar2);
        if ((uVar6 & 1) == 0) break;
        uVar9 = func_0x03fd53fc(&uStack_80,*(undefined8 *)puVar4);
      } while (in_s3 <= fVar8 - fVar10);
      func_0x03fd5300(&uStack_80,*(undefined8 *)puVar3);
      return uVar1;
    }
  }
LAB_02c3fa78:
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

