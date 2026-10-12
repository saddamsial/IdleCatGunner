/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b4cf4c, Ghidra VA 02c4cf4c. */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

undefined8
_Knockback_Coroutine_d__20_MoveNext
          (undefined1 param_1 [16],float param_2,float param_3,long param_4)

{
  float fVar1;
  undefined *puVar2;
  long lVar3;
  long lVar4;
  float fVar5;
  float fVar6;
  float fVar7;
  float fVar8;
  undefined8 uVar9;
  float fVar10;
  
  if ((bRam000000000625c133 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e63488);
    bRam000000000625c133 = 1;
  }
  lVar4 = *(long *)(param_4 + 0x20);
  if (*(int *)(param_4 + 0x10) == 1) {
    fVar5 = *(float *)(param_4 + 0x3c);
    fVar10 = *(float *)(param_4 + 0x40);
    *(undefined4 *)(param_4 + 0x10) = 0xffffffff;
  }
  else {
    if (*(int *)(param_4 + 0x10) != 0) {
      return 0;
    }
    *(undefined4 *)(param_4 + 0x10) = 0xffffffff;
    if ((lVar4 == 0) || (lVar3 = Component_get_transform_0x6000c82(lVar4,0), lVar3 == 0))
    goto LAB_02c4d1e4;
    fVar5 = (float)Transform_get_position_0x6000f4d(lVar3,0);
    puVar2 = PTR_DAT_05e63488;
    lVar3 = *(long *)PTR_DAT_05e63488;
    if (*(int *)(lVar3 + 0xe4) == 0) {
      func_0x029f5bd0();
      lVar3 = *(long *)puVar2;
    }
    uVar9 = **(undefined8 **)(lVar3 + 0xb8);
    fVar10 = *(float *)(*(undefined8 **)(lVar3 + 0xb8) + 1);
    if (cRam000000000625b52e == '\0') {
      func_0x029f5a50(PTR_DAT_05e59000);
      cRam000000000625b52e = '\x01';
    }
    fVar5 = fVar5 - (float)uVar9;
    param_2 = param_2 - (float)((ulong)uVar9 >> 0x20);
    param_3 = param_3 - fVar10;
    if (*(int *)(*(long *)PTR_DAT_05e59000 + 0xe4) == 0) {
      func_0x029f5bd0();
    }
    fVar10 = SQRT(param_3 * param_3 + fVar5 * fVar5 + param_2 * param_2);
    if (fVar10 <= _UNK_0116c240) {
      if (cRam000000000625b26f == '\0') {
        func_0x029f5a50(PTR_DAT_05e58bf8);
        cRam000000000625b26f = '\x01';
      }
      uVar9 = **(undefined8 **)(*(long *)PTR_DAT_05e58bf8 + 0xb8);
      param_3 = *(float *)(*(undefined8 **)(*(long *)PTR_DAT_05e58bf8 + 0xb8) + 1);
    }
    else {
      param_3 = param_3 / fVar10;
      uVar9 = CONCAT44(param_2 / fVar10,fVar5 / fVar10);
    }
    fVar7 = *(float *)(param_4 + 0x28);
    fVar10 = 0.0;
    *(undefined8 *)(param_4 + 0x2c) = uVar9;
    *(float *)(param_4 + 0x34) = param_3;
    *(undefined4 *)(param_4 + 0x40) = 0;
    fVar5 = 1.0;
    if (fVar7 <= 1.0) {
      fVar5 = fVar7;
    }
    fVar6 = fVar10;
    if (0.0 <= fVar7) {
      fVar6 = fVar5;
    }
    fVar5 = (float)((ulong)_UNK_0116f9e8 >> 0x20) * fVar6 + (float)((ulong)_UNK_01170538 >> 0x20);
    *(ulong *)(param_4 + 0x38) = CONCAT44(fVar5,(float)_UNK_0116f9e8 * fVar6 + (float)_UNK_01170538)
    ;
  }
  if (fVar10 < fVar5) {
    fVar5 = (float)Time_get_deltaTime_0x6000ee5(0);
    *(float *)(param_4 + 0x40) = fVar10 + fVar5;
    if ((lVar4 != 0) && (*(long *)(lVar4 + 0x28) != 0)) {
      fVar6 = *(float *)(param_4 + 0x38);
      fVar10 = (fVar10 + fVar5) / *(float *)(param_4 + 0x3c);
      fVar8 = (float)*(undefined8 *)(param_4 + 0x30) * fVar6;
      fVar7 = (float)((ulong)*(undefined8 *)(param_4 + 0x30) >> 0x20) * fVar6;
      fVar6 = fVar6 * *(float *)(param_4 + 0x2c);
      fVar5 = 1.0;
      if (fVar10 <= 1.0) {
        fVar5 = fVar10;
      }
      fVar1 = 0.0;
      if (0.0 <= fVar10) {
        fVar1 = fVar5;
      }
      fVar7 = fVar7 + ((float)((ulong)*(undefined8 *)(lVar4 + 100) >> 0x20) - fVar7) * fVar1;
      Rigidbody_set_linearVelocity_0x6000096
                (fVar6 + fVar1 * (*(float *)(lVar4 + 0x60) - fVar6),
                 CONCAT44(fVar7,fVar8 + ((float)*(undefined8 *)(lVar4 + 100) - fVar8) * fVar1),fVar7
                 ,*(long *)(lVar4 + 0x28),0);
      *(undefined8 *)(param_4 + 0x18) = 0;
      Managed_WriteBarrier((undefined8 *)(param_4 + 0x18),0);
      *(undefined4 *)(param_4 + 0x10) = 1;
      return 1;
    }
  }
  else if ((lVar4 != 0) && (*(long *)(lVar4 + 0x28) != 0)) {
    Rigidbody_set_linearVelocity_0x6000096
              (*(undefined4 *)(lVar4 + 0x60),*(undefined4 *)(lVar4 + 100),
               *(undefined4 *)(lVar4 + 0x68),*(long *)(lVar4 + 0x28),0);
    *(undefined8 *)(lVar4 + 0x70) = 0;
    Managed_WriteBarrier((undefined8 *)(lVar4 + 0x70),0);
    return 0;
  }
LAB_02c4d1e4:
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

