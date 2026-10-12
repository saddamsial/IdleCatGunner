/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b68ac8, Ghidra VA 02c68ac8. */

void Gun_manager_OnWeaponAcquired(long param_1,uint param_2)

{
  int iVar1;
  long lVar2;
  ulong uVar3;
  uint uVar4;
  ulong uVar5;
  long lVar6;
  long *plVar7;
  
  if ((bRam000000000625c278 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5d540);
    func_0x029f5a50(PTR_DAT_05e5d790);
    bRam000000000625c278 = 1;
  }
  if (-1 < (int)param_2) {
    plVar7 = (long *)(param_1 + 0x38);
    if ((*plVar7 == 0) || (*(int *)(*plVar7 + 0x18) != 0xd)) {
      lVar2 = func_0x029f5b40(*(undefined8 *)PTR_DAT_05e5d790,0xd);
      lVar6 = *plVar7;
      if (lVar6 != 0) {
        uVar5 = *(ulong *)(lVar6 + 0x18);
        uVar4 = (uint)uVar5;
        if (0 < (int)uVar4) {
          uVar3 = 0;
          if (0xc < (int)uVar4) {
            uVar4 = 0xd;
          }
          do {
            if ((uVar5 & 0xffffffff) == uVar3) goto LAB_02c68c14;
            if (lVar2 == 0) goto LAB_02c68c18;
            if (*(uint *)(lVar2 + 0x18) <= uVar3) goto LAB_02c68c14;
            *(undefined4 *)(lVar2 + 0x20 + uVar3 * 4) = *(undefined4 *)(lVar6 + 0x20 + uVar3 * 4);
            uVar3 = uVar3 + 1;
          } while (uVar4 != uVar3);
        }
      }
      *plVar7 = lVar2;
      Managed_WriteBarrier(plVar7);
    }
    if ((int)param_2 < 0x41) {
      lVar2 = *plVar7;
      if (lVar2 == 0) {
LAB_02c68c18:
                    /* WARNING: Subroutine does not return */
        Throw_NullReference_Wrapper();
      }
      if (*(uint *)(lVar2 + 0x18) <= param_2 / 5) {
LAB_02c68c14:
                    /* WARNING: Subroutine does not return */
        Throw_Index_Wrapper();
      }
      lVar2 = lVar2 + (ulong)(param_2 / 5) * 4;
      iVar1 = *(int *)(lVar2 + 0x20) + 1;
      *(int *)(lVar2 + 0x20) = iVar1;
      if (4 < (int)param_2) {
        if (*(int *)(*(long *)PTR_DAT_05e5d540 + 0xe4) == 0) {
          func_0x029f5bd0();
        }
        AppsFlyerInit_SendLog_WeaponGet_0x600021b((ulong)param_2 / 5,iVar1,0);
      }
    }
  }
  return;
}

