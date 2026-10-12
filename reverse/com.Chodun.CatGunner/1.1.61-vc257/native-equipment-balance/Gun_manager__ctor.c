/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b6ac38, Ghidra VA 02c6ac38. */

void Gun_manager__ctor(long param_1)

{
  undefined *puVar1;
  undefined *puVar2;
  undefined *puVar3;
  undefined8 uVar4;
  
  puVar3 = PTR_DAT_05e626b0;
  puVar2 = PTR_DAT_05e5d790;
  puVar1 = PTR_DAT_05e59050;
  if ((bRam000000000625c284 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e626b0);
    func_0x029f5a50(PTR_DAT_05e5d790);
    func_0x029f5a50(PTR_DAT_05e59050);
    bRam000000000625c284 = 1;
  }
  uVar4 = func_0x029f5b40(*(undefined8 *)puVar2,0xd);
  *(undefined8 *)(param_1 + 0x38) = uVar4;
  func_0x029f59f4();
  uVar4 = func_0x029f5b40(*(undefined8 *)puVar2,0x10);
  *(undefined8 *)(param_1 + 0x40) = uVar4;
  func_0x029f59f4();
  uVar4 = func_0x029f5b40(*(undefined8 *)puVar3,0x10);
  *(undefined8 *)(param_1 + 0x60) = uVar4;
  func_0x029f59f4();
  uVar4 = *(undefined8 *)puVar1;
  *(undefined1 *)(param_1 + 0x70) = 1;
  *(undefined4 *)(param_1 + 0x74) = 6;
  *(undefined8 *)(param_1 + 0xb8) = uVar4;
  func_0x029f59f4();
  *(undefined8 *)(param_1 + 0xc0) = 0xffffffffffffffff;
  MonoBehaviour__ctor_0x6000d5a(param_1,0);
  return;
}

