/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b55e7c, Ghidra VA 02c55e7c. */

void __c__DisplayClass10_0__Sort_Items_b__1(long param_1,uint param_2,uint param_3)

{
  uint uVar1;
  uint uVar2;
  long lVar3;
  uint *puVar4;
  long lVar5;
  uint uStack_44;
  uint uStack_38;
  uint uStack_34;
  
  lVar5 = *(long *)(param_1 + 0x18);
  uStack_38 = 0;
  uStack_44 = 0;
  uStack_34 = param_2;
  if (lVar5 == 0) goto LAB_02c55f80;
  uVar2 = *(uint *)(lVar5 + 0x18);
  if (param_2 < uVar2) {
    uVar1 = __c__DisplayClass10_0__Sort_Items_g__Priority_0
                      (param_1,*(undefined4 *)(lVar5 + (long)(int)param_2 * 4 + 0x20));
    uStack_38 = uVar1;
    if (param_3 < uVar2) {
      uVar2 = __c__DisplayClass10_0__Sort_Items_g__Priority_0
                        (param_1,*(undefined4 *)(lVar5 + (long)(int)param_3 * 4 + 0x20));
      if (uVar1 != uVar2) {
        puVar4 = &uStack_38;
LAB_02c55f5c:
        Int32_CompareTo_0x600080a(puVar4,uVar2,0);
        return;
      }
      if (*(long *)(param_1 + 0x20) != 0) {
        lVar5 = Raid_Mission_manager_Info_return_0x60008b7(*(long *)(param_1 + 0x20),param_2);
        if (*(long *)(param_1 + 0x20) != 0) {
          lVar3 = Raid_Mission_manager_Info_return_0x60008b7(*(long *)(param_1 + 0x20),param_3);
          if (lVar5 == 0) {
            uStack_44 = 0;
          }
          else {
            uStack_44 = *(uint *)(lVar5 + 0x10);
          }
          if (lVar3 == 0) {
            uVar2 = 0;
          }
          else {
            uVar2 = *(uint *)(lVar3 + 0x10);
          }
          if (uStack_44 == uVar2) {
            puVar4 = &uStack_34;
            uVar2 = param_3;
          }
          else {
            puVar4 = &uStack_44;
          }
          goto LAB_02c55f5c;
        }
      }
LAB_02c55f80:
                    /* WARNING: Subroutine does not return */
      Throw_NullReference_Wrapper();
    }
  }
                    /* WARNING: Subroutine does not return */
  Throw_Index_Wrapper();
}

