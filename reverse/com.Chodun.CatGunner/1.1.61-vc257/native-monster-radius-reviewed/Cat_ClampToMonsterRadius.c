/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b3d234, Ghidra VA 02c3d234. */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void Cat_ClampToMonsterRadius
               (undefined1 param_1 [16],undefined1 param_2 [16],float param_3,long param_4)

{
  undefined *puVar1;
  long lVar2;
  long lVar3;
  float fVar4;
  undefined8 uVar5;
  float fVar6;
  float fVar7;
  float fVar8;
  
  if ((bRam000000000625c08f & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e631d8);
    bRam000000000625c08f = 1;
  }
  lVar2 = Component_get_transform_0x6000c82(param_4,0);
  if (lVar2 != 0) {
    fVar4 = (float)Transform_get_position_0x6000f4d(lVar2,0);
    lVar2 = Component_get_transform_0x6000c82(param_4,0);
    puVar1 = PTR_DAT_05e631d8;
    if (lVar2 != 0) {
      Transform_get_position_0x6000f4d(lVar2,0);
      lVar2 = *(long *)puVar1;
      if (*(int *)(lVar2 + 0xe4) == 0) {
        func_0x029f5bd0();
        lVar2 = *(long *)puVar1;
      }
      fVar7 = *(float *)(*(long *)(lVar2 + 0xb8) + 0x54);
      fVar8 = *(float *)(*(long *)(lVar2 + 0xb8) + 0x5c);
      if (cRam000000000625bae8 == '\0') {
        func_0x029f5a50(PTR_DAT_05e59000);
        cRam000000000625bae8 = '\x01';
      }
      puVar1 = PTR_DAT_05e59000;
      fVar4 = fVar4 - fVar7;
      param_3 = param_3 - fVar8;
      if (*(int *)(*(long *)PTR_DAT_05e59000 + 0xe4) == 0) {
        func_0x029f5bd0();
      }
      fVar8 = SQRT(fVar4 * fVar4 + param_3 * param_3);
      if (fVar8 < 14.0) {
        return;
      }
      if (cRam000000000625b52e == '\0') {
        func_0x029f5a50(PTR_DAT_05e59000);
        cRam000000000625b52e = '\x01';
      }
      if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
        func_0x029f5bd0();
      }
      if (fVar8 <= _UNK_0116c240) {
        if (cRam000000000625b26f == '\0') {
          func_0x029f5a50(PTR_DAT_05e58bf8);
          cRam000000000625b26f = '\x01';
        }
        uVar5 = **(undefined8 **)(*(long *)PTR_DAT_05e58bf8 + 0xb8);
        param_3 = *(float *)(*(undefined8 **)(*(long *)PTR_DAT_05e58bf8 + 0xb8) + 1);
      }
      else {
        param_3 = param_3 / fVar8;
        uVar5 = CONCAT44(0.0 / fVar8,fVar4 / fVar8);
      }
      if (*(long *)(param_4 + 0x30) != 0) {
        fVar8 = (float)Rigidbody_get_linearVelocity_0x6000095(*(long *)(param_4 + 0x30),0);
        fVar6 = (float)uVar5;
        fVar4 = param_3 * fVar4 + fVar6 * fVar8 + (float)((ulong)uVar5 >> 0x20) * 0.0;
        if (0.0 < fVar4) {
          if (*(long *)(param_4 + 0x30) == 0) goto LAB_02c3d4a8;
          Rigidbody_set_linearVelocity_0x6000096(fVar8 - fVar4 * fVar6,*(long *)(param_4 + 0x30),0);
        }
        lVar2 = Component_get_transform_0x6000c82(param_4,0);
        lVar3 = Component_get_transform_0x6000c82(param_4,0);
        if ((lVar3 != 0) && (Transform_get_position_0x6000f4d(lVar3,0), lVar2 != 0)) {
          Transform_set_position_0x6000f4e(fVar7 + fVar6 * 14.0,lVar2,0);
          return;
        }
      }
    }
  }
LAB_02c3d4a8:
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

