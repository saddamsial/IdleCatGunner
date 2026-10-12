/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2ba2178, Ghidra VA 02ca2178. */

void StarGem_Pig_UI__OnDisable(undefined8 param_1)

{
  undefined *puVar1;
  undefined *puVar2;
  undefined *puVar3;
  undefined *puVar4;
  undefined8 uVar5;
  
  puVar4 = PTR_DAT_05e648e0;
  puVar3 = PTR_DAT_05e5e3e0;
  puVar1 = PTR_DAT_05e59288;
  if ((bRam000000000625c48e & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e59288);
    func_0x029f5a50(PTR_DAT_05e5d920);
    func_0x029f5a50(PTR_DAT_05e648e0);
    func_0x029f5a50(PTR_DAT_05e5e3e0);
    bRam000000000625c48e = 1;
  }
  puVar2 = PTR_DAT_05e5d920;
  uVar5 = func_0x029f5cec(*(undefined8 *)puVar1);
  Action__ctor_0x60003a5(uVar5,param_1,*(undefined8 *)puVar4,0);
  if (*(int *)(*(long *)puVar3 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  StarGem_Pig__remove_OnChanged(uVar5);
  uVar5 = func_0x029f5cec(*(undefined8 *)puVar1);
  Action__ctor_0x60003a5(uVar5,param_1,*(undefined8 *)puVar4,0);
  if (*(int *)(*(long *)puVar2 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  Shop_manager_remove_OnProductsReady_0x6000dbb(uVar5,0);
  return;
}

