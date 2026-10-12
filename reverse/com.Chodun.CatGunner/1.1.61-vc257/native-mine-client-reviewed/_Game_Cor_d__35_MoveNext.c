/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b4aef4, Ghidra VA 02c4aef4. */

undefined8 _Game_Cor_d__35_MoveNext(long param_1)

{
  undefined *puVar1;
  long lVar2;
  long lVar3;
  float fVar4;
  undefined8 uVar5;
  float fVar6;
  
  if ((bRam000000000625c11f & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5d338);
    bRam000000000625c11f = 1;
  }
  lVar3 = *(long *)(param_1 + 0x20);
  if (*(int *)(param_1 + 0x10) == 1) {
    *(undefined4 *)(param_1 + 0x10) = 0xffffffff;
    if (lVar3 == 0) goto LAB_02c4b034;
  }
  else {
    if (*(int *)(param_1 + 0x10) != 0) {
      return 0;
    }
    *(undefined4 *)(param_1 + 0x10) = 0xffffffff;
    if (lVar3 == 0) goto LAB_02c4b034;
    uVar5 = Mine_manager_GameTime_Max_return(lVar3);
    *(int *)(lVar3 + 0x74) = (int)uVar5;
    if (*(long *)(lVar3 + 0x98) == 0) goto LAB_02c4b034;
    Mine_Slider_Time_Reload(uVar5,*(undefined4 *)(lVar3 + 0x78));
    if (*(long *)(lVar3 + 0x98) == 0) goto LAB_02c4b034;
    Mine_Slider_Dia_Reload(*(long *)(lVar3 + 0x98),*(undefined4 *)(lVar3 + 100));
    if ((*(long *)(lVar3 + 0x98) == 0) ||
       (lVar2 = *(long *)(*(long *)(lVar3 + 0x98) + 0x20), lVar2 == 0)) goto LAB_02c4b034;
    SlicedFilledImage_set_fillAmount_0x60005d0(0,lVar2,0);
  }
  puVar1 = PTR_DAT_05e5d338;
  fVar6 = *(float *)(lVar3 + 0x74);
  if (0.0 < fVar6) {
    lVar2 = *(long *)PTR_DAT_05e5d338;
    if (*(int *)(lVar2 + 0xe4) == 0) {
      func_0x029f5bd0();
      lVar2 = *(long *)puVar1;
      fVar6 = *(float *)(lVar3 + 0x74);
    }
    if (**(char **)(lVar2 + 0xb8) != '\0') {
      fVar4 = (float)Time_get_deltaTime_0x6000ee5(0);
      *(float *)(lVar3 + 0x74) = fVar6 - fVar4;
      if (*(long *)(lVar3 + 0x98) != 0) {
        Mine_Slider_Time_Reload(fVar6 - fVar4,*(undefined4 *)(lVar3 + 0x78));
        *(undefined8 *)(param_1 + 0x18) = 0;
        Managed_WriteBarrier((undefined8 *)(param_1 + 0x18),0);
        *(undefined4 *)(param_1 + 0x10) = 1;
        return 1;
      }
LAB_02c4b034:
                    /* WARNING: Subroutine does not return */
      Throw_NullReference_Wrapper();
    }
  }
  if (fVar6 <= 0.0) {
    Mine_manager_Game_End(lVar3);
  }
  return 0;
}

