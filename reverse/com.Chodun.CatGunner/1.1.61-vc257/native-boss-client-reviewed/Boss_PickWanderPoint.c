/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b45170, Ghidra VA 02c45170. */

undefined4
Boss_PickWanderPoint(undefined1 param_1 [16],undefined4 param_2,undefined4 param_3,long param_4)

{
  long lVar1;
  ulong uVar2;
  int iVar3;
  undefined4 uVar4;
  undefined4 uVar5;
  undefined4 uVar6;
  undefined4 uVar7;
  undefined4 uVar8;
  undefined4 uVar9;
  
  Boss_GetMainCatPosition();
  lVar1 = Component_get_transform_0x6000c82(param_4,0);
  if (lVar1 == 0) {
                    /* WARNING: Subroutine does not return */
    Throw_NullReference_Wrapper();
  }
  uVar4 = Transform_get_position_0x6000f4d(lVar1,0);
  if (0 < *(int *)(param_4 + 0x6c)) {
    iVar3 = 0;
    uVar6 = param_2;
    uVar8 = param_3;
    do {
      uVar5 = Boss_RandomPointInMap(param_4);
      uVar7 = param_2;
      uVar9 = param_3;
      uVar2 = Boss_PathCrossesCat(uVar4,param_2,param_3,uVar5,uVar6,uVar8);
      if ((uVar2 & 1) == 0) {
        return uVar5;
      }
      iVar3 = iVar3 + 1;
      uVar6 = uVar7;
      uVar8 = uVar9;
    } while (iVar3 < *(int *)(param_4 + 0x6c));
  }
  uVar4 = Boss_RandomPointInMap(param_4);
  return uVar4;
}

