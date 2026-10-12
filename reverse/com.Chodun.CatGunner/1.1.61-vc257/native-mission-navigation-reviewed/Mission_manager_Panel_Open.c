/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2aa5420, Ghidra VA 02ba5420. */

void Mission_manager_Panel_Open(long param_1)

{
  undefined *puVar1;
  long lVar2;
  undefined8 uVar3;
  
  if ((bRam000000000625ba45 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5d5b0);
    bRam000000000625ba45 = 1;
  }
  Mission_manager_Season_Reload_0x6000344(param_1);
  if ((*(long *)(param_1 + 0x88) != 0) &&
     (lVar2 = Component_get_gameObject_0x6000c83(*(long *)(param_1 + 0x88),0),
     puVar1 = PTR_DAT_05e5d5b0, lVar2 != 0)) {
    GameObject_SetActive_0x6000cfe(lVar2,1,0);
    **(undefined1 **)(*(long *)puVar1 + 0xb8) = 1;
    Mission_manager_UI_Reload_0x600034f(param_1);
    if (*(long *)(param_1 + 200) != 0) {
      ScrollRect_set_verticalNormalizedPosition_0x6000404(0x3f800000,*(long *)(param_1 + 200),0);
      uVar3 = Mission_manager_ScrollToRewardLv(param_1);
      MonoBehaviour_StartCoroutine_0x6000d43(param_1,uVar3,0);
      return;
    }
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

