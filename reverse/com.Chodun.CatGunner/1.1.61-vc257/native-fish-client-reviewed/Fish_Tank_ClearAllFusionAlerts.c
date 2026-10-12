/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b61910, Ghidra VA 02c61910. */

void Fish_Tank_ClearAllFusionAlerts(long param_1)

{
  long lVar1;
  long lVar2;
  uint uVar3;
  
  lVar2 = *(long *)(param_1 + 0x20);
  if (lVar2 != 0) {
    uVar3 = 0;
    do {
      if ((int)*(uint *)(lVar2 + 0x18) <= (int)uVar3) {
        *(undefined8 *)(param_1 + 0x40) = 0;
        Managed_WriteBarrier((undefined8 *)(param_1 + 0x40),0);
        return;
      }
      if (*(uint *)(lVar2 + 0x18) <= uVar3) {
                    /* WARNING: Subroutine does not return */
        Throw_Index_Wrapper();
      }
      lVar1 = *(long *)(lVar2 + (long)(int)uVar3 * 8 + 0x20);
      if (lVar1 == 0) break;
      if (*(char *)(lVar1 + 0x48) != '\0') {
        Fish_Item_Fusion_Alert_Off();
        lVar2 = *(long *)(param_1 + 0x20);
      }
      uVar3 = uVar3 + 1;
    } while (lVar2 != 0);
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

