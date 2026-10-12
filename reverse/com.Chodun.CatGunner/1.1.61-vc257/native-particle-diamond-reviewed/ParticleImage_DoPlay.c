/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x48bd040, Ghidra VA 049bd040. */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void ParticleImage_DoPlay(long param_1)

{
  uint uVar1;
  undefined *puVar2;
  ulong uVar3;
  int iVar4;
  long lVar5;
  long lVar6;
  
  if ((bRam000000000626283a & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e85fb0);
    func_0x029f5a50(PTR_DAT_05e85fb8);
    bRam000000000626283a = 1;
  }
  uVar3 = ParticleImage_get_isMain_0x6000017(param_1);
  if ((((uVar3 & 1) != 0) && (lVar5 = *(long *)(param_1 + 0xe0), lVar5 != 0)) &&
     (uVar1 = *(uint *)(lVar5 + 0x18), 0 < (int)uVar1)) {
    lVar6 = 0;
    do {
      if (uVar1 <= (uint)lVar6) {
                    /* WARNING: Subroutine does not return */
        Throw_Index_Wrapper();
      }
      if (*(long *)(lVar5 + 0x20 + lVar6 * 8) == 0) goto LAB_049bd124;
      ParticleImage_DoPlay();
      uVar1 = *(uint *)(lVar5 + 0x18);
      lVar6 = lVar6 + 1;
    } while ((int)lVar6 < (int)uVar1);
  }
  lVar5 = *(long *)(param_1 + 0x3130);
  *(undefined4 *)(param_1 + 0x31f0) = 0;
  *(undefined4 *)(param_1 + 0x3204) = 0;
  *(float *)(param_1 + 0x31fc) = 1.0 / *(float *)(param_1 + 0x3120);
  puVar2 = PTR_DAT_05e85fb8;
  if (lVar5 != 0) {
    iVar4 = 0;
    do {
      if (*(int *)(lVar5 + 0x18) <= iVar4) {
        *(int *)(param_1 + 0x322e) = (int)_UNK_01170018;
        if (*(char *)(param_1 + 0x16d) != '\0') {
          ParticleImage_Prewarm_0x60000de(param_1);
        }
        if (*(int *)(param_1 + 300) == 1) {
          Time_get_deltaTime_0x6000ee5(0);
        }
        else {
          Time_get_unscaledDeltaTime_0x6000ee8(0);
        }
        ParticleImage_Simulate(param_1,*(undefined1 *)(param_1 + 0x16d));
        if (*(long *)(param_1 + 0x3238) != 0) {
          UnityEvent_Invoke_0x6001051(*(long *)(param_1 + 0x3238),0);
          return;
        }
        break;
      }
      lVar6 = func_0x0452c8d8(lVar5,iVar4,*(undefined8 *)puVar2);
      if (lVar6 == 0) break;
      lVar5 = *(long *)(param_1 + 0x3130);
      iVar4 = iVar4 + 1;
      *(undefined1 *)(lVar6 + 0x18) = 0;
    } while (lVar5 != 0);
  }
LAB_049bd124:
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

