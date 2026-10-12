/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b4fe54, Ghidra VA 02c4fe54. */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

float Monster_manager_EnemySpawn_Pos_return(long param_1)

{
  long lVar1;
  float fVar2;
  float fVar3;
  float fVar4;
  float fStack_48;
  float fStack_44;
  
  lVar1 = Camera_get_main_0x60002b1(0);
  if (lVar1 != 0) {
    fVar2 = (float)Camera_get_aspect_0x6000287(lVar1,0);
    fVar2 = fVar2 * 60.0;
    fVar3 = 60.0;
    if (fVar2 <= 60.0) {
      fVar3 = fVar2;
    }
    fVar4 = 30.0;
    if (30.0 <= fVar2) {
      fVar4 = fVar3;
    }
    Random_Range_0x6000ba6(0,_UNK_0116be60,0);
    func_0x05afb270(&fStack_44,&fStack_48);
    fVar3 = (float)Random_Range_0x6000ba6(0xc0a00000,0x40a00000,0);
    fVar3 = fVar3 + (fVar4 * 60.0) /
                    SQRT(fStack_48 * 60.0 * fStack_48 * 60.0 + fStack_44 * fVar4 * fStack_44 * fVar4
                        );
    return *(float *)(param_1 + 0xe8) +
           (fStack_48 * fVar3 * _UNK_0116bf1c - fStack_44 * fVar3 * _UNK_0116bf1c);
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

