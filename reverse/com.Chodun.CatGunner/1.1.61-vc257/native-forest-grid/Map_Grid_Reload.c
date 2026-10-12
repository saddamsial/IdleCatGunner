/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b7a5ec, Ghidra VA 02c7a5ec. */

void Map_Grid_Reload(long param_1,uint param_2)

{
  long lVar1;
  long lVar2;
  long lVar3;
  
  lVar1 = *(long *)(param_1 + 0x20);
  if (lVar1 != 0) {
    if (*(int *)(lVar1 + 0x18) == 0) {
LAB_02c7a734:
                    /* WARNING: Subroutine does not return */
      Throw_Index_Wrapper();
    }
    lVar2 = *(long *)(param_1 + 0x38);
    if (lVar2 != 0) {
      if (*(uint *)(lVar2 + 0x18) <= param_2) goto LAB_02c7a734;
      if (*(long *)(lVar1 + 0x20) != 0) {
        lVar3 = (long)(int)param_2;
        SpriteRenderer_set_sprite_0x6000197
                  (*(long *)(lVar1 + 0x20),*(undefined8 *)(lVar2 + lVar3 * 8 + 0x20),0);
        lVar1 = *(long *)(param_1 + 0x20);
        if (lVar1 != 0) {
          if ((*(uint *)(lVar1 + 0x18) & 0xfffffffe) == 0) goto LAB_02c7a734;
          lVar2 = *(long *)(param_1 + 0x38);
          if (lVar2 != 0) {
            if (*(uint *)(lVar2 + 0x18) <= param_2) goto LAB_02c7a734;
            if (*(long *)(lVar1 + 0x28) != 0) {
              SpriteRenderer_set_sprite_0x6000197
                        (*(long *)(lVar1 + 0x28),*(undefined8 *)(lVar2 + lVar3 * 8 + 0x20),0);
              lVar1 = *(long *)(param_1 + 0x28);
              if (lVar1 != 0) {
                if (*(int *)(lVar1 + 0x18) == 0) goto LAB_02c7a734;
                lVar2 = *(long *)(param_1 + 0x40);
                if (lVar2 != 0) {
                  if (*(uint *)(lVar2 + 0x18) <= param_2) goto LAB_02c7a734;
                  if (*(long *)(lVar1 + 0x20) != 0) {
                    SpriteRenderer_set_sprite_0x6000197
                              (*(long *)(lVar1 + 0x20),*(undefined8 *)(lVar2 + lVar3 * 8 + 0x20),0);
                    lVar1 = *(long *)(param_1 + 0x28);
                    if (lVar1 != 0) {
                      if ((*(uint *)(lVar1 + 0x18) & 0xfffffffe) == 0) goto LAB_02c7a734;
                      lVar2 = *(long *)(param_1 + 0x40);
                      if (lVar2 != 0) {
                        if (*(uint *)(lVar2 + 0x18) <= param_2) goto LAB_02c7a734;
                        if (*(long *)(lVar1 + 0x28) != 0) {
                          SpriteRenderer_set_sprite_0x6000197
                                    (*(long *)(lVar1 + 0x28),
                                     *(undefined8 *)(lVar2 + lVar3 * 8 + 0x20),0);
                          lVar1 = *(long *)(param_1 + 0x48);
                          if (lVar1 != 0) {
                            if (*(uint *)(lVar1 + 0x18) <= param_2) goto LAB_02c7a734;
                            if (*(long *)(param_1 + 0x30) != 0) {
                              lVar1 = lVar1 + lVar3 * 0x10;
                              SpriteRenderer_set_color_0x6000199
                                        (*(undefined4 *)(lVar1 + 0x20),*(undefined4 *)(lVar1 + 0x24)
                                         ,*(undefined4 *)(lVar1 + 0x28),
                                         *(undefined4 *)(lVar1 + 0x2c),*(long *)(param_1 + 0x30),0);
                              return;
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

