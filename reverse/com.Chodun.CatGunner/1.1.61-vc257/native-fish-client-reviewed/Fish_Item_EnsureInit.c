/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b60a20, Ghidra VA 02c60a20. */

void Fish_Item_EnsureInit(long param_1)

{
  undefined *puVar1;
  undefined *puVar2;
  ulong uVar3;
  undefined8 *puVar4;
  long *plVar5;
  undefined8 uVar6;
  long lVar7;
  
  puVar1 = PTR_DAT_05e591c0;
  if ((bRam000000000625c21d & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e63858);
    func_0x029f5a50(PTR_DAT_05e63870);
    func_0x029f5a50(PTR_DAT_05e63878);
    func_0x029f5a50(PTR_DAT_05e5be98);
    func_0x029f5a50(PTR_DAT_05e63860);
    func_0x029f5a50(PTR_DAT_05e5bd68);
    func_0x029f5a50(PTR_DAT_05e5bd70);
    func_0x029f5a50(PTR_DAT_05e591c0);
    bRam000000000625c21d = 1;
  }
  uVar6 = *(undefined8 *)(param_1 + 0x50);
  if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  puVar2 = PTR_DAT_05e5be98;
  uVar3 = Object_op_Equality_0x6000dec(uVar6,0,0);
  if ((uVar3 & 1) != 0) {
    uVar6 = func_0x02fe5f2c(param_1,*(undefined8 *)puVar2);
    *(undefined8 *)(param_1 + 0x50) = uVar6;
    Managed_WriteBarrier((undefined8 *)(param_1 + 0x50),uVar6);
  }
  uVar6 = *(undefined8 *)(param_1 + 0x20);
  if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  uVar3 = Object_op_Inequality_0x6000ded(uVar6,0,0);
  if ((uVar3 & 1) != 0) {
    puVar4 = (undefined8 *)(param_1 + 0x58);
    uVar6 = *puVar4;
    if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
      func_0x029f5bd0();
    }
    uVar3 = Object_op_Equality_0x6000dec(uVar6,0,0);
    if ((uVar3 & 1) != 0) {
      if (*(long *)(param_1 + 0x20) == 0) goto LAB_02c60d50;
      uVar6 = func_0x02fe5f2c(*(long *)(param_1 + 0x20),*(undefined8 *)puVar2);
      *puVar4 = uVar6;
      Managed_WriteBarrier(puVar4,uVar6);
    }
  }
  plVar5 = (long *)(param_1 + 0x60);
  lVar7 = *plVar5;
  if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  uVar3 = Object_op_Equality_0x6000dec(lVar7,0,0);
  if ((uVar3 & 1) != 0) {
    uVar6 = func_0x02fe5f2c(param_1,*(undefined8 *)PTR_DAT_05e63870);
    *(undefined8 *)(param_1 + 0x60) = uVar6;
    Managed_WriteBarrier(plVar5,uVar6);
    uVar6 = *(undefined8 *)(param_1 + 0x60);
    if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
      func_0x029f5bd0();
    }
    uVar3 = Object_op_Equality_0x6000dec(uVar6,0,0);
    if ((uVar3 & 1) != 0) {
      lVar7 = Component_get_gameObject_0x6000c83(param_1,0);
      if (lVar7 == 0) goto LAB_02c60d50;
      lVar7 = func_0x030a0224(lVar7,*(undefined8 *)PTR_DAT_05e5bd68);
      *plVar5 = lVar7;
      Managed_WriteBarrier(plVar5,lVar7);
    }
    if (*plVar5 == 0) goto LAB_02c60d50;
    Canvas_set_overrideSorting_0x6000068(*plVar5,1,0);
  }
  uVar6 = func_0x02fe5f2c(param_1,*(undefined8 *)PTR_DAT_05e63878);
  if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
    func_0x029f5bd0(*(long *)puVar1);
  }
  uVar3 = Object_op_Equality_0x6000dec(uVar6,0,0);
  if ((uVar3 & 1) != 0) {
    lVar7 = Component_get_gameObject_0x6000c83(param_1,0);
    if (lVar7 == 0) goto LAB_02c60d50;
    func_0x030a0224(lVar7,*(undefined8 *)PTR_DAT_05e5bd70);
  }
  puVar4 = (undefined8 *)(param_1 + 0x68);
  uVar6 = *puVar4;
  if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  uVar3 = Object_op_Equality_0x6000dec(uVar6,0,0);
  if ((uVar3 & 1) != 0) {
    uVar6 = func_0x02fe5f2c(param_1,*(undefined8 *)PTR_DAT_05e63858);
    *(undefined8 *)(param_1 + 0x68) = uVar6;
    Managed_WriteBarrier(puVar4,uVar6);
    uVar6 = *(undefined8 *)(param_1 + 0x68);
    if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
      func_0x029f5bd0();
    }
    uVar3 = Object_op_Equality_0x6000dec(uVar6,0,0);
    if ((uVar3 & 1) != 0) {
      lVar7 = Component_get_gameObject_0x6000c83(param_1,0);
      if (lVar7 != 0) {
        uVar6 = func_0x030a0224(lVar7,*(undefined8 *)PTR_DAT_05e63860);
        *puVar4 = uVar6;
        Managed_WriteBarrier(puVar4);
        return;
      }
LAB_02c60d50:
                    /* WARNING: Subroutine does not return */
      Throw_NullReference_Wrapper();
    }
  }
  return;
}

