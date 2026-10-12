/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2bab8f8, Ghidra VA 02cab8f8. */

undefined8 Tree_manager_Sprite_return(int param_1,int param_2)

{
  uint uVar1;
  uint uVar2;
  int iVar3;
  undefined *puVar4;
  long lVar5;
  
  puVar4 = PTR_DAT_05e5dc20;
  if ((bRam000000000625c527 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5dc20);
    bRam000000000625c527 = 1;
  }
  lVar5 = *(long *)puVar4;
  if (*(int *)(lVar5 + 0xe4) == 0) {
    func_0x029f5bd0();
    lVar5 = *(long *)puVar4;
  }
  lVar5 = *(long *)(*(long *)(lVar5 + 0xb8) + 0x10);
  if ((lVar5 != 0) && (lVar5 = *(long *)(lVar5 + 0x20), lVar5 != 0)) {
    param_2 = param_2 + param_1 * 4;
    uVar1 = *(uint *)(lVar5 + 0x18);
    iVar3 = 0;
    if (uVar1 != 0) {
      iVar3 = param_2 / (int)uVar1;
    }
    uVar2 = param_2 - iVar3 * uVar1;
    if (uVar2 < uVar1) {
      return *(undefined8 *)(lVar5 + (long)(int)uVar2 * 8 + 0x20);
    }
                    /* WARNING: Subroutine does not return */
    Throw_Index_Wrapper();
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

