/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b21548, Ghidra VA 02c21548. */

void Setting_EcoMode_Change(long param_1)

{
  undefined4 *puVar1;
  undefined4 *puVar2;
  undefined4 *puVar3;
  undefined4 *puVar4;
  byte bVar5;
  undefined *puVar6;
  undefined *puVar7;
  long *plVar8;
  long lVar9;
  long lVar10;
  
  puVar7 = PTR_DAT_05e62670;
  if ((bRam000000000625bf62 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e62670);
    func_0x029f5a50(PTR_DAT_05e5d4e0);
    bRam000000000625bf62 = 1;
  }
  plVar8 = *(long **)(param_1 + 0xa8);
  bVar5 = *(byte *)(*(long *)(*(long *)puVar7 + 0xb8) + 0x10);
  *(byte *)(*(long *)(*(long *)puVar7 + 0xb8) + 0x10) = bVar5 ^ 1;
  if (bVar5 == 0) {
    puVar1 = (undefined4 *)(param_1 + 200);
    puVar2 = (undefined4 *)(param_1 + 0xcc);
    puVar3 = (undefined4 *)(param_1 + 0xd0);
    puVar4 = (undefined4 *)(param_1 + 0xd4);
  }
  else {
    puVar1 = (undefined4 *)(param_1 + 0xb8);
    puVar2 = (undefined4 *)(param_1 + 0xbc);
    puVar3 = (undefined4 *)(param_1 + 0xc0);
    puVar4 = (undefined4 *)(param_1 + 0xc4);
  }
  if (plVar8 != (long *)0x0) {
    (**(code **)(*plVar8 + 0x2a8))
              (*puVar1,*puVar2,*puVar3,*puVar4,plVar8,*(undefined8 *)(*plVar8 + 0x2b0));
    if (*(long *)(param_1 + 0xd8) != 0) {
      GameObject_SetActive_0x6000cfe
                (*(long *)(param_1 + 0xd8),
                 *(char *)(*(long *)(*(long *)puVar7 + 0xb8) + 0x10) == '\0',0);
      puVar6 = PTR_DAT_05e5d4e0;
      if (*(long *)(param_1 + 0xe0) != 0) {
        GameObject_SetActive_0x6000cfe
                  (*(long *)(param_1 + 0xe0),
                   *(undefined1 *)(*(long *)(*(long *)puVar7 + 0xb8) + 0x10),0);
        lVar10 = *(long *)(*(long *)(*(long *)puVar6 + 0xb8) + 0x10);
        if ((lVar10 != 0) && (lVar9 = *(long *)(lVar10 + 0x50), lVar9 != 0)) {
          if (*(uint *)(lVar9 + 0x18) <= *(uint *)(lVar10 + 0x30)) {
                    /* WARNING: Subroutine does not return */
            Throw_Index_Wrapper();
          }
          if (*(long *)(param_1 + 0xb0) != 0) {
            Image_set_sprite_0x600013f
                      (*(long *)(param_1 + 0xb0),
                       *(undefined8 *)(lVar9 + (long)(int)*(uint *)(lVar10 + 0x30) * 8 + 0x20),0);
            return;
          }
        }
      }
    }
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

