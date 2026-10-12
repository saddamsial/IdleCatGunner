/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b26cf0, Ghidra VA 02c26cf0. */

void Dia_Attraction_Target_Enable(long param_1,long param_2)

{
  uint uVar1;
  long lVar2;
  undefined8 uVar3;
  long lVar4;
  long *plVar5;
  long lVar6;
  
  if ((bRam000000000625bfb4 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e62d38);
    bRam000000000625bfb4 = 1;
  }
  lVar2 = *(long *)(param_1 + 0x28);
  if (lVar2 != 0) {
    lVar4 = *(long *)(lVar2 + 0x10);
    lVar6 = *(long *)PTR_DAT_05e62d38;
    *(int *)(lVar2 + 0x1c) = *(int *)(lVar2 + 0x1c) + 1;
    if (lVar4 != 0) {
      uVar1 = *(uint *)(lVar2 + 0x18);
      if (uVar1 < *(uint *)(lVar4 + 0x18)) {
        *(uint *)(lVar2 + 0x18) = uVar1 + 1;
        plVar5 = (long *)(lVar4 + (long)(int)uVar1 * 8 + 0x20);
        *plVar5 = param_2;
        Managed_WriteBarrier(plVar5,param_2);
      }
      else {
        func_0x0452cba8(lVar2,param_2,
                        *(undefined8 *)(*(long *)(*(long *)(lVar6 + 0x20) + 0xc0) + 0x70));
      }
      if (param_2 != 0) {
        lVar2 = *(long *)(param_1 + 0x20);
        uVar3 = Component_get_transform_0x6000c82(param_2,0);
        if (lVar2 != 0) {
          *(undefined8 *)(lVar2 + 0x5f8) = uVar3;
          Managed_WriteBarrier(lVar2 + 0x5f8);
          return;
        }
      }
    }
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

