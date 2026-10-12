/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2ba260c, Ghidra VA 02ca260c. */

void StarGem_Pig_UI___cctor(void)

{
  undefined *puVar1;
  undefined *puVar2;
  undefined *puVar3;
  long lVar4;
  undefined8 uVar5;
  undefined8 *puVar6;
  
  puVar1 = PTR_DAT_05e58a90;
  if ((bRam000000000625c493 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5d790);
    func_0x029f5a50(PTR_DAT_05e648b8);
    func_0x029f5a50(PTR_DAT_05e58a90);
    func_0x029f5a50(PTR_DAT_05e648f0);
    func_0x029f5a50(PTR_DAT_05e648f8);
    func_0x029f5a50(PTR_DAT_05e64900);
    func_0x029f5a50(PTR_DAT_05e64908);
    bRam000000000625c493 = 1;
  }
  lVar4 = func_0x029f5b40(*(undefined8 *)puVar1,3);
  if (lVar4 != 0) {
    if (*(int *)(lVar4 + 0x18) != 0) {
      *(undefined8 *)(lVar4 + 0x20) = *(undefined8 *)PTR_DAT_05e648f8;
      Managed_WriteBarrier((undefined8 *)(lVar4 + 0x20));
      if ((*(uint *)(lVar4 + 0x18) & 0xfffffffe) != 0) {
        *(undefined8 *)(lVar4 + 0x28) = *(undefined8 *)PTR_DAT_05e64900;
        Managed_WriteBarrier((undefined8 *)(lVar4 + 0x28));
        puVar3 = PTR_DAT_05e648f0;
        puVar2 = PTR_DAT_05e648b8;
        puVar1 = PTR_DAT_05e5d790;
        if (2 < *(uint *)(lVar4 + 0x18)) {
          *(undefined8 *)(lVar4 + 0x30) = *(undefined8 *)PTR_DAT_05e64908;
          Managed_WriteBarrier();
          **(long **)(*(long *)puVar2 + 0xb8) = lVar4;
          Managed_WriteBarrier(*(undefined8 *)(*(long *)puVar2 + 0xb8),lVar4);
          uVar5 = func_0x029f5b40(*(undefined8 *)puVar1,3);
          RuntimeHelpers_InitializeArray_0x6002429(uVar5,*(undefined8 *)puVar3,0);
          puVar6 = (undefined8 *)(*(long *)(*(long *)puVar2 + 0xb8) + 8);
          *puVar6 = uVar5;
          Managed_WriteBarrier(puVar6,uVar5);
          return;
        }
      }
    }
                    /* WARNING: Subroutine does not return */
    Throw_Index_Wrapper();
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

