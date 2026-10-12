/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b5ba4c, Ghidra VA 02c5ba4c. */

void Raid_Start_UI_Reload_Boss(long param_1)

{
  uint uVar1;
  uint uVar2;
  undefined *puVar3;
  uint uVar4;
  ulong uVar5;
  long lVar6;
  undefined8 uVar7;
  
  puVar3 = PTR_DAT_05e591c0;
  if ((bRam000000000625c1e0 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e591c0);
    func_0x029f5a50(PTR_DAT_05e5e070);
    bRam000000000625c1e0 = 1;
  }
  uVar7 = *(undefined8 *)(param_1 + 0x70);
  if (*(int *)(*(long *)puVar3 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  uVar5 = Object_op_Equality_0x6000dec(uVar7,0,0);
  if ((((uVar5 & 1) == 0) && (*(long *)(param_1 + 0x78) != 0)) &&
     (*(long *)(*(long *)(param_1 + 0x78) + 0x18) != 0)) {
    if (*(int *)(*(long *)PTR_DAT_05e5e070 + 0xe4) == 0) {
      func_0x029f5bd0();
    }
    uVar4 = Raid_manager_GetBossIndex(0);
    lVar6 = *(long *)(param_1 + 0x78);
    if (lVar6 != 0) {
      uVar2 = *(uint *)(lVar6 + 0x18) - 1;
      uVar1 = uVar4;
      if ((int)uVar2 <= (int)uVar4) {
        uVar1 = uVar2;
      }
      uVar2 = 0;
      if (-1 < (int)uVar4) {
        uVar2 = uVar1;
      }
      if (*(uint *)(lVar6 + 0x18) <= uVar2) {
                    /* WARNING: Subroutine does not return */
        Throw_Index_Wrapper();
      }
      if (*(long *)(param_1 + 0x70) != 0) {
        Image_set_sprite_0x600013f
                  (*(long *)(param_1 + 0x70),*(undefined8 *)(lVar6 + (long)(int)uVar2 * 8 + 0x20),0)
        ;
        return;
      }
    }
                    /* WARNING: Subroutine does not return */
    Throw_NullReference_Wrapper();
  }
  return;
}

