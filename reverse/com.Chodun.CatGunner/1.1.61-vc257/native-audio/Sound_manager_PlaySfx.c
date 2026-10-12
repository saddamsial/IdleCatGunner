/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b1f10c, Ghidra VA 02c1f10c. */

void Sound_manager_PlaySfx(undefined4 param_1,long param_2,undefined4 param_3,ulong param_4)

{
  undefined *puVar1;
  undefined *puVar2;
  int iVar3;
  ulong uVar4;
  long lVar5;
  undefined8 uVar6;
  float fVar7;
  undefined4 uVar8;
  undefined4 uVar9;
  undefined8 uStack_60;
  long lStack_58;
  
  puVar2 = PTR_DAT_05e62670;
  puVar1 = PTR_DAT_05e591c0;
  if ((bRam000000000625bf70 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e62a18);
    func_0x029f5a50(PTR_DAT_05e62a20);
    func_0x029f5a50(PTR_DAT_05e62a28);
    func_0x029f5a50(PTR_DAT_05e62a30);
    func_0x029f5a50(PTR_DAT_05e62a38);
    func_0x029f5a50(PTR_DAT_05e62a40);
    func_0x029f5a50(PTR_DAT_05e62a48);
    func_0x029f5a50(PTR_DAT_05e591c0);
    func_0x029f5a50(PTR_DAT_05e62670);
    bRam000000000625bf70 = 1;
  }
  uStack_60 = 0;
  lStack_58 = 0;
  uVar6 = *(undefined8 *)(*(long *)(*(long *)puVar2 + 0xb8) + 8);
  if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  uVar4 = Object_op_Inequality_0x6000ded(uVar6,0,0);
  if ((uVar4 & 1) != 0) {
    lVar5 = *(long *)(*(long *)(*(long *)puVar2 + 0xb8) + 8);
    if (lVar5 == 0) goto LAB_02c1f3a8;
    if (*(char *)(lVar5 + 0x21) != '\0') {
      return;
    }
  }
  if (*(long *)(param_2 + 0x40) == 0) goto LAB_02c1f3a8;
  uVar4 = func_0x03df20e0(*(long *)(param_2 + 0x40),param_3,&lStack_58,
                          *(undefined8 *)PTR_DAT_05e62a20);
  if ((uVar4 & 1) == 0) {
    return;
  }
  if (*(char *)(param_2 + 0x38) != '\0') {
    iVar3 = Time_get_frameCount_0x6000eee(0);
    if (*(long *)(param_2 + 0x48) == 0) goto LAB_02c1f3a8;
    uVar4 = func_0x03debb70(*(long *)(param_2 + 0x48),param_3,(long)&uStack_60 + 4,
                            *(undefined8 *)PTR_DAT_05e62a28);
    if (((uVar4 & 1) != 0) && (uStack_60._4_4_ == iVar3)) {
      return;
    }
    if (*(long *)(param_2 + 0x48) == 0) goto LAB_02c1f3a8;
    func_0x03dea1f0(*(long *)(param_2 + 0x48),param_3,iVar3,*(undefined8 *)PTR_DAT_05e62a30);
  }
  if (*(char *)(param_2 + 0x39) != '\0') {
    fVar7 = (float)Time_get_unscaledTime_0x6000ee6(0);
    if (*(long *)(param_2 + 0x50) == 0) goto LAB_02c1f3a8;
    uVar4 = func_0x03df52e4(*(long *)(param_2 + 0x50),param_3,&uStack_60,
                            *(undefined8 *)PTR_DAT_05e62a18);
    if (((uVar4 & 1) != 0) && (fVar7 - (float)uStack_60 < *(float *)(param_2 + 0x3c))) {
      return;
    }
    if (*(long *)(param_2 + 0x50) == 0) goto LAB_02c1f3a8;
    func_0x03df3958(fVar7,*(long *)(param_2 + 0x50),param_3,*(undefined8 *)PTR_DAT_05e62a38);
  }
  if ((param_4 & 0xff) == 0) {
    if (lStack_58 == 0) goto LAB_02c1f3a8;
    uVar9 = *(undefined4 *)(lStack_58 + 0x20);
  }
  else {
    uVar9 = (undefined4)(param_4 >> 0x20);
  }
  if (*(long *)(param_2 + 0x20) != 0) {
    uVar8 = AudioSource_get_pitch_0x600001f(*(long *)(param_2 + 0x20),0);
    if (((*(long *)(param_2 + 0x20) != 0) &&
        (AudioSource_set_pitch_0x6000020(param_1,*(long *)(param_2 + 0x20),0), lStack_58 != 0)) &&
       (*(long *)(param_2 + 0x20) != 0)) {
      AudioSource_PlayOneShot_0x6000026
                (uVar9,*(long *)(param_2 + 0x20),*(undefined8 *)(lStack_58 + 0x18),0);
      if (*(long *)(param_2 + 0x20) != 0) {
        AudioSource_set_pitch_0x6000020(uVar8,*(long *)(param_2 + 0x20),0);
        return;
      }
    }
  }
LAB_02c1f3a8:
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

