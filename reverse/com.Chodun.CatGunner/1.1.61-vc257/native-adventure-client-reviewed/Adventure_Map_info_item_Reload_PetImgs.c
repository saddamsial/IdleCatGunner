/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b34984, Ghidra VA 02c34984. */

void Adventure_Map_info_item_Reload_PetImgs(long param_1,long param_2)

{
  undefined *puVar1;
  undefined *puVar2;
  uint uVar3;
  long lVar4;
  long *plVar5;
  long lVar6;
  long lVar7;
  long lVar8;
  ulong uVar9;
  
  if ((bRam000000000625c05a & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e62fe8);
    func_0x029f5a50(PTR_DAT_05e63128);
    func_0x029f5a50(PTR_DAT_05e5d4d0);
    bRam000000000625c05a = 1;
  }
  puVar2 = PTR_DAT_05e63128;
  puVar1 = PTR_DAT_05e5d4d0;
  if (param_2 == 0) {
    lVar7 = 0;
  }
  else {
    lVar7 = (long)*(int *)(param_2 + 0x18);
  }
  lVar6 = *(long *)(param_1 + 0x48);
  if (lVar6 != 0) {
    lVar8 = 4;
    do {
      uVar9 = lVar8 - 4;
      if ((long)(int)*(uint *)(lVar6 + 0x18) <= (long)uVar9) {
        return;
      }
      if ((long)uVar9 < lVar7) {
        if (param_2 == 0) break;
        uVar3 = func_0x044f7718(param_2,(int)lVar8 + -4,*(undefined8 *)puVar2);
        lVar6 = *(long *)(param_1 + 0x48);
        if (lVar6 == 0) break;
        if (*(uint *)(lVar6 + 0x18) <= uVar9) {
LAB_02c34b4c:
                    /* WARNING: Subroutine does not return */
          Throw_Index_Wrapper();
        }
        lVar6 = *(long *)(lVar6 + lVar8 * 8);
        if ((lVar6 == 0) || (lVar6 = Component_get_gameObject_0x6000c83(lVar6,0), lVar6 == 0))
        break;
        GameObject_SetActive_0x6000cfe(lVar6,1,0);
        lVar6 = *(long *)(param_1 + 0x48);
        if (lVar6 == 0) break;
        if (*(uint *)(lVar6 + 0x18) <= uVar9) goto LAB_02c34b4c;
        lVar4 = *(long *)puVar1;
        lVar6 = *(long *)(lVar6 + lVar8 * 8);
        if (*(int *)(lVar4 + 0xe4) == 0) {
          func_0x029f5bd0();
          lVar4 = *(long *)puVar1;
        }
        lVar4 = *(long *)(*(long *)(lVar4 + 0xb8) + 0x28);
        if ((lVar4 == 0) || (lVar4 = *(long *)(lVar4 + 0x58), lVar4 == 0)) break;
        if (*(uint *)(lVar4 + 0x18) <= uVar3) goto LAB_02c34b4c;
        if (lVar6 == 0) break;
        Image_set_sprite_0x600013f(lVar6,*(undefined8 *)(lVar4 + (long)(int)uVar3 * 8 + 0x20),0);
        lVar6 = *(long *)(param_1 + 0x48);
        if (lVar6 == 0) break;
        if (*(uint *)(lVar6 + 0x18) <= uVar9) goto LAB_02c34b4c;
        plVar5 = *(long **)(lVar6 + lVar8 * 8);
        if (plVar5 == (long *)0x0) break;
        (**(code **)(*plVar5 + 0x408))(plVar5,*(undefined8 *)(*plVar5 + 0x410));
      }
      else {
        if (*(uint *)(lVar6 + 0x18) <= uVar9) goto LAB_02c34b4c;
        lVar6 = *(long *)(lVar6 + lVar8 * 8);
        if ((lVar6 == 0) || (lVar6 = Component_get_gameObject_0x6000c83(lVar6,0), lVar6 == 0))
        break;
        GameObject_SetActive_0x6000cfe(lVar6,0,0);
      }
      lVar6 = *(long *)(param_1 + 0x48);
      lVar8 = lVar8 + 1;
    } while (lVar6 != 0);
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

