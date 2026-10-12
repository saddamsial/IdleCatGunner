/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b7acb8, Ghidra VA 02c7acb8. */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void Pet_Ingame_manager_FixedUpdate
               (undefined1 param_1 [16],float param_2,float param_3,long param_4)

{
  undefined *puVar1;
  long lVar2;
  ulong uVar3;
  long lVar4;
  float fVar5;
  undefined4 uVar6;
  float fVar7;
  float fVar8;
  float fVar9;
  
  puVar1 = PTR_DAT_05e591c0;
  if ((bRam000000000625c316 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e591c0);
    bRam000000000625c316 = 1;
  }
  lVar2 = Pet_Ingame_manager_GetMainCat();
  if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
    func_0x029f5bd0(*(long *)puVar1);
  }
  uVar3 = Object_op_Equality_0x6000dec(lVar2,0,0);
  if ((uVar3 & 1) != 0) {
    return;
  }
  if ((lVar2 != 0) && (lVar4 = Component_get_transform_0x6000c82(lVar2,0), lVar4 != 0)) {
    fVar5 = (float)Transform_get_position_0x6000f4d(lVar4,0);
    fVar7 = *(float *)(param_4 + 0x58);
    fVar8 = *(float *)(param_4 + 0x5c);
    fVar9 = *(float *)(param_4 + 0x60);
    if (cRam000000000625bae8 == '\0') {
      func_0x029f5a50(PTR_DAT_05e59000);
      cRam000000000625bae8 = '\x01';
    }
    fVar5 = fVar5 - fVar7;
    param_2 = param_2 - fVar8;
    param_3 = param_3 - fVar9;
    if (*(int *)(*(long *)PTR_DAT_05e59000 + 0xe4) == 0) {
      func_0x029f5bd0();
    }
    fVar8 = (float)Time_get_fixedDeltaTime_0x6000ee9(0);
    fVar7 = _UNK_0116bfbc;
    fVar9 = *(float *)(param_4 + 100);
    *(float *)(param_4 + 100) =
         fVar9 + (SQRT(fVar5 * fVar5 + param_2 * param_2 + param_3 * param_3) / fVar8 - fVar9) *
                 _UNK_0116bfbc;
    lVar4 = Component_get_transform_0x6000c82(lVar2,0);
    if (lVar4 != 0) {
      uVar6 = Transform_get_position_0x6000f4d(lVar4,0);
      *(undefined4 *)(param_4 + 0x58) = uVar6;
      *(float *)(param_4 + 0x5c) = fVar9;
      *(float *)(param_4 + 0x60) = fVar7;
      Pet_Ingame_manager_ComputePetSeparation(param_4);
      Pet_Ingame_manager_ComputeCatAvoidance(param_4);
      Pet_Ingame_manager_MovePets(param_4,lVar2);
      return;
    }
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

