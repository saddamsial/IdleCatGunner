/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b417e8, Ghidra VA 02c417e8. */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void Cat_ApplyLeftHandTowardGunPivot
               (undefined1 param_1 [16],float param_2,float param_3,long param_4)

{
  undefined *puVar1;
  ulong uVar2;
  long lVar3;
  long lVar4;
  undefined8 uVar5;
  float fVar6;
  float fVar7;
  float fVar8;
  float fVar9;
  
  puVar1 = PTR_DAT_05e591c0;
  if ((bRam000000000625c0b1 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e631d8);
    func_0x029f5a50(PTR_DAT_05e591c0);
    bRam000000000625c0b1 = 1;
  }
  uVar5 = *(undefined8 *)(param_4 + 0xc0);
  if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  uVar2 = Object_op_Equality_0x6000dec(uVar5,0,0);
  if ((uVar2 & 1) == 0) {
    uVar5 = *(undefined8 *)(param_4 + 0xd0);
    if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
      func_0x029f5bd0();
    }
    uVar2 = Object_op_Equality_0x6000dec(uVar5,0,0);
    if ((uVar2 & 1) == 0) {
      if (*(long *)(param_4 + 0xd0) == 0) goto LAB_02c419cc;
      lVar3 = Transform_get_parent_0x6000f5f(*(long *)(param_4 + 0xd0),0);
      if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
        func_0x029f5bd0(*(long *)puVar1);
      }
      uVar2 = Object_op_Inequality_0x6000ded(lVar3,0,0);
      lVar4 = *(long *)(param_4 + 0xc0);
      if ((uVar2 & 1) == 0) {
        if (lVar4 == 0) goto LAB_02c419cc;
        fVar6 = (float)Transform_get_position_0x6000f4d(lVar4,0);
        if (*(long *)(param_4 + 0xd0) == 0) goto LAB_02c419cc;
        fVar8 = param_2;
        fVar9 = param_3;
        fVar7 = (float)Transform_get_position_0x6000f4d(*(long *)(param_4 + 0xd0),0);
        fVar6 = fVar6 - fVar7;
        param_2 = param_2 - fVar8;
        param_3 = param_3 - fVar9;
      }
      else {
        if (lVar4 == 0) {
LAB_02c419cc:
                    /* WARNING: Subroutine does not return */
          Throw_NullReference_Wrapper();
        }
        fVar6 = (float)Transform_get_position_0x6000f4d(lVar4,0);
        if ((*(long *)(param_4 + 0xd0) == 0) ||
           (fVar8 = param_2, fVar9 = param_3,
           fVar7 = (float)Transform_get_position_0x6000f4d(*(long *)(param_4 + 0xd0),0), lVar3 == 0)
           ) goto LAB_02c419cc;
        param_3 = param_3 - fVar9;
        param_2 = param_2 - fVar8;
        fVar6 = (float)Transform_InverseTransformDirection_0x6000f74(fVar6 - fVar7,lVar3,0);
      }
      if (_UNK_0116c200 <= param_3 * param_3 + fVar6 * fVar6 + param_2 * param_2) {
        uVar5 = *(undefined8 *)(param_4 + 0xd0);
        fVar6 = (float)func_0x05afb2e0(param_2,fVar6);
        if (*(int *)(*(long *)PTR_DAT_05e631d8 + 0xe4) == 0) {
          func_0x029f5bd0();
        }
        Cat_ApplyHandZ(fVar6 * _UNK_0116c074,uVar5);
        return;
      }
    }
  }
  return;
}

