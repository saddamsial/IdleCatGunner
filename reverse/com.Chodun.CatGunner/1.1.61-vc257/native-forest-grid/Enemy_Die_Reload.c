/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b5ceb8, Ghidra VA 02c5ceb8. */

void Enemy_Die_Reload(long param_1)

{
  int iVar1;
  long lVar2;
  
  if ((bRam000000000625c1f3 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e637c0);
    func_0x029f5a50(PTR_DAT_05e63480);
    func_0x029f5a50(PTR_DAT_05e637c8);
    func_0x029f5a50(PTR_DAT_05e637d0);
    func_0x029f5a50(PTR_DAT_05e637d8);
    func_0x029f5a50(PTR_DAT_05e637e0);
    bRam000000000625c1f3 = 1;
  }
  iVar1 = *(int *)(param_1 + 0x20);
  if (2 < iVar1) {
    if (iVar1 == 3) {
      lVar2 = func_0x02fe5f2c(param_1,*(undefined8 *)PTR_DAT_05e63480);
      if (lVar2 != 0) {
        Monster_Die_Reload_0x6000835(lVar2,0);
        return;
      }
    }
    else if (iVar1 == 4) {
      lVar2 = func_0x02fe5f2c(param_1,*(undefined8 *)PTR_DAT_05e637c8);
      if (lVar2 != 0) {
        Ore_Die_Reload_0x600082c(lVar2,0);
        return;
      }
    }
    else {
      if (iVar1 != 5) {
        return;
      }
      lVar2 = func_0x02fe5f2c(param_1,*(undefined8 *)PTR_DAT_05e637d0);
      if (lVar2 != 0) {
        Raid_Boss_Die_Reload_0x60008eb(lVar2,0);
        return;
      }
    }
    goto LAB_02c5d06c;
  }
  if (iVar1 == 0) {
    lVar2 = func_0x02fe5f2c(param_1,*(undefined8 *)PTR_DAT_05e637e0);
    if (lVar2 == 0) goto LAB_02c5d06c;
    Tree_Die_Reload(lVar2,0);
  }
  else {
    if (iVar1 != 1) {
      if (iVar1 != 2) {
        return;
      }
      lVar2 = func_0x02fe5f2c(param_1,*(undefined8 *)PTR_DAT_05e637c0);
      if (lVar2 != 0) {
        Boss_Die_Reload_0x6000783(lVar2,0);
        return;
      }
      goto LAB_02c5d06c;
    }
    lVar2 = func_0x02fe5f2c(param_1,*(undefined8 *)PTR_DAT_05e637d8);
    if (lVar2 == 0) goto LAB_02c5d06c;
    Tree_SpeedRun_Die_Reload_0x6000ee2(lVar2,0);
  }
  lVar2 = Component_get_gameObject_0x6000c83(param_1,0);
  if (lVar2 != 0) {
    GameObject_SetActive_0x6000cfe(lVar2,0,0);
    return;
  }
LAB_02c5d06c:
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

