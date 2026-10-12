/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b7c0ec, Ghidra VA 02c7c0ec. */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void Pet_Ingame_manager__ctor(long param_1)

{
  undefined8 uVar1;
  undefined8 uVar2;
  undefined8 uVar3;
  undefined8 uVar4;
  undefined8 uVar5;
  
  uVar5 = _UNK_0116ea00;
  uVar4 = _UNK_0116e858;
  uVar3 = _UNK_0116e850;
  uVar2 = _UNK_0116e5f8;
  uVar1 = _UNK_0116e5f0;
  *(undefined8 *)(param_1 + 0x30) = _UNK_0116ea08;
  *(undefined8 *)(param_1 + 0x28) = uVar5;
  *(undefined8 *)(param_1 + 0x40) = uVar2;
  *(undefined8 *)(param_1 + 0x38) = uVar1;
  *(undefined8 *)(param_1 + 0x50) = uVar4;
  *(undefined8 *)(param_1 + 0x48) = uVar3;
  MonoBehaviour__ctor_0x6000d5a(param_1,0);
  return;
}

