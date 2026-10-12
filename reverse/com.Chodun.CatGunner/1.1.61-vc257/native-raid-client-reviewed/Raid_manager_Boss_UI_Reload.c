/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b59600, Ghidra VA 02c59600. */

void Raid_manager_Boss_UI_Reload(long param_1)

{
  long lVar1;
  undefined8 uStack_50;
  undefined8 uStack_48;
  undefined8 uStack_40;
  undefined8 uStack_38;
  undefined8 uStack_30;
  undefined8 uStack_28;
  undefined8 uStack_20;
  undefined8 uStack_18;
  
  if (*(long *)(param_1 + 0xa8) != 0) {
    Raid_Ingame_UI_Level_Reload_0x60008ee(*(long *)(param_1 + 0xa8),*(int *)(param_1 + 0xb0) + 1);
    if (((*(long *)(param_1 + 0xf0) != 0) &&
        (lVar1 = *(long *)(*(long *)(param_1 + 0xf0) + 0x20), lVar1 != 0)) &&
       (*(long *)(param_1 + 0xa8) != 0)) {
      uStack_28 = *(undefined8 *)(lVar1 + 0x30);
      uStack_30 = *(undefined8 *)(lVar1 + 0x28);
      uStack_18 = *(undefined8 *)(lVar1 + 0x40);
      uStack_20 = *(undefined8 *)(lVar1 + 0x38);
      uStack_48 = *(undefined8 *)(lVar1 + 0x50);
      uStack_50 = *(undefined8 *)(lVar1 + 0x48);
      uStack_38 = *(undefined8 *)(lVar1 + 0x60);
      uStack_40 = *(undefined8 *)(lVar1 + 0x58);
      Raid_Ingame_UI_Health_Reload(*(long *)(param_1 + 0xa8),&uStack_30,&uStack_50);
      if (*(long *)(param_1 + 0xa8) != 0) {
        Raid_Ingame_UI_HighScore_Reload_0x60008f1
                  (*(long *)(param_1 + 0xa8),*(undefined4 *)(param_1 + 0xb0),
                   *(undefined4 *)(param_1 + 0x80));
        return;
      }
    }
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

