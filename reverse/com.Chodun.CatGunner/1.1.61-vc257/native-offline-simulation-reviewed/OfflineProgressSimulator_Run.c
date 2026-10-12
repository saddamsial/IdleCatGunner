/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b06a14, Ghidra VA 02c06a14. */

undefined8 OfflineProgressSimulator_Run(undefined4 param_1,undefined4 param_2,undefined8 param_3)

{
  undefined *puVar1;
  undefined *puVar2;
  undefined *puVar3;
  long lVar4;
  undefined8 uVar5;
  long *plVar6;
  undefined8 *puVar7;
  ulong uVar8;
  int *piVar9;
  undefined8 *puVar10;
  
  puVar1 = PTR_DAT_05e62048;
  if ((bRam000000000625be7d & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e62050);
    func_0x029f5a50(PTR_DAT_05e591f0);
    func_0x029f5a50(PTR_DAT_05e62040);
    func_0x029f5a50(PTR_DAT_05e62058);
    func_0x029f5a50(PTR_DAT_05e62048);
    bRam000000000625be7d = 1;
  }
  lVar4 = func_0x029f5cec(*(undefined8 *)puVar1);
  Object__ctor_0x600100e(lVar4,0);
  puVar3 = PTR_DAT_05e62058;
  puVar2 = PTR_DAT_05e62050;
  puVar1 = PTR_DAT_05e62040;
  if (lVar4 != 0) {
    puVar10 = (undefined8 *)(lVar4 + 0x10);
    *puVar10 = 0;
    Managed_WriteBarrier(puVar10,0);
    uVar5 = func_0x029f5cec(*(undefined8 *)puVar2);
    func_0x03d323cc(uVar5,lVar4,*(undefined8 *)puVar3,0);
    if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
      func_0x029f5bd0();
    }
    plVar6 = (long *)OfflineProgressSimulator_RunCoroutine
                               (param_1,param_2,0x404e000000000000,param_3,uVar5);
    puVar1 = PTR_DAT_05e591f0;
    if (plVar6 != (long *)0x0) {
      do {
        lVar4 = *plVar6;
        uVar8 = (ulong)*(ushort *)(lVar4 + 0x12e);
        if (uVar8 != 0) {
          piVar9 = (int *)(*(long *)(lVar4 + 0xb0) + 8);
          do {
            if (*(long *)(piVar9 + -2) == *(long *)puVar1) {
              puVar7 = (undefined8 *)(lVar4 + (long)*piVar9 * 0x10 + 0x138);
              goto LAB_02c06b74;
            }
            uVar8 = uVar8 - 1;
            piVar9 = piVar9 + 4;
          } while (uVar8 != 0);
        }
        puVar7 = (undefined8 *)func_0x02a2ed2c(plVar6,*(long *)puVar1,0);
LAB_02c06b74:
        uVar8 = (*(code *)*puVar7)(plVar6,puVar7[1]);
        if ((uVar8 & 1) == 0) {
          return *puVar10;
        }
      } while( true );
    }
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

