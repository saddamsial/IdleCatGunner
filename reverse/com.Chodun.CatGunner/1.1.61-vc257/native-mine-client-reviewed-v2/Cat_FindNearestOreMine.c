/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b3eb48, Ghidra VA 02c3eb48. */

undefined8 Cat_FindNearestOreMine(long param_1)

{
  undefined *puVar1;
  undefined *puVar2;
  ulong uVar3;
  undefined8 uVar4;
  undefined8 uVar5;
  
  puVar2 = PTR_DAT_05e5dd48;
  puVar1 = PTR_DAT_05e591c0;
  if ((bRam000000000625c095 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5dd48);
    func_0x029f5a50(PTR_DAT_05e591c0);
    bRam000000000625c095 = 1;
  }
  uVar4 = **(undefined8 **)(*(long *)puVar2 + 0xb8);
  if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  uVar3 = Object_op_Equality_0x6000dec(uVar4,0,0);
  uVar5 = 0;
  if ((uVar3 & 1) == 0) {
    uVar5 = Cat_OverlapSphereNearestOre(*(undefined4 *)(param_1 + 0x194),param_1);
    if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
      func_0x029f5bd0(*(long *)puVar1);
    }
    uVar3 = Object_op_Inequality_0x6000ded(uVar5,0,0);
    if ((uVar3 & 1) == 0) {
      uVar5 = Cat_OverlapSphereNearestOre
                        (*(float *)(param_1 + 0x194) * *(float *)(param_1 + 0x198),param_1);
      if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
        func_0x029f5bd0(*(long *)puVar1);
      }
      uVar3 = Object_op_Inequality_0x6000ded(uVar5,0,0);
      if ((uVar3 & 1) == 0) {
        uVar4 = Cat_FindNearestOreFallback(param_1,uVar4);
        return uVar4;
      }
    }
  }
  return uVar5;
}

