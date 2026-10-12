/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b54e5c, Ghidra VA 02c54e5c. */

void Raid_Mission_manager_SaveClear_return(long param_1)

{
  undefined *puVar1;
  long lVar2;
  long lVar3;
  undefined8 uVar4;
  undefined1 auVar5 [16];
  
  if ((bRam000000000625c180 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e626b0);
    bRam000000000625c180 = 1;
  }
  if (*(long *)(param_1 + 0x30) == 0) {
                    /* WARNING: Subroutine does not return */
    Throw_NullReference_Wrapper();
  }
  lVar2 = Array_Clone_0x6000ccb(*(long *)(param_1 + 0x30),0);
  if (lVar2 != 0) {
    uVar4 = *(undefined8 *)PTR_DAT_05e626b0;
    lVar3 = func_0x029f5bd4(lVar2,uVar4);
    if (lVar3 == 0) {
      lVar2 = func_0x029f607c(lVar2,uVar4);
      if ((bRam000000000625c181 & 1) == 0) {
        func_0x029f5a50(PTR_DAT_05e626b0);
        bRam000000000625c181 = 1;
      }
      if (*(long *)(lVar2 + 0x38) == 0) {
                    /* WARNING: Subroutine does not return */
        Throw_NullReference_Wrapper();
      }
      lVar2 = Array_Clone_0x6000ccb(*(long *)(lVar2 + 0x38),0);
      if (lVar2 != 0) {
        uVar4 = *(undefined8 *)PTR_DAT_05e626b0;
        lVar3 = func_0x029f5bd4(lVar2,uVar4);
        if (lVar3 == 0) {
          lVar2 = func_0x029f607c(lVar2,uVar4);
          if ((bRam000000000625c182 & 1) == 0) {
            func_0x029f5a50(PTR_DAT_05e626b0);
            bRam000000000625c182 = 1;
          }
          if (*(long *)(lVar2 + 0x40) == 0) {
                    /* WARNING: Subroutine does not return */
            Throw_NullReference_Wrapper();
          }
          lVar2 = Array_Clone_0x6000ccb(*(long *)(lVar2 + 0x40),0);
          if (lVar2 != 0) {
            uVar4 = *(undefined8 *)PTR_DAT_05e626b0;
            lVar3 = func_0x029f5bd4(lVar2,uVar4);
            if (lVar3 == 0) {
              auVar5 = func_0x029f607c(lVar2,uVar4);
              lVar3 = auVar5._8_8_;
              lVar2 = auVar5._0_8_;
              if ((bRam000000000625c183 & 1) == 0) {
                func_0x029f5a50(PTR_DAT_05e5e068);
                bRam000000000625c183 = 1;
              }
              if ((*(long *)(lVar2 + 0x20) == 0) || (*(int *)(*(long *)(lVar2 + 0x20) + 0x18) != 8))
              {
                Raid_Mission_manager_Balance_Reload(lVar2);
              }
              puVar1 = PTR_DAT_05e5e068;
              Raid_Mission_manager_EnsureArrays(lVar2);
              Array_Clear_0x6000d48(*(undefined8 *)(lVar2 + 0x30),0,8,0);
              Array_Clear_0x6000d48(*(undefined8 *)(lVar2 + 0x38),0,8,0);
              Array_Clear_0x6000d48(*(undefined8 *)(lVar2 + 0x40),0,8,0);
              *(undefined1 *)(lVar2 + 0x48) = 0;
              *(undefined4 *)(lVar2 + 0x28) = 0xffffffff;
              if (lVar3 != 0) {
                uVar4 = *(undefined8 *)(lVar3 + 0x408);
                *(undefined4 *)(lVar2 + 0x28) = *(undefined4 *)(lVar3 + 0x400);
                Raid_Mission_manager_CopyFlags(uVar4,*(undefined8 *)(lVar2 + 0x30));
                Raid_Mission_manager_CopyFlags
                          (*(undefined8 *)(lVar3 + 0x410),*(undefined8 *)(lVar2 + 0x38));
                Raid_Mission_manager_CopyFlags
                          (*(undefined8 *)(lVar3 + 0x418),*(undefined8 *)(lVar2 + 0x40));
                *(undefined1 *)(lVar2 + 0x48) = *(undefined1 *)(lVar3 + 0x420);
              }
              Raid_Mission_manager_Season_Check(lVar2);
              Raid_Mission_manager_Refresh_Clear(lVar2);
              lVar2 = *(long *)(*(long *)(*(long *)puVar1 + 0xb8) + 8);
              if (lVar2 != 0) {
                    /* WARNING: Could not recover jumptable at 0x02c550d4. Too many branches */
                    /* WARNING: Treating indirect jump as call */
                (**(code **)(lVar2 + 0x18))
                          (*(undefined8 *)(lVar2 + 0x40),*(undefined8 *)(lVar2 + 0x28));
                return;
              }
              return;
            }
          }
          return;
        }
      }
      return;
    }
  }
  return;
}

