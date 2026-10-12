/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x48bb550, Ghidra VA 049bb550. */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void Particle_RotatePointsAroundCenter
               (float param_1,float param_2,float param_3,undefined8 param_4,long param_5)

{
  ulong uVar1;
  ulong uVar2;
  float *pfVar3;
  undefined4 uVar4;
  float fVar5;
  float fVar6;
  float fVar7;
  
  param_2 = param_2 * _UNK_0116c26c;
  param_3 = param_3 * _UNK_0116c26c;
  fVar7 = _UNK_0116c26c;
  uVar4 = Quaternion_Internal_FromEulerRad_0x6000a4b(param_1 * _UNK_0116c26c,param_2,param_3,0);
  if (param_5 == 0) {
                    /* WARNING: Subroutine does not return */
    Throw_NullReference_Wrapper();
  }
  if (0 < (int)*(ulong *)(param_5 + 0x18)) {
    uVar2 = 0;
    uVar1 = *(ulong *)(param_5 + 0x18) & 0xffffffff;
    pfVar3 = (float *)(param_5 + 0x24);
    do {
      if (uVar1 <= uVar2) {
LAB_049bb60c:
                    /* WARNING: Subroutine does not return */
        Throw_Index_Wrapper();
      }
      fVar6 = param_2;
      fVar5 = (float)Quaternion_op_Multiply_0x6000a54
                               (uVar4,param_2,param_3,fVar7,pfVar3[-1],*pfVar3,0,0);
      if (*(uint *)(param_5 + 0x18) <= uVar2) goto LAB_049bb60c;
      pfVar3[-1] = fVar5;
      *pfVar3 = fVar6;
      uVar2 = uVar2 + 1;
      pfVar3 = pfVar3 + 2;
      uVar1 = (ulong)*(uint *)(param_5 + 0x18);
    } while ((long)uVar2 < (long)(int)*(uint *)(param_5 + 0x18));
  }
  return;
}

