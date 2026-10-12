/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b0b844, Ghidra VA 02c0b844. */

void Particle_Polling_Spawn
               (undefined4 param_1,undefined4 param_2,undefined4 param_3,long param_4,
               undefined4 param_5)

{
  uint uVar1;
  long lVar2;
  long lVar3;
  long lVar4;
  undefined1 auStack_200 [144];
  undefined1 auStack_170 [144];
  undefined1 auStack_e0 [144];
  
  func_0x05afb2a0(auStack_170,0,0x90);
  EmitParams_set_position_0x6000068(param_1,param_2,param_3,auStack_170,0);
  EmitParams_set_applyShapeToPosition_0x6000069(auStack_170,1,0);
  func_0x05afb2b0(auStack_e0,auStack_170,0x90);
  lVar3 = *(long *)(param_4 + 0x28);
  if (lVar3 != 0) {
    uVar1 = *(uint *)(lVar3 + 0x18);
    if (0 < (int)uVar1) {
      lVar4 = 0;
      do {
        if (uVar1 <= (uint)lVar4) {
                    /* WARNING: Subroutine does not return */
          Throw_Index_Wrapper();
        }
        lVar2 = *(long *)(lVar3 + 0x20 + lVar4 * 8);
        if (lVar2 == 0) goto LAB_02c0b93c;
        func_0x05afb2b0(auStack_200,auStack_e0,0x90);
        ParticleSystem_Emit_0x6000013(lVar2,auStack_200,param_5,0);
        uVar1 = *(uint *)(lVar3 + 0x18);
        lVar4 = lVar4 + 1;
      } while ((int)lVar4 < (int)uVar1);
    }
    return;
  }
LAB_02c0b93c:
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

