/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b2f3e0, Ghidra VA 02c2f3e0. */

void Adventure_manager__ctor(long param_1)

{
  undefined *puVar1;
  undefined *puVar2;
  undefined8 uVar3;
  long lVar4;
  
  puVar2 = PTR_DAT_05e63018;
  puVar1 = PTR_DAT_05e5d790;
  if ((bRam000000000625c01c & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5d790);
    func_0x029f5a50(PTR_DAT_05e63018);
    func_0x029f5a50(PTR_DAT_05e59050);
    bRam000000000625c01c = 1;
  }
  uVar3 = func_0x029f5b40(*(undefined8 *)puVar1,4);
  *(undefined8 *)(param_1 + 0x28) = uVar3;
  Managed_WriteBarrier();
  uVar3 = func_0x029f5b40(*(undefined8 *)puVar1,5);
  RuntimeHelpers_InitializeArray_0x6002429(uVar3,*(undefined8 *)puVar2,0);
  *(undefined8 *)(param_1 + 0x68) = uVar3;
  Managed_WriteBarrier((undefined8 *)(param_1 + 0x68),uVar3);
  lVar4 = func_0x029f5b40(*(undefined8 *)puVar1,3);
  if (lVar4 != 0) {
    if ((1 < *(uint *)(lVar4 + 0x18)) &&
       (*(undefined4 *)(lVar4 + 0x24) = 2, puVar1 = PTR_DAT_05e59050, *(uint *)(lVar4 + 0x18) != 2))
    {
      *(undefined4 *)(lVar4 + 0x28) = 7;
      *(long *)(param_1 + 0x70) = lVar4;
      Managed_WriteBarrier();
      *(undefined8 *)(param_1 + 0x80) = *(undefined8 *)puVar1;
      Managed_WriteBarrier();
      *(undefined4 *)(param_1 + 0x88) = 0xffffffff;
      MonoBehaviour__ctor_0x6000d5a(param_1,0);
      return;
    }
                    /* WARNING: Subroutine does not return */
    Throw_Index_Wrapper();
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

