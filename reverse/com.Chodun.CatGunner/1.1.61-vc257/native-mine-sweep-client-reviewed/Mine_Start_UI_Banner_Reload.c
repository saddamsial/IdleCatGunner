/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b4bb74, Ghidra VA 02c4bb74. */

void Mine_Start_UI_Banner_Reload(long param_1)

{
  undefined *puVar1;
  undefined *puVar2;
  byte bVar3;
  uint uVar4;
  ulong uVar5;
  long lVar6;
  undefined8 uVar7;
  
  puVar1 = PTR_DAT_05e591c0;
  if ((bRam000000000625c128 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5dd48);
    func_0x029f5a50(PTR_DAT_05e591c0);
    func_0x029f5a50(PTR_DAT_05e5e0b8);
    func_0x029f5a50(PTR_DAT_05e5d920);
    bRam000000000625c128 = 1;
  }
  uVar7 = *(undefined8 *)(param_1 + 0x60);
  if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  uVar5 = Object_op_Equality_0x6000dec(uVar7,0,0);
  puVar2 = PTR_DAT_05e5dd48;
  if ((uVar5 & 1) != 0) {
    return;
  }
  uVar7 = **(undefined8 **)(*(long *)PTR_DAT_05e5dd48 + 0xb8);
  if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  uVar5 = Object_op_Equality_0x6000dec(uVar7,0,0);
  if ((uVar5 & 1) == 0) {
    lVar6 = **(long **)(*(long *)puVar2 + 0xb8);
    if (lVar6 == 0) goto LAB_02c4bd24;
    uVar7 = *(undefined8 *)(lVar6 + 0x48);
    if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
      func_0x029f5bd0();
    }
    uVar5 = Object_op_Equality_0x6000dec(uVar7,0,0);
    if ((uVar5 & 1) != 0) goto LAB_02c4bc78;
    lVar6 = **(long **)(*(long *)puVar2 + 0xb8);
    if ((lVar6 == 0) || (lVar6 = *(long *)(lVar6 + 0x48), lVar6 == 0)) goto LAB_02c4bd24;
    bVar3 = GameObject_get_activeSelf_0x6000cff(lVar6,0);
    bVar3 = (bVar3 ^ 0xff) & 1;
  }
  else {
LAB_02c4bc78:
    bVar3 = 1;
  }
  puVar1 = PTR_DAT_05e5d920;
  lVar6 = *(long *)PTR_DAT_05e5d920;
  if (*(int *)(lVar6 + 0xe4) == 0) {
    func_0x029f5bd0();
    lVar6 = *(long *)puVar1;
  }
  if ((bVar3 & *(byte *)(*(long *)(lVar6 + 0xb8) + 0xd)) == 0) {
    uVar4 = 0;
  }
  else {
    if (*(int *)(*(long *)PTR_DAT_05e5e0b8 + 0xe4) == 0) {
      func_0x029f5bd0();
    }
    uVar4 = PlusPack_Banner_ShouldShow_0x6000d3e(1,0);
  }
  if (*(long *)(param_1 + 0x60) != 0) {
    GameObject_SetActive_0x6000cfe(*(long *)(param_1 + 0x60),uVar4 & 1,0);
    return;
  }
LAB_02c4bd24:
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

