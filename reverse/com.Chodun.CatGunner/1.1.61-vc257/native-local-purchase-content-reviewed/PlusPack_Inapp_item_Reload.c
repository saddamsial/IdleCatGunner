/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b91a64, Ghidra VA 02c91a64. */

void PlusPack_Inapp_item_Reload(long param_1)

{
  undefined4 uVar1;
  int iVar2;
  undefined *puVar3;
  undefined *puVar4;
  byte bVar5;
  ulong uVar6;
  undefined8 uVar7;
  
  puVar4 = PTR_DAT_05e5e0b8;
  if ((bRam000000000625c3f9 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e591c0);
    func_0x029f5a50(PTR_DAT_05e5e0b8);
    bRam000000000625c3f9 = 1;
  }
  puVar3 = PTR_DAT_05e591c0;
  uVar1 = *(undefined4 *)(param_1 + 0x20);
  if (*(int *)(*(long *)puVar4 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  bVar5 = PlusPack_Is_Active(uVar1);
  uVar7 = *(undefined8 *)(param_1 + 0x28);
  iVar2 = *(int *)(*(long *)puVar3 + 0xe4);
  *(byte *)(param_1 + 0x40) = bVar5 & 1;
  if (iVar2 == 0) {
    func_0x029f5bd0();
  }
  uVar6 = Object_op_Inequality_0x6000ded(uVar7,0,0);
  if ((uVar6 & 1) != 0) {
    if (*(long *)(param_1 + 0x28) == 0) goto LAB_02c91b64;
    GameObject_SetActive_0x6000cfe(*(long *)(param_1 + 0x28),*(undefined1 *)(param_1 + 0x40),0);
  }
  uVar7 = *(undefined8 *)(param_1 + 0x30);
  if (*(int *)(*(long *)puVar3 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  uVar6 = Object_op_Inequality_0x6000ded(uVar7,0,0);
  if ((uVar6 & 1) != 0) {
    if (*(long *)(param_1 + 0x30) == 0) {
LAB_02c91b64:
                    /* WARNING: Subroutine does not return */
      Throw_NullReference_Wrapper();
    }
    GameObject_SetActive_0x6000cfe(*(long *)(param_1 + 0x30),*(char *)(param_1 + 0x40) == '\0',0);
  }
  PlusPack_Inapp_item_Remain_Reload_0x6000d43(param_1);
  return;
}

