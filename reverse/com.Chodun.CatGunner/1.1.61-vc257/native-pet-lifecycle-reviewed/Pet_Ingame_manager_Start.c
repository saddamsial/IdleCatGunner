/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b7abb0, Ghidra VA 02c7abb0. */

void Pet_Ingame_manager_Start
               (undefined1 param_1 [16],undefined4 param_2,undefined4 param_3,long param_4)

{
  undefined *puVar1;
  long lVar2;
  ulong uVar3;
  undefined4 uVar4;
  
  puVar1 = PTR_DAT_05e591c0;
  if ((bRam000000000625c315 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e591c0);
    bRam000000000625c315 = 1;
  }
  lVar2 = Pet_Ingame_manager_GetMainCat();
  if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
    func_0x029f5bd0(*(long *)puVar1);
  }
  uVar3 = Object_op_Inequality_0x6000ded(lVar2,0,0);
  if ((uVar3 & 1) != 0) {
    if ((lVar2 == 0) || (lVar2 = Component_get_transform_0x6000c82(lVar2,0), lVar2 == 0)) {
                    /* WARNING: Subroutine does not return */
      Throw_NullReference_Wrapper();
    }
    uVar4 = Transform_get_position_0x6000f4d(lVar2,0);
    *(undefined4 *)(param_4 + 0x58) = uVar4;
    *(undefined4 *)(param_4 + 0x5c) = param_2;
    *(undefined4 *)(param_4 + 0x60) = param_3;
  }
  return;
}

