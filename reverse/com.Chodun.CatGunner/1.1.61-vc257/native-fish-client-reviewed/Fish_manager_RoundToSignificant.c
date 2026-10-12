/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b5def8, Ghidra VA 02c5def8. */

int Fish_manager_RoundToSignificant(float param_1,int param_2)

{
  int iVar1;
  uint uVar2;
  double dVar3;
  double dVar4;
  double dVar5;
  double dStack_18;
  
  if ((bRam000000000625c1fc & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e59000);
    bRam000000000625c1fc = 1;
  }
  if (param_1 == 0.0) {
    return 0;
  }
  if (*(int *)(*(long *)PTR_DAT_05e59000 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  dVar3 = (double)func_0x05afb300(ABS((double)param_1));
  uVar2 = 0x7fffffff;
  if ((double)(long)dVar3 != INFINITY) {
    uVar2 = ~(int)dVar3;
  }
  dVar3 = (double)Math_Pow_0x60008ae(0x4024000000000000,(double)(int)(uVar2 + param_2),0);
  dVar5 = dVar3 * (double)param_1;
  dVar4 = (double)func_0x05afb230(dVar5,&dStack_18);
  if (0.0 <= dVar5) {
    if (dVar4 == 0.5) {
      dVar4 = 1.0;
      goto LAB_02c5dfd8;
    }
    dVar5 = (double)(long)(dVar5 + 0.5);
  }
  else if (dVar4 == -0.5) {
    dVar4 = -1.0;
LAB_02c5dfd8:
    dVar5 = dStack_18;
    if (((long)dStack_18 & 1U) != 0) {
      dVar5 = dStack_18 + dVar4;
    }
  }
  else {
    dVar5 = (double)(long)(dVar5 + -0.5);
  }
  dVar5 = dVar5 / dVar3;
  dVar3 = (double)func_0x05afb230(dVar5,&dStack_18);
  if (0.0 <= dVar5) {
    if (dVar3 != 0.5) {
      dStack_18 = (double)(long)(dVar5 + 0.5);
      goto LAB_02c5e06c;
    }
    dVar3 = 1.0;
  }
  else {
    if (dVar3 != -0.5) {
      dStack_18 = (double)(long)(dVar5 + -0.5);
      goto LAB_02c5e06c;
    }
    dVar3 = -1.0;
  }
  if (((long)dStack_18 & 1U) != 0) {
    dStack_18 = dStack_18 + dVar3;
  }
LAB_02c5e06c:
  iVar1 = -0x80000000;
  if (dStack_18 != INFINITY) {
    iVar1 = (int)dStack_18;
  }
  return iVar1;
}

