/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b30f64, Ghidra VA 02c30f64. */

void Relic_Item_Demo_Reload(long param_1,long param_2)

{
  undefined4 uVar1;
  undefined *puVar2;
  undefined8 uVar3;
  long lVar4;
  uint uVar5;
  long lVar6;
  
  if ((bRam000000000625c03c & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5dd28);
    bRam000000000625c03c = 1;
  }
  *(long *)(param_1 + 0x20) = param_2;
  Managed_WriteBarrier((long *)(param_1 + 0x20),param_2);
  puVar2 = PTR_DAT_05e5dd28;
  lVar4 = *(long *)(param_1 + 0x28);
  if (lVar4 != 0) {
    lVar6 = 0;
    while( true ) {
      uVar5 = (uint)lVar6;
      if ((int)*(uint *)(lVar4 + 0x18) <= (int)uVar5) break;
      if (*(uint *)(lVar4 + 0x18) <= uVar5) goto LAB_02c31080;
      if ((param_2 == 0) || (lVar4 = *(long *)(lVar4 + lVar6 * 8 + 0x20), lVar4 == 0))
      goto LAB_02c31004;
      GameObject_SetActive_0x6000cfe(lVar4,uVar5 == *(uint *)(param_2 + 0x10),0);
      lVar4 = *(long *)(param_1 + 0x28);
      lVar6 = lVar6 + 1;
      if (lVar4 == 0) goto LAB_02c31004;
    }
    if (param_2 != 0) {
      lVar4 = *(long *)(param_1 + 0x30);
      uVar1 = *(undefined4 *)(param_2 + 0x14);
      if (*(int *)(*(long *)puVar2 + 0xe4) == 0) {
        func_0x029f5bd0();
      }
      uVar3 = Adventure_manager_Core_sprite_return_0x600062e(uVar1,0);
      if (lVar4 != 0) {
        Image_set_sprite_0x600013f(lVar4,uVar3,0);
        lVar4 = *(long *)(param_1 + 0x40);
        if (lVar4 != 0) {
          if (*(uint *)(lVar4 + 0x18) <= *(uint *)(param_2 + 0x14)) {
LAB_02c31080:
                    /* WARNING: Subroutine does not return */
            Throw_Index_Wrapper();
          }
          if (*(long *)(param_1 + 0x38) != 0) {
            Image_set_sprite_0x600013f
                      (*(long *)(param_1 + 0x38),
                       *(undefined8 *)(lVar4 + (long)(int)*(uint *)(param_2 + 0x14) * 8 + 0x20),0);
            return;
          }
        }
      }
    }
  }
LAB_02c31004:
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

