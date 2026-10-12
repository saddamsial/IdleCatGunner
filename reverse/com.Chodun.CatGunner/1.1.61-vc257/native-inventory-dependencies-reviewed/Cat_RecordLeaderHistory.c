/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b3a8d0, Ghidra VA 02c3a8d0. */

void Cat_RecordLeaderHistory
               (undefined1 param_1 [16],undefined4 param_2,undefined4 param_3,undefined8 param_4)

{
  undefined *puVar1;
  undefined *puVar2;
  undefined *puVar3;
  long lVar4;
  long lVar5;
  undefined4 uVar6;
  float fVar7;
  float fVar8;
  
  puVar1 = PTR_DAT_05e631d8;
  if ((bRam000000000625c09a & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e631d8);
    func_0x029f5a50(PTR_DAT_05e63208);
    func_0x029f5a50(PTR_DAT_05e63210);
    func_0x029f5a50(PTR_DAT_05e63218);
    func_0x029f5a50(PTR_DAT_05e63220);
    bRam000000000625c09a = 1;
  }
  lVar4 = *(long *)puVar1;
  if (*(int *)(lVar4 + 0xe4) == 0) {
    func_0x029f5bd0();
    lVar4 = *(long *)puVar1;
  }
  lVar5 = *(long *)(*(long *)(lVar4 + 0xb8) + 0x70);
  lVar4 = Component_get_transform_0x6000c82(param_4,0);
  if (lVar4 != 0) {
    uVar6 = Transform_get_position_0x6000f4d(lVar4,0);
    fVar7 = (float)Time_get_time_0x6000ee1(0);
    puVar3 = PTR_DAT_05e63218;
    puVar2 = PTR_DAT_05e63208;
    if (lVar5 != 0) {
      func_0x03716c98(uVar6,param_2,param_3,lVar5,*(undefined8 *)PTR_DAT_05e63210);
      while( true ) {
        lVar4 = *(long *)puVar1;
        if (*(int *)(lVar4 + 0xe4) == 0) {
          func_0x029f5bd0();
          lVar4 = *(long *)puVar1;
        }
        lVar4 = *(long *)(*(long *)(lVar4 + 0xb8) + 0x70);
        if (lVar4 == 0) break;
        if (*(int *)(lVar4 + 0x20) < 1) {
          return;
        }
        fVar8 = (float)Time_get_time_0x6000ee1(0);
        lVar4 = *(long *)puVar1;
        if (*(int *)(lVar4 + 0xe4) == 0) {
          func_0x029f5bd0();
          lVar4 = *(long *)puVar1;
        }
        lVar4 = *(long *)(*(long *)(lVar4 + 0xb8) + 0x70);
        if (lVar4 == 0) break;
        func_0x03716e98(lVar4,*(undefined8 *)puVar3);
        if (fVar8 - fVar7 <= 2.0) {
          return;
        }
        lVar4 = *(long *)puVar1;
        if (*(int *)(lVar4 + 0xe4) == 0) {
          func_0x029f5bd0();
          lVar4 = *(long *)puVar1;
        }
        lVar4 = *(long *)(*(long *)(lVar4 + 0xb8) + 0x70);
        if (lVar4 == 0) break;
        func_0x03716e28(lVar4,*(undefined8 *)puVar2);
      }
    }
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

