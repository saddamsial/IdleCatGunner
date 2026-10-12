/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b8884c, Ghidra VA 02c8884c. */

void Rebirth_Upgrade_Info_Value_return_0x6000c9b(undefined8 *param_1,long param_2,int param_3)

{
  int iVar1;
  long lVar2;
  undefined8 uVar3;
  undefined8 uVar4;
  undefined8 uVar5;
  
  lVar2 = *(long *)(param_2 + 0x30);
  iVar1 = ObscuredInt_op_Implicit_0x6000412
                    (*(undefined8 *)(param_2 + 0x18),*(undefined8 *)(param_2 + 0x20),0);
  if (lVar2 == 0) {
                    /* WARNING: Subroutine does not return */
    Throw_NullReference_Wrapper();
  }
  if ((uint)(iVar1 + param_3) < *(uint *)(lVar2 + 0x18)) {
    lVar2 = lVar2 + (long)(iVar1 + param_3) * 0x20;
    uVar3 = *(undefined8 *)(lVar2 + 0x20);
    uVar5 = *(undefined8 *)(lVar2 + 0x38);
    uVar4 = *(undefined8 *)(lVar2 + 0x30);
    param_1[1] = *(undefined8 *)(lVar2 + 0x28);
    *param_1 = uVar3;
    param_1[3] = uVar5;
    param_1[2] = uVar4;
    return;
  }
                    /* WARNING: Subroutine does not return */
  Throw_Index_Wrapper();
}

