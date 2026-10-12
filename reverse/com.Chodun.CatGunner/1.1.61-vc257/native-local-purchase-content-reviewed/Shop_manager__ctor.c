/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b9cd08, Ghidra VA 02c9cd08. */

void Shop_manager__ctor(long param_1)

{
  undefined *puVar1;
  undefined *puVar2;
  undefined *puVar3;
  undefined *puVar4;
  undefined *puVar5;
  undefined *puVar6;
  undefined *puVar7;
  undefined *puVar8;
  undefined *puVar9;
  undefined8 uVar10;
  
  puVar9 = PTR_DAT_05e64680;
  puVar8 = PTR_DAT_05e64678;
  puVar7 = PTR_DAT_05e64670;
  puVar6 = PTR_DAT_05e64668;
  puVar5 = PTR_DAT_05e64660;
  puVar4 = PTR_DAT_05e64538;
  puVar3 = PTR_DAT_05e63ef0;
  puVar2 = PTR_DAT_05e5bde8;
  puVar1 = PTR_DAT_05e5bde0;
  if ((bRam000000000625c46b & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e64668);
    func_0x029f5a50(PTR_DAT_05e64680);
    func_0x029f5a50(PTR_DAT_05e64678);
    func_0x029f5a50(PTR_DAT_05e5bde8);
    func_0x029f5a50(PTR_DAT_05e5bde0);
    func_0x029f5a50(PTR_DAT_05e64660);
    func_0x029f5a50(PTR_DAT_05e64538);
    func_0x029f5a50(PTR_DAT_05e64670);
    func_0x029f5a50(PTR_DAT_05e63ef0);
    bRam000000000625c46b = 1;
  }
  *(undefined8 *)(param_1 + 0x30) = *(undefined8 *)puVar3;
  Managed_WriteBarrier();
  uVar10 = func_0x029f5cec(*(undefined8 *)puVar1);
  func_0x042bb9a4(uVar10,*(undefined8 *)puVar2);
  *(undefined8 *)(param_1 + 0x48) = uVar10;
  Managed_WriteBarrier((undefined8 *)(param_1 + 0x48),uVar10);
  uVar10 = func_0x029f5cec(*(undefined8 *)puVar4);
  func_0x0452c340(uVar10,*(undefined8 *)puVar5);
  *(undefined8 *)(param_1 + 0x58) = uVar10;
  Managed_WriteBarrier((undefined8 *)(param_1 + 0x58),uVar10);
  uVar10 = func_0x029f5b40(*(undefined8 *)puVar6,5);
  *(undefined8 *)(param_1 + 0x90) = uVar10;
  Managed_WriteBarrier();
  uVar10 = func_0x029f5b40(*(undefined8 *)puVar7,5);
  *(undefined8 *)(param_1 + 0xb0) = uVar10;
  Managed_WriteBarrier();
  uVar10 = func_0x029f5cec(*(undefined8 *)puVar8);
  func_0x03e45bf8(uVar10,*(undefined8 *)puVar9);
  *(undefined8 *)(param_1 + 0xc0) = uVar10;
  Managed_WriteBarrier((undefined8 *)(param_1 + 0xc0),uVar10);
  MonoBehaviour__ctor_0x6000d5a(param_1,0);
  return;
}

