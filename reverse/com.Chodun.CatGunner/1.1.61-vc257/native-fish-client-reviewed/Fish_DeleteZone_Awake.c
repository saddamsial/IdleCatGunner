/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b5fe7c, Ghidra VA 02c5fe7c. */

void Fish_DeleteZone_Awake(long param_1)

{
  undefined *puVar1;
  undefined *puVar2;
  undefined *puVar3;
  undefined *puVar4;
  undefined8 uVar5;
  ulong uVar6;
  long lVar7;
  undefined8 *puVar8;
  
  puVar4 = PTR_DAT_05e63858;
  puVar3 = PTR_DAT_05e63850;
  puVar2 = PTR_DAT_05e5be98;
  puVar1 = PTR_DAT_05e591c0;
  if ((bRam000000000625c215 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e63858);
    func_0x029f5a50(PTR_DAT_05e5be98);
    func_0x029f5a50(PTR_DAT_05e63850);
    func_0x029f5a50(PTR_DAT_05e63860);
    func_0x029f5a50(PTR_DAT_05e591c0);
    bRam000000000625c215 = 1;
  }
  **(long **)(*(long *)puVar3 + 0xb8) = param_1;
  Managed_WriteBarrier(*(undefined8 *)(*(long *)puVar3 + 0xb8),param_1);
  uVar5 = func_0x02fe5f2c(param_1,*(undefined8 *)puVar2);
  *(undefined8 *)(param_1 + 0x50) = uVar5;
  Managed_WriteBarrier();
  uVar5 = func_0x02fe5f2c(param_1,*(undefined8 *)puVar4);
  puVar8 = (undefined8 *)(param_1 + 0x58);
  *puVar8 = uVar5;
  Managed_WriteBarrier(puVar8,uVar5);
  uVar5 = *puVar8;
  if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  uVar6 = Object_op_Equality_0x6000dec(uVar5,0,0);
  if ((uVar6 & 1) != 0) {
    lVar7 = Component_get_gameObject_0x6000c83(param_1,0);
    if (lVar7 == 0) {
                    /* WARNING: Subroutine does not return */
      Throw_NullReference_Wrapper();
    }
    uVar5 = func_0x030a0224(lVar7,*(undefined8 *)PTR_DAT_05e63860);
    *puVar8 = uVar5;
    Managed_WriteBarrier(puVar8,uVar5);
  }
  Fish_DeleteZone_Hide(param_1);
  return;
}

