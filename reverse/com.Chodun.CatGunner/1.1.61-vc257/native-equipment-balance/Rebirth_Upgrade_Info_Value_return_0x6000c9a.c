/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b8742c, Ghidra VA 02c8742c. */

void Rebirth_Upgrade_Info_Value_return_0x6000c9a(undefined8 *param_1,long param_2)

{
  uint uVar1;
  uint uVar2;
  uint uVar3;
  long lVar4;
  undefined8 uVar5;
  undefined8 uVar6;
  undefined8 uVar7;
  
  uVar3 = ObscuredInt_op_Implicit_0x6000412
                    (*(undefined8 *)(param_2 + 0x18),*(undefined8 *)(param_2 + 0x20),0);
  lVar4 = *(long *)(param_2 + 0x30);
  if (lVar4 == 0) {
                    /* WARNING: Subroutine does not return */
    Throw_NullReference_Wrapper();
  }
  uVar2 = *(uint *)(lVar4 + 0x18) - 1;
  uVar1 = uVar3;
  if ((int)uVar2 <= (int)uVar3) {
    uVar1 = uVar2;
  }
  uVar2 = 0;
  if (-1 < (int)uVar3) {
    uVar2 = uVar1;
  }
  if (uVar2 < *(uint *)(lVar4 + 0x18)) {
    lVar4 = lVar4 + (long)(int)uVar2 * 0x20;
    uVar5 = *(undefined8 *)(lVar4 + 0x20);
    uVar7 = *(undefined8 *)(lVar4 + 0x38);
    uVar6 = *(undefined8 *)(lVar4 + 0x30);
    param_1[1] = *(undefined8 *)(lVar4 + 0x28);
    *param_1 = uVar5;
    param_1[3] = uVar7;
    param_1[2] = uVar6;
    return;
  }
                    /* WARNING: Subroutine does not return */
  Throw_Index_Wrapper();
}

