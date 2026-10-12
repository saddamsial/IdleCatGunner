/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2a85738, Ghidra VA 02b85738. */

undefined8 DamageTextMeshManager_get_RenderCamera(long param_1)

{
  undefined *puVar1;
  ulong uVar2;
  undefined8 *puVar3;
  undefined8 uVar4;
  
  puVar1 = PTR_DAT_05e591c0;
  if ((bRam000000000625b8f0 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e591c0);
    bRam000000000625b8f0 = 1;
  }
  puVar3 = (undefined8 *)(param_1 + 0x18);
  uVar4 = *puVar3;
  if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  uVar2 = Object_op_Equality_0x6000dec(uVar4,0,0);
  if ((uVar2 & 1) != 0) {
    uVar4 = Camera_get_main_0x60002b1(0);
    *puVar3 = uVar4;
    Managed_WriteBarrier(puVar3,uVar4);
  }
  return *puVar3;
}

