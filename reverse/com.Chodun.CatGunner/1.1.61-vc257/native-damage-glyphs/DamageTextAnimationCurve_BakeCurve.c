/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2a829ac, Ghidra VA 02b829ac. */

long DamageTextAnimationCurve_BakeCurve(long param_1)

{
  undefined *puVar1;
  int iVar2;
  long lVar3;
  ulong uVar4;
  undefined4 uVar5;
  
  puVar1 = PTR_DAT_05e5d5e8;
  if ((bRam000000000625b8df & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5d5e8);
    bRam000000000625b8df = 1;
  }
  lVar3 = func_0x029f5b40(*(undefined8 *)puVar1,0x41);
  if ((param_1 != 0) && (iVar2 = AnimationCurve_get_length_0x6000201(param_1,0), iVar2 != 0)) {
    uVar4 = 0;
    do {
      uVar5 = AnimationCurve_Evaluate_0x60001f7((float)(int)uVar4 / 64.0,param_1,0);
      if (lVar3 == 0) {
                    /* WARNING: Subroutine does not return */
        Throw_NullReference_Wrapper();
      }
      if (*(uint *)(lVar3 + 0x18) <= uVar4) {
                    /* WARNING: Subroutine does not return */
        Throw_Index_Wrapper();
      }
      *(undefined4 *)(lVar3 + 0x20 + uVar4 * 4) = uVar5;
      uVar4 = uVar4 + 1;
    } while (uVar4 != 0x41);
  }
  return lVar3;
}

