/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b91618, Ghidra VA 02c91618. */

long PlusPack_SaveData_return(void)

{
  undefined *puVar1;
  undefined *puVar2;
  long lVar3;
  long lVar4;
  undefined8 uVar5;
  ulong uVar6;
  long lVar7;
  
  puVar1 = PTR_DAT_05e58a90;
  if ((bRam000000000625c3f4 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5e0b8);
    func_0x029f5a50(PTR_DAT_05e58a90);
    bRam000000000625c3f4 = 1;
  }
  puVar2 = PTR_DAT_05e5e0b8;
  lVar3 = func_0x029f5b40(*(undefined8 *)puVar1,3);
  uVar6 = 0;
  lVar7 = 0x20;
  while( true ) {
    lVar4 = *(long *)puVar2;
    if (*(int *)(lVar4 + 0xe4) == 0) {
      func_0x029f5bd0();
      lVar4 = *(long *)puVar2;
    }
    lVar4 = *(long *)(*(long *)(lVar4 + 0xb8) + 8);
    if (lVar4 == 0) break;
    if (*(uint *)(lVar4 + 0x18) <= uVar6) {
LAB_02c916fc:
                    /* WARNING: Subroutine does not return */
      Throw_Index_Wrapper();
    }
    uVar5 = LoadData_ToStringSafe_0x600047f(*(undefined8 *)(lVar4 + lVar7),0,0);
    if (lVar3 == 0) break;
    if (*(uint *)(lVar3 + 0x18) <= uVar6) goto LAB_02c916fc;
    *(undefined8 *)(lVar3 + lVar7) = uVar5;
    Managed_WriteBarrier(lVar3 + lVar7,uVar5);
    uVar6 = uVar6 + 1;
    lVar7 = lVar7 + 8;
    if (uVar6 == 3) {
      return lVar3;
    }
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

