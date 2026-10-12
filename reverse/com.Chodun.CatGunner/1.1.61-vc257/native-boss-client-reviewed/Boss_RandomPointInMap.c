/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b452ec, Ghidra VA 02c452ec. */

float Boss_RandomPointInMap(undefined8 param_1)

{
  undefined *puVar1;
  long lVar2;
  undefined8 uVar3;
  float fVar4;
  float fVar5;
  
  puVar1 = PTR_DAT_05e632f8;
  if ((bRam000000000625c0d4 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e632f8);
    bRam000000000625c0d4 = 1;
  }
  fVar4 = (float)Random_get_insideUnitCircle_0x6000bac(0);
  lVar2 = *(long *)puVar1;
  if (*(int *)(lVar2 + 0xe4) == 0) {
    func_0x029f5bd0();
    lVar2 = *(long *)puVar1;
  }
  fVar5 = **(float **)(lVar2 + 0xb8);
  lVar2 = Component_get_transform_0x6000c82(param_1,0);
  if (lVar2 != 0) {
    Transform_get_position_0x6000f4d(lVar2,0);
    uVar3 = *(undefined8 *)puVar1;
    return fVar4 * 60.0 + fVar5;
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

