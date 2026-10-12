/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b71778, Ghidra VA 02c71778. */

void Gun_Item_OnPointerUp(long param_1)

{
  long lVar1;
  undefined8 uVar2;
  
  if ((bRam000000000625c2cb & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5dd40);
    bRam000000000625c2cb = 1;
  }
  if (*(char *)(param_1 + 0x79) != '\0') {
    *(undefined1 *)(param_1 + 0xb9) = 0;
    return;
  }
  if (*(char *)(param_1 + 0xb9) == '\0') {
    return;
  }
  *(undefined1 *)(param_1 + 0xb9) = 0;
  if (*(char *)(param_1 + 0xb8) != '\0') {
    return;
  }
  lVar1 = **(long **)(*(long *)PTR_DAT_05e5dd40 + 0xb8);
  if (*(char *)(param_1 + 0x70) == '\0') {
    if (lVar1 == 0) goto LAB_02c71890;
    Gun_manager_Gun_Info_UI_Reload_Inventory_0x6000a6d
              (lVar1,*(undefined4 *)(param_1 + 0x8c),*(undefined4 *)(param_1 + 0x90),0);
  }
  else {
    if (lVar1 == 0) goto LAB_02c71890;
    Gun_manager_AdRewardGun_TryWatch(lVar1,0);
  }
  if (cRam000000000625ba57 == '\0') {
    func_0x029f5a50(PTR_DAT_05e5dd70);
    cRam000000000625ba57 = '\x01';
  }
  if (**(long **)(*(long *)PTR_DAT_05e5dd70 + 0xb8) != 0) {
    Sound_manager_PlaySfx_0x600054a(0x3f800000,**(long **)(*(long *)PTR_DAT_05e5dd70 + 0xb8),1,0,0);
    Gun_Item_StopPressCoroutine_0x6000b1f(param_1);
    uVar2 = Gun_Item_PressBounceBack_0x6000b21(param_1);
    uVar2 = MonoBehaviour_StartCoroutine_0x6000d43(param_1,uVar2,0);
    *(undefined8 *)(param_1 + 0x108) = uVar2;
    Managed_WriteBarrier(param_1 + 0x108);
    return;
  }
LAB_02c71890:
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

