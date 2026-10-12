/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b2fe14, Ghidra VA 02c2fe14. */

void Draw_Relic_Btn_Reload
               (undefined4 param_1,long param_2,ulong param_3,undefined8 param_4,undefined4 param_5)

{
  undefined4 *puVar1;
  undefined4 *puVar2;
  undefined4 *puVar3;
  undefined4 *puVar4;
  long *plVar5;
  undefined8 uVar6;
  undefined4 extraout_s0;
  undefined4 uVar7;
  undefined4 uVar8;
  undefined4 uVar9;
  int iStack_24;
  
  *(undefined4 *)(param_2 + 0x24) = param_5;
  plVar5 = *(long **)(param_2 + 0x30);
  puVar1 = (undefined4 *)(param_2 + 0x48);
  puVar2 = (undefined4 *)(param_2 + 0x4c);
  puVar3 = (undefined4 *)(param_2 + 0x50);
  puVar4 = (undefined4 *)(param_2 + 0x54);
  if ((param_3 & 1) == 0) {
    puVar1 = (undefined4 *)(param_2 + 0x58);
    puVar2 = (undefined4 *)(param_2 + 0x5c);
    puVar3 = (undefined4 *)(param_2 + 0x60);
    puVar4 = (undefined4 *)(param_2 + 100);
  }
  iStack_24 = 0;
  if (plVar5 != (long *)0x0) {
    param_1 = (**(code **)(*plVar5 + 0x2a8))
                        (*puVar1,*puVar2,*puVar3,*puVar4,plVar5,*(undefined8 *)(*plVar5 + 0x2b0));
    if (*(long *)(param_2 + 0x38) != 0) {
      Image_set_sprite_0x600013f(*(long *)(param_2 + 0x38),param_4,0);
      plVar5 = *(long **)(param_2 + 0x40);
      iStack_24 = *(int *)(param_2 + 0x24) * 0x14;
      uVar6 = Int32_ToString_0x600080e(&iStack_24,0);
      param_1 = extraout_s0;
      if (plVar5 != (long *)0x0) {
        (**(code **)(*plVar5 + 0x558))(plVar5,uVar6,*(undefined8 *)(*plVar5 + 0x560));
        uVar9 = 0x3f800000;
        uVar8 = 0x3f800000;
        plVar5 = *(long **)(param_2 + 0x40);
        uVar7 = 0x3f800000;
        param_1 = 0x3f800000;
        if ((param_3 & 1) == 0) {
          param_1 = *(undefined4 *)(param_2 + 0x68);
          uVar7 = *(undefined4 *)(param_2 + 0x6c);
          uVar8 = *(undefined4 *)(param_2 + 0x70);
          uVar9 = *(undefined4 *)(param_2 + 0x74);
        }
        if (plVar5 != (long *)0x0) {
          (**(code **)(*plVar5 + 0x2a8))
                    (param_1,uVar7,uVar8,uVar9,plVar5,*(undefined8 *)(*plVar5 + 0x2b0));
          return;
        }
      }
    }
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper(param_1);
}

