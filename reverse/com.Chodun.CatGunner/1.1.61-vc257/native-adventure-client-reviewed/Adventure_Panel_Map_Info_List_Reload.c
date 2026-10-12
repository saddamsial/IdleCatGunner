/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b33e70, Ghidra VA 02c33e70. */

void Adventure_Panel_Map_Info_List_Reload(long param_1,uint param_2)

{
  long *plVar1;
  long lVar2;
  ulong uVar3;
  
  if (*(long *)(param_1 + 0x48) != 0) {
    GameObject_SetActive_0x6000cfe(*(long *)(param_1 + 0x48),1,0);
    lVar2 = *(long *)(param_1 + 0x58);
    if (lVar2 != 0) {
      uVar3 = 0;
      do {
        if ((int)*(uint *)(lVar2 + 0x18) <= (int)(uint)uVar3) {
          lVar2 = *(long *)(param_1 + 0x78);
          if (lVar2 != 0) {
            if (*(uint *)(lVar2 + 0x18) <= param_2) {
LAB_02c33f1c:
                    /* WARNING: Subroutine does not return */
              Throw_Index_Wrapper();
            }
            plVar1 = *(long **)(param_1 + 0x70);
            if (plVar1 != (long *)0x0) {
              lVar2 = lVar2 + (long)(int)param_2 * 0x10;
                    /* WARNING: Could not recover jumptable at 0x02c33f18. Too many branches */
                    /* WARNING: Treating indirect jump as call */
              (**(code **)(*plVar1 + 0x2a8))
                        (*(undefined4 *)(lVar2 + 0x20),*(undefined4 *)(lVar2 + 0x24),
                         *(undefined4 *)(lVar2 + 0x28),*(undefined4 *)(lVar2 + 0x2c),plVar1,
                         *(undefined8 *)(*plVar1 + 0x2b0));
              return;
            }
          }
          break;
        }
        if (*(uint *)(lVar2 + 0x18) <= (uint)uVar3) goto LAB_02c33f1c;
        lVar2 = *(long *)(lVar2 + uVar3 * 8 + 0x20);
        if (lVar2 == 0) break;
        Adventure_Map_info_item_Reload(lVar2,param_2,uVar3 & 0xffffffff);
        lVar2 = *(long *)(param_1 + 0x58);
        uVar3 = uVar3 + 1;
      } while (lVar2 != 0);
    }
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

