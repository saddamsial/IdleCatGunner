/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x4a58204, Ghidra VA 04b58204. */

void Disc_set_AngRadiansEnd(undefined4 param_1,long param_2)

{
  undefined *puVar1;
  long lVar2;
  
  puVar1 = PTR_DAT_05e8e938;
  if ((bRam0000000006263907 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e8e938);
    bRam0000000006263907 = 1;
  }
  lVar2 = *(long *)puVar1;
  if (*(int *)(lVar2 + 0xe4) == 0) {
    func_0x029f5bd0();
    lVar2 = *(long *)puVar1;
  }
  lVar2 = *(long *)(lVar2 + 0xb8);
  *(undefined4 *)(param_2 + 0xe4) = param_1;
  ShapeRenderer_SetFloatNow_0x6000203(param_1,param_2,*(undefined4 *)(lVar2 + 0x90));
  return;
}

