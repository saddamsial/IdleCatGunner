/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b5c998, Ghidra VA 02c5c998. */

void Enemy_Spawn(long param_1,undefined8 *param_2,undefined8 *param_3)

{
  undefined *puVar1;
  ulong uVar2;
  long lVar3;
  undefined8 uVar4;
  undefined8 uVar5;
  undefined8 uVar6;
  undefined8 uVar7;
  
  puVar1 = PTR_DAT_05e591c0;
  if ((bRam000000000625c1ef & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e591c0);
    bRam000000000625c1ef = 1;
  }
  uVar5 = param_2[1];
  uVar4 = *param_2;
  uVar7 = param_2[3];
  uVar6 = param_2[2];
  *(undefined8 *)(param_1 + 0x30) = uVar5;
  *(undefined8 *)(param_1 + 0x28) = uVar4;
  *(undefined8 *)(param_1 + 0x40) = uVar7;
  *(undefined8 *)(param_1 + 0x38) = uVar6;
  func_0x029f59f4(param_1 + 0x28,0);
  *(undefined8 *)(param_1 + 0x50) = uVar5;
  *(undefined8 *)(param_1 + 0x48) = uVar4;
  *(undefined8 *)(param_1 + 0x60) = uVar7;
  *(undefined8 *)(param_1 + 0x58) = uVar6;
  func_0x029f59f4(param_1 + 0x48,0);
  uVar6 = param_3[1];
  uVar5 = *param_3;
  uVar4 = param_3[2];
  *(undefined8 *)(param_1 + 0x80) = param_3[3];
  *(undefined8 *)(param_1 + 0x78) = uVar4;
  *(undefined8 *)(param_1 + 0x70) = uVar6;
  *(undefined8 *)(param_1 + 0x68) = uVar5;
  func_0x029f59f4(param_1 + 0x68,0);
  uVar4 = *(undefined8 *)(param_1 + 0x88);
  if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  uVar2 = Object_op_Inequality_0x6000ded(uVar4,0,0);
  if ((uVar2 & 1) != 0) {
    if ((*(long *)(param_1 + 0x88) == 0) ||
       (lVar3 = Component_get_gameObject_0x6000c83(*(long *)(param_1 + 0x88),0), lVar3 == 0)) {
                    /* WARNING: Subroutine does not return */
      Throw_NullReference_Wrapper();
    }
    GameObject_SetActive_0x6000cfe(lVar3,0,0);
  }
  *(undefined1 *)(param_1 + 0x24) = 0;
  return;
}

