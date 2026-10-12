/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2a82ec4, Ghidra VA 02b82ec4. */

long DamageTextManager_Init(long param_1,long param_2)

{
  uint uVar1;
  undefined *puVar2;
  undefined *puVar3;
  undefined8 uVar4;
  long lVar5;
  long lVar6;
  undefined8 *puVar7;
  uint uVar8;
  long lVar9;
  long *plVar10;
  
  if ((bRam000000000625b8e5 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5d6f0);
    func_0x029f5a50(PTR_DAT_05e5d6f8);
    func_0x029f5a50(PTR_DAT_05e5d700);
    func_0x029f5a50(PTR_DAT_05e5d708);
    bRam000000000625b8e5 = 1;
  }
  if ((*(long *)(param_1 + 0x30) != 0) &&
     (func_0x03e3ffc8(*(long *)(param_1 + 0x30),*(undefined8 *)PTR_DAT_05e5d700), param_2 != 0)) {
    uVar4 = func_0x029f5b40(*(undefined8 *)PTR_DAT_05e5d6f0,*(undefined4 *)(param_2 + 0x18));
    puVar7 = (undefined8 *)(param_1 + 0x28);
    *puVar7 = uVar4;
    lVar5 = Managed_WriteBarrier(puVar7,uVar4);
    puVar3 = PTR_DAT_05e5d708;
    puVar2 = PTR_DAT_05e5d6f8;
    uVar1 = *(uint *)(param_2 + 0x18);
    if (0 < (int)uVar1) {
      uVar8 = 0;
      lVar9 = 0x20;
      do {
        if (uVar1 <= uVar8) {
LAB_02b83048:
                    /* WARNING: Subroutine does not return */
          Throw_Index_Wrapper();
        }
        if ((*(long *)(param_2 + lVar9) == 0) ||
           (lVar5 = *(long *)(*(long *)(param_2 + lVar9) + 0x18), lVar5 == 0)) goto LAB_02b83044;
        plVar10 = (long *)*puVar7;
        lVar5 = func_0x030a02b4(lVar5,*(undefined8 *)puVar3);
        if (plVar10 == (long *)0x0) goto LAB_02b83044;
        if ((lVar5 != 0) &&
           (lVar6 = func_0x029f5bd4(lVar5,*(undefined8 *)(*plVar10 + 0x40)), lVar6 == 0)) {
          uVar4 = func_0x029f5d20();
          func_0x029f5bc0(uVar4,0);
          puVar2 = PTR_DAT_05e5d710;
          if ((bRam000000000625b8f4 & 1) == 0) {
            func_0x029f5a50(PTR_DAT_05e5d710);
            bRam000000000625b8f4 = 1;
          }
          lVar5 = **(long **)(*(long *)puVar2 + 0xb8);
          if (lVar5 == 0) {
            uVar4 = func_0x029f5cec();
            Object__ctor_0x600100e(uVar4,0);
            **(undefined8 **)(*(long *)puVar2 + 0xb8) = uVar4;
            Managed_WriteBarrier(*(undefined8 *)(*(long *)puVar2 + 0xb8),uVar4);
            lVar5 = **(long **)(*(long *)puVar2 + 0xb8);
          }
          return lVar5;
        }
        if (*(uint *)(plVar10 + 3) <= uVar8) goto LAB_02b83048;
        *(long *)((long)plVar10 + lVar9) = lVar5;
        Managed_WriteBarrier((long)plVar10 + lVar9,lVar5);
        if (*(uint *)(param_2 + 0x18) <= uVar8) goto LAB_02b83048;
        if ((*(long *)(param_2 + lVar9) == 0) || (*(long *)(param_1 + 0x30) == 0))
        goto LAB_02b83044;
        lVar5 = func_0x03e3fe40(*(long *)(param_1 + 0x30),
                                *(undefined8 *)(*(long *)(param_2 + lVar9) + 0x10),uVar8,
                                *(undefined8 *)puVar2);
        uVar1 = *(uint *)(param_2 + 0x18);
        uVar8 = uVar8 + 1;
        lVar9 = lVar9 + 8;
      } while ((int)uVar8 < (int)uVar1);
    }
    return lVar5;
  }
LAB_02b83044:
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

