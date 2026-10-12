/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b566d8, Ghidra VA 02c566d8. */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void Raid_Ingame_UI__ctor(long param_1)

{
  uint uVar1;
  undefined8 uVar2;
  undefined *puVar3;
  long lVar4;
  
  puVar3 = PTR_DAT_05e58ef8;
  if ((bRam000000000625c195 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e58ef8);
    bRam000000000625c195 = 1;
  }
  lVar4 = func_0x029f5b40(*(undefined8 *)puVar3,8);
  uVar2 = _UNK_0116e9f0;
  if (lVar4 != 0) {
    uVar1 = *(uint *)(lVar4 + 0x18);
    if (uVar1 != 0) {
      *(undefined8 *)(lVar4 + 0x28) = _UNK_0116e9f8;
      *(undefined8 *)(lVar4 + 0x20) = uVar2;
      uVar2 = _UNK_0116d6b0;
      if (uVar1 != 1) {
        *(undefined8 *)(lVar4 + 0x38) = _UNK_0116d6b8;
        *(undefined8 *)(lVar4 + 0x30) = uVar2;
        uVar2 = _UNK_0116c600;
        if (2 < uVar1) {
          *(undefined8 *)(lVar4 + 0x48) = _UNK_0116c608;
          *(undefined8 *)(lVar4 + 0x40) = uVar2;
          uVar2 = _UNK_0116cfb0;
          if (uVar1 != 3) {
            *(undefined8 *)(lVar4 + 0x58) = _UNK_0116cfb8;
            *(undefined8 *)(lVar4 + 0x50) = uVar2;
            uVar2 = _UNK_0116d6c0;
            if (4 < uVar1) {
              *(undefined8 *)(lVar4 + 0x68) = _UNK_0116d6c8;
              *(undefined8 *)(lVar4 + 0x60) = uVar2;
              uVar2 = _UNK_0116f250;
              if (uVar1 != 5) {
                *(undefined8 *)(lVar4 + 0x78) = _UNK_0116f258;
                *(undefined8 *)(lVar4 + 0x70) = uVar2;
                uVar2 = _UNK_0116d150;
                if (6 < uVar1) {
                  *(undefined8 *)(lVar4 + 0x88) = _UNK_0116d158;
                  *(undefined8 *)(lVar4 + 0x80) = uVar2;
                  uVar2 = _UNK_0116d6d0;
                  if (uVar1 != 7) {
                    *(undefined8 *)(lVar4 + 0x98) = _UNK_0116d6d8;
                    *(undefined8 *)(lVar4 + 0x90) = uVar2;
                    *(long *)(param_1 + 0x60) = lVar4;
                    Managed_WriteBarrier();
                    MonoBehaviour__ctor_0x6000d5a(param_1,0);
                    return;
                  }
                }
              }
            }
          }
        }
      }
    }
                    /* WARNING: Subroutine does not return */
    Throw_Index_Wrapper();
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

