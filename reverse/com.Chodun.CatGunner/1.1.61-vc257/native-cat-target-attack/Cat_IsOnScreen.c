/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b38de0, Ghidra VA 02c38de0. */

bool Cat_IsOnScreen(undefined4 param_1,float param_2,float param_3,float param_4,long param_5)

{
  long *plVar1;
  undefined *puVar2;
  bool bVar3;
  bool bVar4;
  ulong uVar5;
  long lVar6;
  undefined8 uVar7;
  float fVar8;
  float fVar9;
  
  puVar2 = PTR_DAT_05e591c0;
  if ((bRam000000000625c089 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e591c0);
    bRam000000000625c089 = 1;
  }
  uVar7 = *(undefined8 *)(param_5 + 0x200);
  if (*(int *)(*(long *)puVar2 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  plVar1 = (long *)(param_5 + 0x200);
  uVar5 = Object_op_Equality_0x6000dec(uVar7,0,0);
  if ((uVar5 & 1) != 0) {
    lVar6 = Camera_get_main_0x60002b1(0);
    *plVar1 = lVar6;
    func_0x029f59f4(plVar1,lVar6);
  }
  lVar6 = *plVar1;
  if (*(int *)(*(long *)puVar2 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  uVar5 = Object_op_Equality_0x6000dec(lVar6,0,0);
  if ((uVar5 & 1) == 0) {
    if (*plVar1 == 0) {
                    /* WARNING: Subroutine does not return */
      Throw_NullReference_Wrapper();
    }
    fVar8 = (float)Camera_WorldToViewportPoint_0x60002aa(param_1,*plVar1,0);
    if (((param_3 <= 0.0) || (fVar9 = -param_4, fVar8 < fVar9)) || (param_4 + 1.0 < fVar8)) {
      bVar3 = false;
    }
    else {
      bVar3 = true;
      bVar4 = false;
      if (param_2 <= param_4 + 1.0) {
        bVar3 = false;
        bVar4 = true;
        if (!NAN(param_2) && !NAN(fVar9)) {
          bVar3 = param_2 < fVar9;
          bVar4 = false;
        }
      }
      bVar3 = bVar3 == bVar4;
    }
  }
  else {
    bVar3 = true;
  }
  return bVar3;
}

