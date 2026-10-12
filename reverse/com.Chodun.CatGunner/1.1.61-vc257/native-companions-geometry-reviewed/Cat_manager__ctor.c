/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b44a0c, Ghidra VA 02c44a0c. */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void Cat_manager__ctor(long param_1)

{
  undefined8 uVar1;
  undefined8 uVar2;
  undefined *puVar3;
  undefined8 uVar4;
  long lVar5;
  
  puVar3 = PTR_DAT_05e5c9e8;
  if ((bRam000000000625c0cc & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5c9e8);
    bRam000000000625c0cc = 1;
  }
  uVar2 = _UNK_01170ac0;
  uVar1 = _UNK_0116c2a0;
  uVar4 = *(undefined8 *)puVar3;
  *(undefined8 *)(param_1 + 0x38) = _UNK_0116c2a8;
  *(undefined8 *)(param_1 + 0x30) = uVar1;
  *(undefined8 *)(param_1 + 0x40) = uVar2;
  lVar5 = func_0x029f5b40(uVar4,2);
  uVar1 = _UNK_0116f9e0;
  if (lVar5 != 0) {
    if (*(int *)(lVar5 + 0x18) != 0) {
      *(undefined4 *)(lVar5 + 0x28) = 0xc0c00000;
      *(undefined8 *)(lVar5 + 0x20) = uVar1;
      if (*(int *)(lVar5 + 0x18) != 1) {
        *(undefined4 *)(lVar5 + 0x34) = 0xc0c00000;
        *(undefined8 *)(lVar5 + 0x2c) = _UNK_01170000;
        *(long *)(param_1 + 0x48) = lVar5;
        Managed_WriteBarrier();
        MonoBehaviour__ctor_0x6000d5a(param_1,0);
        return;
      }
    }
                    /* WARNING: Subroutine does not return */
    Throw_Index_Wrapper();
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

