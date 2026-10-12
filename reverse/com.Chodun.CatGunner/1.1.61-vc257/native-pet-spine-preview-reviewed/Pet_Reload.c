/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b7a740, Ghidra VA 02c7a740. */

void Pet_Reload(long param_1,uint param_2)

{
  undefined *puVar1;
  undefined8 uVar2;
  long lVar3;
  uint uVar4;
  long lVar5;
  
  if ((bRam000000000625c312 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e63d18);
    func_0x029f5a50(PTR_DAT_05e61890);
    bRam000000000625c312 = 1;
  }
  lVar3 = *(long *)(param_1 + 0x30);
  *(uint *)(param_1 + 0x20) = param_2;
  if (lVar3 != 0) {
    if (*(uint *)(lVar3 + 0x18) <= param_2) {
LAB_02c7a858:
                    /* WARNING: Subroutine does not return */
      Throw_Index_Wrapper();
    }
    lVar3 = *(long *)(lVar3 + (long)(int)param_2 * 8 + 0x20);
    if (lVar3 != 0) {
      uVar2 = func_0x030a02b4(lVar3,*(undefined8 *)PTR_DAT_05e63d18);
      *(undefined8 *)(param_1 + 0x38) = uVar2;
      Managed_WriteBarrier((undefined8 *)(param_1 + 0x38),uVar2);
      puVar1 = PTR_DAT_05e61890;
      lVar3 = *(long *)(param_1 + 0x30);
      if (lVar3 != 0) {
        lVar5 = 0;
        do {
          uVar4 = (uint)lVar5;
          if ((int)*(uint *)(lVar3 + 0x18) <= (int)uVar4) {
            *(undefined8 *)(param_1 + 0x68) =
                 **(undefined8 **)(*(long *)(PTR_DAT_05e58a10 + 0x90) + 0xb8);
            Managed_WriteBarrier();
            Pet_SetAnimation(param_1,*(undefined8 *)puVar1);
            return;
          }
          if (*(uint *)(lVar3 + 0x18) <= uVar4) goto LAB_02c7a858;
          lVar3 = *(long *)(lVar3 + lVar5 * 8 + 0x20);
          if (lVar3 == 0) break;
          GameObject_SetActive_0x6000cfe(lVar3,param_2 == uVar4,0);
          lVar3 = *(long *)(param_1 + 0x30);
          lVar5 = lVar5 + 1;
        } while (lVar3 != 0);
      }
    }
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

