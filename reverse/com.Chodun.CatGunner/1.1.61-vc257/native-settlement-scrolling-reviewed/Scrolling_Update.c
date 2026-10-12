/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b2745c, Ghidra VA 02c2745c. */

void Scrolling_Update(long param_1)

{
  long lVar1;
  long lVar2;
  float fVar3;
  float fVar4;
  float fVar5;
  float fVar6;
  float fVar7;
  float fVar8;
  
  lVar2 = *(long *)(param_1 + 0x28);
  if (lVar2 != 0) {
    fVar5 = *(float *)(lVar2 + 0xe0);
    fVar6 = *(float *)(param_1 + 0x20);
    fVar3 = (float)Time_get_deltaTime_0x6000ee5(0);
    if (*(long *)(param_1 + 0x28) != 0) {
      fVar7 = *(float *)(*(long *)(param_1 + 0x28) + 0xe4);
      fVar8 = *(float *)(param_1 + 0x24);
      fVar4 = (float)Time_get_deltaTime_0x6000ee5(0);
      lVar1 = *(long *)(param_1 + 0x28);
      if (lVar1 != 0) {
        RawImage_set_uvRect_0x600037d
                  (fVar5 + fVar6 * fVar3,fVar7 + fVar8 * fVar4,*(undefined4 *)(lVar1 + 0xe8),
                   *(undefined4 *)(lVar1 + 0xec),lVar2,0);
        return;
      }
    }
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

