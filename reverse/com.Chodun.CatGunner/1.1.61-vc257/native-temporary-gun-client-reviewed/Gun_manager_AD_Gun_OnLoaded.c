/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b6aa10, Ghidra VA 02c6aa10. */

void Gun_manager_AD_Gun_OnLoaded(long param_1)

{
  uint uVar1;
  long lVar2;
  double dVar3;
  
  uVar1 = *(uint *)(param_1 + 0xc0);
  if (uVar1 != 0xffffffff) {
    if (-1 < (int)uVar1) {
      lVar2 = *(long *)(param_1 + 0x40);
      if (lVar2 == 0) {
                    /* WARNING: Subroutine does not return */
        Throw_NullReference_Wrapper();
      }
      if (((int)uVar1 < *(int *)(lVar2 + 0x18)) &&
         (*(int *)(lVar2 + (ulong)uVar1 * 4 + 0x20) == *(int *)(param_1 + 0xc4))) {
        dVar3 = (double)Gun_manager_get_AD_Gun_RemainSec(param_1);
        if (0.0 < dVar3) {
          return;
        }
        Gun_manager_AdRewardGun_Expire(param_1);
        return;
      }
    }
    *(undefined8 *)(param_1 + 200) = 0;
    *(undefined8 *)(param_1 + 0xc0) = 0xffffffffffffffff;
  }
  return;
}

