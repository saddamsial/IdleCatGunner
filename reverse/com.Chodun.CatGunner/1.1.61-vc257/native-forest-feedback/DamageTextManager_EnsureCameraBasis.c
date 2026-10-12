/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2a8344c, Ghidra VA 02b8344c. */

bool DamageTextManager_EnsureCameraBasis
               (undefined1 param_1 [16],undefined4 param_2,undefined4 param_3,long param_4)

{
  undefined *puVar1;
  undefined *puVar2;
  bool bVar3;
  int iVar4;
  ulong uVar5;
  undefined8 uVar6;
  long lVar7;
  undefined4 uVar8;
  
  if ((bRam000000000625b8e3 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5d6d8);
    func_0x029f5a50(PTR_DAT_05e591c0);
    bRam000000000625b8e3 = 1;
  }
  iVar4 = Time_get_frameCount_0x6000eee(0);
  puVar2 = PTR_DAT_05e5d6d8;
  puVar1 = PTR_DAT_05e591c0;
  if (*(int *)(param_4 + 0x3c) == iVar4) {
    bVar3 = *(char *)(param_4 + 0x58) != '\0';
  }
  else {
    *(int *)(param_4 + 0x3c) = iVar4;
    uVar6 = **(undefined8 **)(*(long *)puVar2 + 0xb8);
    if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
      func_0x029f5bd0(*(long *)puVar1);
    }
    uVar5 = Object_op_Inequality_0x6000ded(uVar6,0,0);
    lVar7 = 0;
    if ((uVar5 & 1) != 0) {
      lVar7 = **(long **)(*(long *)puVar2 + 0xb8);
      if (lVar7 == 0) goto LAB_02b835c0;
      lVar7 = *(long *)(lVar7 + 0x28);
    }
    if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
      func_0x029f5bd0();
    }
    uVar5 = Object_op_Equality_0x6000dec(lVar7,0,0);
    if ((uVar5 & 1) != 0) {
      lVar7 = Camera_get_main_0x60002b1(0);
    }
    if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
      func_0x029f5bd0();
    }
    uVar5 = Object_op_Equality_0x6000dec(lVar7,0,0);
    if ((uVar5 & 1) == 0) {
      if ((lVar7 == 0) || (lVar7 = Component_get_transform_0x6000c82(lVar7,0), lVar7 == 0)) {
LAB_02b835c0:
                    /* WARNING: Subroutine does not return */
        Throw_NullReference_Wrapper();
      }
      uVar8 = Transform_get_right_0x6000f55(lVar7,0);
      *(undefined4 *)(param_4 + 0x40) = uVar8;
      *(undefined4 *)(param_4 + 0x44) = param_2;
      *(undefined4 *)(param_4 + 0x48) = param_3;
      uVar8 = Transform_get_up_0x6000f56(lVar7,0);
      bVar3 = true;
      *(undefined4 *)(param_4 + 0x4c) = uVar8;
      *(undefined4 *)(param_4 + 0x50) = param_2;
      *(undefined4 *)(param_4 + 0x54) = param_3;
      *(undefined1 *)(param_4 + 0x58) = 1;
    }
    else {
      bVar3 = false;
      *(undefined1 *)(param_4 + 0x58) = 0;
    }
  }
  return bVar3;
}

