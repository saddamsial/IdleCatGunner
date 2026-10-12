/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b887b8, Ghidra VA 02c887b8. */

void Rebirth_Upgrade_Info_Price_return(undefined8 *param_1,long param_2)

{
  undefined *puVar1;
  uint uVar2;
  long lVar3;
  undefined8 uVar4;
  undefined8 uVar5;
  undefined8 uVar6;
  
  puVar1 = PTR_DAT_05e5dd60;
  if ((bRam000000000625c38c & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5dd60);
    bRam000000000625c38c = 1;
  }
  if (**(long **)(*(long *)puVar1 + 0xb8) != 0) {
    lVar3 = *(long *)(**(long **)(*(long *)puVar1 + 0xb8) + 0x28);
    uVar2 = ObscuredInt_op_Implicit_0x6000412
                      (*(undefined8 *)(param_2 + 0x18),*(undefined8 *)(param_2 + 0x20),0);
    if (lVar3 != 0) {
      if (uVar2 < *(uint *)(lVar3 + 0x18)) {
        lVar3 = lVar3 + (long)(int)uVar2 * 0x20;
        uVar4 = *(undefined8 *)(lVar3 + 0x20);
        uVar6 = *(undefined8 *)(lVar3 + 0x38);
        uVar5 = *(undefined8 *)(lVar3 + 0x30);
        param_1[1] = *(undefined8 *)(lVar3 + 0x28);
        *param_1 = uVar4;
        param_1[3] = uVar6;
        param_1[2] = uVar5;
        return;
      }
                    /* WARNING: Subroutine does not return */
      Throw_Index_Wrapper();
    }
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

