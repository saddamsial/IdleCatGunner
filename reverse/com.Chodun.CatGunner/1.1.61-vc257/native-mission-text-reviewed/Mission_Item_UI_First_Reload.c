/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b03d5c, Ghidra VA 02c03d5c. */

void Mission_Item_UI_First_Reload
               (long param_1,undefined4 param_2,undefined4 param_3,undefined8 param_4,
               undefined8 param_5,byte param_6)

{
  undefined8 uVar1;
  long *plVar2;
  undefined4 uStack_34;
  
  *(undefined4 *)(param_1 + 0x20) = param_2;
  *(undefined4 *)(param_1 + 0x24) = param_3;
  plVar2 = *(long **)(param_1 + 0x30);
  *(byte *)(param_1 + 0x28) = param_6;
  uStack_34 = param_3;
  uVar1 = Int32_ToString_0x600080e(&uStack_34,0);
  if (plVar2 != (long *)0x0) {
    (**(code **)(*plVar2 + 0x558))(plVar2,uVar1,*(undefined8 *)(*plVar2 + 0x560));
    plVar2 = *(long **)(param_1 + 0x38);
    if (plVar2 != (long *)0x0) {
      (**(code **)(*plVar2 + 0x558))(plVar2,param_4,*(undefined8 *)(*plVar2 + 0x560));
      plVar2 = *(long **)(param_1 + 0x40);
      if (plVar2 != (long *)0x0) {
        (**(code **)(*plVar2 + 0x558))(plVar2,param_5,*(undefined8 *)(*plVar2 + 0x560));
        if (*(long *)(param_1 + 0x78) != 0) {
          GameObject_SetActive_0x6000cfe(*(long *)(param_1 + 0x78),param_6 & 1,0);
          if (*(long *)(param_1 + 0x80) != 0) {
            GameObject_SetActive_0x6000cfe(*(long *)(param_1 + 0x80),param_6 & 1,0);
            return;
          }
        }
      }
    }
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

