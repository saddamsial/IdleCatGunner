/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b61768, Ghidra VA 02c61768. */

void Fish_Item_UpdateFlip(long param_1)

{
  undefined *puVar1;
  undefined *puVar2;
  ulong uVar3;
  undefined4 *puVar4;
  undefined8 uVar5;
  long lVar6;
  undefined4 uVar7;
  undefined4 uVar8;
  undefined4 uVar9;
  
  puVar2 = PTR_DAT_05e591c0;
  if ((bRam000000000625c223 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e591c0);
    bRam000000000625c223 = 1;
  }
  uVar5 = *(undefined8 *)(param_1 + 0x58);
  if (*(int *)(*(long *)puVar2 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  uVar3 = Object_op_Equality_0x6000dec(uVar5,0,0);
  if ((uVar3 & 1) != 0) {
    return;
  }
  if (*(float *)(param_1 + 0xb4) <= 0.0) {
    if (0.0 <= *(float *)(param_1 + 0xb4)) {
      return;
    }
    if (*(long *)(param_1 + 0x58) != 0) {
      Transform_set_localEulerAngles_0x6000f54(0,0x43340000,0,*(long *)(param_1 + 0x58),0);
      uVar5 = *(undefined8 *)(param_1 + 0x30);
      if (*(int *)(*(long *)puVar2 + 0xe4) == 0) {
        func_0x029f5bd0();
      }
      uVar3 = Object_op_Inequality_0x6000ded(uVar5,0,0);
      if ((uVar3 & 1) == 0) {
        return;
      }
      lVar6 = *(long *)(param_1 + 0x30);
      if (lVar6 != 0) {
        uVar7 = 0;
        uVar9 = 0;
        uVar8 = 0x43340000;
        goto LAB_02c618f8;
      }
    }
  }
  else {
    lVar6 = *(long *)(param_1 + 0x58);
    if (cRam000000000625b26f == '\0') {
      func_0x029f5a50(PTR_DAT_05e58bf8);
      cRam000000000625b26f = '\x01';
    }
    puVar1 = PTR_DAT_05e58bf8;
    if (lVar6 != 0) {
      puVar4 = *(undefined4 **)(*(long *)PTR_DAT_05e58bf8 + 0xb8);
      Transform_set_localEulerAngles_0x6000f54(*puVar4,puVar4[1],puVar4[2],lVar6,0);
      uVar5 = *(undefined8 *)(param_1 + 0x30);
      if (*(int *)(*(long *)puVar2 + 0xe4) == 0) {
        func_0x029f5bd0();
      }
      uVar3 = Object_op_Inequality_0x6000ded(uVar5,0,0);
      if ((uVar3 & 1) == 0) {
        return;
      }
      lVar6 = *(long *)(param_1 + 0x30);
      if (cRam000000000625b26f == '\0') {
        func_0x029f5a50(PTR_DAT_05e58bf8);
        cRam000000000625b26f = '\x01';
      }
      if (lVar6 != 0) {
        puVar4 = *(undefined4 **)(*(long *)puVar1 + 0xb8);
        uVar7 = *puVar4;
        uVar8 = puVar4[1];
        uVar9 = puVar4[2];
LAB_02c618f8:
        Transform_set_localEulerAngles_0x6000f54(uVar7,uVar8,uVar9,lVar6,0);
        return;
      }
    }
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

