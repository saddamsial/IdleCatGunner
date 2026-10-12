/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x4554dc0, Ghidra VA 04654dc0. */

ulong InfVal__ctor_0x6000028(undefined8 *param_1,long param_2,ulong param_3)

{
  uint uVar1;
  long lVar2;
  undefined *puVar3;
  int iVar4;
  int iVar5;
  int iVar6;
  ulong uVar7;
  undefined8 uVar8;
  undefined8 uVar9;
  undefined8 uVar10;
  long *plVar11;
  ulong uStack_28;
  
  uStack_28 = param_3;
  if ((bRam00000000062609da & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5a298);
    func_0x029f5a50(PTR_DAT_05e66730);
    bRam00000000062609da = 1;
  }
  param_1[1] = 0;
  *param_1 = 0;
  param_1[3] = 0;
  param_1[2] = 0;
  uVar7 = InfVal_set_digits_0x6000094
                    (param_1,*(undefined8 *)(param_2 + 0x10),*(undefined8 *)(param_2 + 0x18));
  *(undefined4 *)(param_1 + 1) = *(undefined4 *)(param_2 + 8);
  puVar3 = PTR_DAT_05e66730;
  if ((param_3 & 0xff) != 0) {
    iVar4 = func_0x035f6da8(&uStack_28,*(undefined8 *)PTR_DAT_05e66730);
    if (iVar4 < 1) {
      func_0x029f5a64(PTR_DAT_05e65dc8);
      uVar8 = func_0x029f5cec();
      uVar9 = func_0x029f5a64(PTR_DAT_05e71960);
      uVar10 = func_0x029f5a64(PTR_DAT_05e71968);
      ArgumentException__ctor_0x60003e7(uVar8,uVar9,uVar10,0);
      uVar9 = func_0x029f5a64(PTR_DAT_05e71970);
      plVar11 = (long *)func_0x029f5bc0(uVar8,uVar9);
      uVar7 = InfVal_get_isZero_0x6000099();
      puVar3 = PTR_DAT_05e5e048;
      if (((uVar7 & 1) == 0) || (0 < (int)plVar11[1])) {
        if ((bRam0000000006260a1d & 1) == 0) {
          func_0x029f5a50(PTR_DAT_05e5e048);
          bRam0000000006260a1d = 1;
        }
        lVar2 = *(long *)puVar3;
        if (*plVar11 != 0) {
          lVar2 = *plVar11;
        }
        if (lVar2 == 0) {
                    /* WARNING: Subroutine does not return */
          Throw_NullReference_Wrapper();
        }
        iVar4 = *(int *)(lVar2 + 0x10);
        iVar5 = InfVal_get_sign_0x600009d(plVar11);
        uVar1 = iVar4 + (iVar5 >> 0x1f);
      }
      else {
        uVar1 = 1 - (int)plVar11[1];
      }
      return (ulong)uVar1;
    }
    iVar4 = *(int *)(param_1 + 1);
    iVar5 = InfVal_get_precision_0x6000097(param_1);
    iVar6 = func_0x035f6da8(&uStack_28,*(undefined8 *)puVar3);
    uVar7 = InfVal_set_exponent_0x6000096(param_1,(iVar5 + iVar4) - iVar6);
  }
  return uVar7;
}

