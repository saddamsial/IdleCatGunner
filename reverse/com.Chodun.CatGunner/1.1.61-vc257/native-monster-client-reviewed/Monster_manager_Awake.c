/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b4d4c4, Ghidra VA 02c4d4c4. */

void Monster_manager_Awake(long param_1)

{
  undefined *puVar1;
  undefined *puVar2;
  undefined *puVar3;
  long lVar4;
  long *plVar5;
  undefined8 uVar6;
  
  puVar1 = PTR_DAT_05e5dd58;
  if ((bRam000000000625c136 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e634c8);
    func_0x029f5a50(PTR_DAT_05e634d0);
    func_0x029f5a50(PTR_DAT_05e5dd58);
    bRam000000000625c136 = 1;
  }
  puVar3 = PTR_DAT_05e634d0;
  puVar2 = PTR_DAT_05e634c8;
  lVar4 = *(long *)puVar1;
  if (*(int *)(lVar4 + 0xe4) == 0) {
    func_0x029f5bd0();
    lVar4 = *(long *)puVar1;
  }
  plVar5 = (long *)(*(long *)(lVar4 + 0xb8) + 8);
  *plVar5 = param_1;
  Managed_WriteBarrier(plVar5,param_1);
  uVar6 = func_0x029f5cec(*(undefined8 *)puVar3);
  func_0x0452c340(uVar6,*(undefined8 *)puVar2);
  *(undefined8 *)(param_1 + 0x178) = uVar6;
  Managed_WriteBarrier(param_1 + 0x178,uVar6);
  return;
}

