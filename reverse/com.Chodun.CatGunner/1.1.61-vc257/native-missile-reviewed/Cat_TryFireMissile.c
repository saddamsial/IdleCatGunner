/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b421b4, Ghidra VA 02c421b4. */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

uint Cat_TryFireMissile(float param_1,undefined4 param_2,float param_3,float param_4,long param_5,
                       long param_6,undefined8 *param_7,undefined8 param_8,uint param_9,
                       undefined8 param_10,undefined8 param_11,undefined8 param_12)

{
  undefined *puVar1;
  undefined *puVar2;
  uint uVar3;
  long lVar4;
  ulong uVar5;
  long lVar6;
  float fVar7;
  float fVar8;
  float fVar9;
  undefined4 uVar10;
  float fVar11;
  float fVar12;
  undefined8 uStack_b0;
  undefined8 uStack_a8;
  undefined8 uStack_a0;
  undefined8 uStack_98;
  float fStack_48;
  float fStack_44;
  
  puVar1 = PTR_DAT_05e62768;
  fVar11 = param_3;
  uVar10 = param_2;
  if ((bRam000000000625c0b6 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e62770);
    func_0x029f5a50(PTR_DAT_05e591c0);
    func_0x029f5a50(PTR_DAT_05e62768);
    bRam000000000625c0b6 = 1;
  }
  puVar2 = PTR_DAT_05e591c0;
  if (**(long **)(*(long *)puVar1 + 0xb8) != 0) {
    lVar4 = Polling_manager_Object_Polling_Smart(**(long **)(*(long *)puVar1 + 0xb8),0,0);
    lVar6 = *(long *)puVar2;
    if (*(int *)(lVar6 + 0xe4) == 0) {
      func_0x029f5bd0(lVar6);
    }
    uVar3 = Object_op_Equality_0x6000dec(lVar4,0,0);
    if ((uVar3 & 1) != 0) {
LAB_02c42494:
      return (uVar3 ^ 0xffffffff) & 1;
    }
    if (*(int *)(*(long *)puVar2 + 0xe4) == 0) {
      func_0x029f5bd0();
    }
    uVar5 = Object_op_Inequality_0x6000ded(param_6,0,0);
    if ((uVar5 & 1) == 0) {
      fVar7 = *(float *)(param_5 + 0x1e8);
      uVar10 = *(undefined4 *)(param_5 + 0x1ec);
      fVar11 = *(float *)(param_5 + 0x1f0);
    }
    else {
      if ((param_6 == 0) || (lVar6 = Component_get_transform_0x6000c82(param_6,0), lVar6 == 0))
      goto LAB_02c424c8;
      fVar7 = (float)Transform_get_position_0x6000f4d(lVar6,0);
    }
    puVar1 = PTR_DAT_05e59000;
    if (_UNK_0116c088 < param_4) {
      if (cRam000000000625bae8 == '\0') {
        func_0x029f5a50(PTR_DAT_05e59000);
        cRam000000000625bae8 = '\x01';
      }
      if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
        func_0x029f5bd0();
      }
      fVar12 = _UNK_0116c26c;
      fVar8 = (float)func_0x05afb2f0(param_4 * _UNK_0116c26c);
      fVar9 = (float)Random_Range_0x6000ba6(0,0x43b40000,0);
      fVar8 = (float)Random_Range_0x6000ba6
                               (0,SQRT((fVar11 - param_3) * (fVar11 - param_3) +
                                       (fVar7 - param_1) * (fVar7 - param_1)) * fVar8,0);
      func_0x05afb270(fVar9 * fVar12,&fStack_44,&fStack_48);
      fVar7 = fVar7 + fVar8 * fStack_48;
      fVar11 = fVar11 + fVar8 * fStack_44;
    }
    if (cRam000000000625bae8 == '\0') {
      func_0x029f5a50(PTR_DAT_05e59000);
      cRam000000000625bae8 = '\x01';
    }
    if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
      func_0x029f5bd0();
    }
    if ((*(long *)(param_5 + 0x48) != 0) && (lVar4 != 0)) {
      fVar12 = *(float *)(*(long *)(param_5 + 0x48) + 0x54);
      lVar4 = func_0x030a02b4(lVar4,*(undefined8 *)PTR_DAT_05e62770);
      if ((*(long *)(param_5 + 0x48) != 0) && (lVar4 != 0)) {
        uStack_a8 = param_7[1];
        uStack_b0 = *param_7;
        uStack_98 = param_7[3];
        uStack_a0 = param_7[2];
        Bullet_SpawnMissile(param_1,param_2,param_3,fVar7,uVar10,fVar11,
                            *(undefined4 *)(*(long *)(param_5 + 0x48) + 0x50),
                            SQRT((fVar7 - param_1) * (fVar7 - param_1) +
                                 (fVar11 - param_3) * (fVar11 - param_3)) / fVar12,lVar4,
                            *(undefined4 *)(param_5 + 0x40),&uStack_b0,param_8,param_9 & 1,
                            *(undefined4 *)(param_5 + 0xb4),0,param_12,0x3ecccccd);
        goto LAB_02c42494;
      }
    }
  }
LAB_02c424c8:
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

