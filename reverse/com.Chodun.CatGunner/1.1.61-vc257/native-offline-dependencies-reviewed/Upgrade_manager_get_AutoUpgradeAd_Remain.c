/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2bb34bc, Ghidra VA 02cb34bc. */

void Upgrade_manager_get_AutoUpgradeAd_Remain(void)

{
  undefined *puVar1;
  undefined *puVar2;
  long lVar3;
  float fVar4;
  float fVar5;
  
  puVar2 = PTR_DAT_05e5d4e8;
  if ((bRam000000000625c568 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5a180);
    func_0x029f5a50(PTR_DAT_05e5d4e8);
    bRam000000000625c568 = 1;
  }
  puVar1 = PTR_DAT_05e5a180;
  lVar3 = *(long *)puVar2;
  if (*(int *)(lVar3 + 0xe4) == 0) {
    func_0x029f5bd0();
    lVar3 = *(long *)puVar2;
  }
  fVar5 = *(float *)(*(long *)(lVar3 + 0xb8) + 0x10);
  if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
    func_0x029f5bd0(*(long *)puVar1);
  }
  fVar4 = 0.0;
  if (0.0 <= fVar5) {
    fVar4 = fVar5;
  }
  TimeSpan_FromSeconds_0x6000a84((double)fVar4,0);
  return;
}

