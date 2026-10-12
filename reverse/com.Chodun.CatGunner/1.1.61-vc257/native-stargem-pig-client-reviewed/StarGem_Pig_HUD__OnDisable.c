/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2ba1f10, Ghidra VA 02ca1f10. */

void StarGem_Pig_HUD__OnDisable(undefined8 param_1)

{
  undefined *puVar1;
  undefined *puVar2;
  undefined *puVar3;
  undefined8 uVar4;
  
  puVar3 = PTR_DAT_05e648d8;
  puVar2 = PTR_DAT_05e5e3e0;
  puVar1 = PTR_DAT_05e59288;
  if ((bRam000000000625c48a & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e59288);
    func_0x029f5a50(PTR_DAT_05e648d8);
    func_0x029f5a50(PTR_DAT_05e5e3e0);
    bRam000000000625c48a = 1;
  }
  uVar4 = func_0x029f5cec(*(undefined8 *)puVar1);
  Action__ctor_0x60003a5(uVar4,param_1,*(undefined8 *)puVar3,0);
  if (*(int *)(*(long *)puVar2 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  StarGem_Pig__remove_OnChanged(uVar4);
  return;
}

