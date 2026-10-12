/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b26f50, Ghidra VA 02c26f50. */

void Hatch_Reload(undefined1 param_1 [16],undefined1 param_2 [16],float param_3,float param_4,
                 long param_5)

{
  long lVar1;
  long *plVar2;
  float fVar3;
  float fVar4;
  
  if ((bRam000000000625bfb9 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5be98);
    bRam000000000625bfb9 = 1;
  }
  if (*(long *)(param_5 + 0x28) != 0) {
    lVar1 = func_0x02fe5f2c(*(long *)(param_5 + 0x28),*(undefined8 *)PTR_DAT_05e5be98);
    plVar2 = (long *)(param_5 + 0x30);
    *plVar2 = lVar1;
    Managed_WriteBarrier(plVar2,lVar1);
    if (*plVar2 != 0) {
      RectTransform_get_rect_0x6000f26(*plVar2,0);
      if (*(long *)(param_5 + 0x30) != 0) {
        fVar3 = *(float *)(param_5 + 0x20);
        RectTransform_get_rect_0x6000f26(*(long *)(param_5 + 0x30),0);
        fVar4 = *(float *)(param_5 + 0x20);
        lVar1 = *(long *)(param_5 + 0x28);
        if (cRam000000000625b271 == '\0') {
          func_0x029f5a50(PTR_DAT_05e59608);
          cRam000000000625b271 = '\x01';
        }
        if (lVar1 != 0) {
          RawImage_set_uvRect_0x600037d
                    (**(undefined4 **)(*(long *)PTR_DAT_05e59608 + 0xb8),
                     (*(undefined4 **)(*(long *)PTR_DAT_05e59608 + 0xb8))[1],param_3 / fVar3,
                     param_4 / fVar4,lVar1,0);
          return;
        }
      }
    }
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

