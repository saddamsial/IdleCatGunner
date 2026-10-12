/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2a80354, Ghidra VA 02b80354. */

undefined8
Gamemanager_CanSpawnText(float param_1,float param_2,undefined1 param_3 [16],float param_4)

{
  ulong uVar1;
  ulong uVar2;
  undefined *puVar3;
  long lVar4;
  ulong uVar5;
  undefined8 uVar6;
  float fVar7;
  double dVar8;
  double dVar9;
  double dVar10;
  float fStack_4c;
  double dStack_48;
  
  if ((bRam000000000625b8c9 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5d588);
    func_0x029f5a50(PTR_DAT_05e5d590);
    func_0x029f5a50(PTR_DAT_05e5d338);
    bRam000000000625b8c9 = 1;
  }
  fStack_4c = 0.0;
  if (cRam000000000625b95a == '\0') {
    func_0x029f5a50(PTR_DAT_05e59000);
    cRam000000000625b95a = '\x01';
  }
  puVar3 = PTR_DAT_05e59000;
  if (*(int *)(*(long *)PTR_DAT_05e59000 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  dVar10 = (double)(param_1 / 1.5);
  dVar8 = (double)func_0x05afb230(dVar10,&dStack_48);
  if (0.0 <= param_1 / 1.5) {
    if (dVar8 == 0.5) {
      dVar8 = 1.0;
      goto LAB_02b80434;
    }
    dVar10 = (double)(long)(dVar10 + 0.5);
  }
  else if (dVar8 == -0.5) {
    dVar8 = -1.0;
LAB_02b80434:
    dVar10 = dStack_48;
    if (((long)dStack_48 & 1U) != 0) {
      dVar10 = dStack_48 + dVar8;
    }
  }
  else {
    dVar10 = (double)(long)(dVar10 + -0.5);
  }
  if (cRam000000000625b95a == '\0') {
    func_0x029f5a50(PTR_DAT_05e59000);
    cRam000000000625b95a = '\x01';
  }
  if (*(int *)(*(long *)puVar3 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  puVar3 = PTR_DAT_05e5d338;
  dVar9 = (double)(param_2 / 1.5);
  dVar8 = (double)func_0x05afb230(dVar9,&dStack_48);
  if (0.0 <= param_2 / 1.5) {
    if (dVar8 == 0.5) {
      dVar8 = 1.0;
      goto LAB_02b804e0;
    }
    dVar9 = (double)(long)(dVar9 + 0.5);
  }
  else if (dVar8 == -0.5) {
    dVar8 = -1.0;
LAB_02b804e0:
    dVar9 = dStack_48;
    if (((long)dStack_48 & 1U) != 0) {
      dVar9 = dStack_48 + dVar8;
    }
  }
  else {
    dVar9 = (double)(long)(dVar9 + -0.5);
  }
  fVar7 = (float)Time_get_time_0x6000ee1(0);
  lVar4 = *(long *)puVar3;
  if (*(int *)(lVar4 + 0xe4) == 0) {
    func_0x029f5bd0();
    lVar4 = *(long *)puVar3;
  }
  lVar4 = *(long *)(*(long *)(lVar4 + 0xb8) + 0x178);
  uVar1 = 0x8000000000000000;
  if (dVar9 != INFINITY) {
    uVar1 = (ulong)(uint)(int)dVar9 << 0x20;
  }
  uVar2 = 0x80000000;
  if (dVar10 != INFINITY) {
    uVar2 = (ulong)(uint)(int)dVar10;
  }
  if (lVar4 == 0) {
LAB_02b805e4:
                    /* WARNING: Subroutine does not return */
    Throw_NullReference_Wrapper();
  }
  uVar5 = func_0x03eabd80(lVar4,uVar1 | uVar2,&fStack_4c,*(undefined8 *)PTR_DAT_05e5d588);
  if (((uVar5 & 1) == 0) || (param_4 <= fVar7 - fStack_4c)) {
    lVar4 = *(long *)puVar3;
    if (*(int *)(lVar4 + 0xe4) == 0) {
      func_0x029f5bd0();
      lVar4 = *(long *)puVar3;
    }
    lVar4 = *(long *)(*(long *)(lVar4 + 0xb8) + 0x178);
    if (lVar4 == 0) goto LAB_02b805e4;
    func_0x03eaa2e0(fVar7,lVar4,uVar1 | uVar2,*(undefined8 *)PTR_DAT_05e5d590);
    uVar6 = 1;
  }
  else {
    uVar6 = 0;
  }
  return uVar6;
}

