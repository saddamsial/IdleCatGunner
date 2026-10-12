/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b62104, Ghidra VA 02c62104. */

undefined4 Fish_Item_GetLocalPositionInTank(long param_1,long param_2)

{
  undefined *puVar1;
  ulong uVar2;
  undefined8 uVar3;
  undefined8 *puVar4;
  undefined8 uVar5;
  undefined4 uVar6;
  undefined4 uVar7;
  undefined8 uStack_28;
  
  puVar1 = PTR_DAT_05e591c0;
  if ((bRam000000000625c22e & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e591c0);
    func_0x029f5a50(PTR_DAT_05e5cf00);
    bRam000000000625c22e = 1;
  }
  uVar5 = *(undefined8 *)(param_1 + 0x70);
  uStack_28 = 0;
  if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  uVar2 = Object_op_Equality_0x6000dec(uVar5,0,0);
  if ((uVar2 & 1) == 0) {
    if ((*(long *)(param_1 + 0x70) == 0) || (uVar5 = Fish_Tank_get_TankRect(), param_2 == 0)) {
                    /* WARNING: Subroutine does not return */
      Throw_NullReference_Wrapper();
    }
    uVar6 = *(undefined4 *)(param_2 + 0x104);
    uVar7 = *(undefined4 *)(param_2 + 0x108);
    uVar3 = PointerEventData_get_pressEventCamera_0x600063e(param_2,0);
    if (*(int *)(*(long *)PTR_DAT_05e5cf00 + 0xe4) == 0) {
      func_0x029f5bd0(*(long *)PTR_DAT_05e5cf00);
    }
    puVar4 = &uStack_28;
    RectTransformUtility_ScreenPointToLocalPointInRectangle_0x600004f
              (uVar6,uVar7,uVar5,uVar3,&uStack_28,0);
  }
  else {
    if (cRam000000000625b271 == '\0') {
      func_0x029f5a50(PTR_DAT_05e59608);
      cRam000000000625b271 = '\x01';
    }
    puVar4 = *(undefined8 **)(*(long *)PTR_DAT_05e59608 + 0xb8);
  }
  return *(undefined4 *)puVar4;
}

