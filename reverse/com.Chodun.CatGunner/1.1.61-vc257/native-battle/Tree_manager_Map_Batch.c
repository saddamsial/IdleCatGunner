/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2bacf84, Ghidra VA 02cacf84. */

void Tree_manager_Map_Batch(long param_1)

{
  uint uVar1;
  undefined4 uVar2;
  long lVar3;
  long lVar4;
  
  uVar2 = Tree_manager_Tree_Batch();
  *(undefined4 *)(param_1 + 0x90) = uVar2;
  *(undefined4 *)(param_1 + 0x94) = uVar2;
  if (*(long *)(param_1 + 0xb0) != 0) {
    GameObject_SetActive_0x6000cfe(*(long *)(param_1 + 0xb0),1,0);
    lVar3 = *(long *)(param_1 + 0xe0);
    if (lVar3 != 0) {
      lVar4 = 0;
      uVar1 = *(int *)(param_1 + 0x28) % 10;
      do {
        if ((int)*(uint *)(lVar3 + 0x18) <= (int)(uint)lVar4) {
          lVar3 = *(long *)(param_1 + 0xf0);
          if (lVar3 != 0) {
            if (*(uint *)(lVar3 + 0x18) <= uVar1) {
LAB_02cad050:
                    /* WARNING: Subroutine does not return */
              Throw_Index_Wrapper();
            }
            if (*(long *)(param_1 + 0xe8) != 0) {
              SpriteRenderer_set_sprite_0x6000197
                        (*(long *)(param_1 + 0xe8),
                         *(undefined8 *)(lVar3 + (long)(int)uVar1 * 8 + 0x20),0);
              return;
            }
          }
          break;
        }
        if (*(uint *)(lVar3 + 0x18) <= (uint)lVar4) goto LAB_02cad050;
        lVar3 = *(long *)(lVar3 + lVar4 * 8 + 0x20);
        if (lVar3 == 0) break;
        Map_Grid_Reload_0x6000bae(lVar3,uVar1,0);
        lVar3 = *(long *)(param_1 + 0xe0);
        lVar4 = lVar4 + 1;
      } while (lVar3 != 0);
    }
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

