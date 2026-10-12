/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b628ec, Ghidra VA 02c628ec. */

undefined8 Fish_Tank_get_TankRect(long param_1)

{
  undefined *puVar1;
  ulong uVar2;
  undefined8 *puVar3;
  undefined8 uVar4;
  
  puVar1 = PTR_DAT_05e591c0;
  if ((bRam000000000625c231 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5be98);
    func_0x029f5a50(PTR_DAT_05e591c0);
    bRam000000000625c231 = 1;
  }
  puVar3 = (undefined8 *)(param_1 + 0x60);
  uVar4 = *puVar3;
  if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  uVar2 = Object_op_Equality_0x6000dec(uVar4,0,0);
  if ((uVar2 & 1) != 0) {
    uVar4 = func_0x02fe5f2c(param_1,*(undefined8 *)PTR_DAT_05e5be98);
    *(undefined8 *)(param_1 + 0x60) = uVar4;
    Managed_WriteBarrier(puVar3,uVar4);
  }
  return *puVar3;
}

