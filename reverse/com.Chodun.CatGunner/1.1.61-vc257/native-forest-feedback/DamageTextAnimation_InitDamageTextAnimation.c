/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2a82b18, Ghidra VA 02b82b18. */

void DamageTextAnimation_InitDamageTextAnimation(long param_1,long param_2)

{
  undefined4 uVar1;
  uint uVar2;
  long lVar3;
  
  lVar3 = *(long *)(param_1 + 0x40);
  if (lVar3 != 0) {
    if (*(long *)(lVar3 + 0x18) == 0) {
      return;
    }
    uVar2 = Random_Range_0x6000ba7(0,*(long *)(lVar3 + 0x18),0);
    if (*(uint *)(lVar3 + 0x18) <= uVar2) {
                    /* WARNING: Subroutine does not return */
      Throw_Index_Wrapper();
    }
    lVar3 = *(long *)(lVar3 + (long)(int)uVar2 * 8 + 0x20);
    if (lVar3 != 0) {
      if (*(char *)(lVar3 + 0x30) == '\0') {
        DamageTextAnimationCurve_Bake_0x60000c7(lVar3);
      }
      if (param_2 != 0) {
        uVar1 = *(undefined4 *)(param_1 + 0x24);
        *(long *)(param_2 + 0x68) = lVar3;
        *(undefined4 *)(param_2 + 0x58) = uVar1;
        Managed_WriteBarrier((long *)(param_2 + 0x68),lVar3);
        *(undefined4 *)(param_2 + 0x60) = *(undefined4 *)(param_1 + 0x20);
        return;
      }
    }
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

