/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b3a200, Ghidra VA 02c3a200. */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void Cat_Start(long param_1)

{
  undefined *puVar1;
  char cVar2;
  long lVar3;
  undefined8 uVar4;
  undefined4 uVar5;
  
  puVar1 = PTR_DAT_05e631d8;
  if ((bRam000000000625c08d & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e631d8);
    func_0x029f5a50(PTR_DAT_05e631e8);
    bRam000000000625c08d = 1;
  }
  lVar3 = *(long *)puVar1;
  uVar4 = *(undefined8 *)(param_1 + 0xd8);
  *(undefined4 *)(param_1 + 500) = 0x43020000;
  if (*(int *)(lVar3 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  puVar1 = PTR_DAT_05e631e8;
  Cat_ApplyHandZ_0x600075e(0x43020000,uVar4);
  Cat_ApplyHandZ_0x600075e(*(undefined4 *)(param_1 + 500),*(undefined8 *)(param_1 + 0xd0));
  if (*(char *)(param_1 + 0x1b0) != '\0') {
    uVar4 = Object_GetInstanceID_0x6000da3(param_1,0);
    Random_InitState_0x6000ba3(uVar4,0);
    uVar5 = Random_Range_0x6000ba6(_UNK_0116c030,_UNK_0116bf44,0);
    *(undefined4 *)(param_1 + 0x248) = uVar5;
    uVar5 = Random_Range_0x6000ba6(_UNK_0116be9c,_UNK_0116c098,0);
    *(undefined4 *)(param_1 + 0x24c) = uVar5;
    uVar5 = Random_Range_0x6000ba6(_UNK_0116c07c,0x40600000,0);
    *(undefined4 *)(param_1 + 0x254) = uVar5;
    uVar5 = Random_Range_0x6000ba6(0,_UNK_0116c21c,0);
    *(undefined4 *)(param_1 + 0x264) = uVar5;
    cVar2 = cRam000000000625b26f;
    *(undefined4 *)(param_1 + 0xac) = uVar5;
    *(undefined4 *)(param_1 + 0x22c) = 0;
    if (cVar2 == '\0') {
      func_0x029f5a50(PTR_DAT_05e58bf8);
      cRam000000000625b26f = '\x01';
    }
    uVar5 = *(undefined4 *)(*(undefined8 **)(*(long *)PTR_DAT_05e58bf8 + 0xb8) + 1);
    *(undefined8 *)(param_1 + 0x230) = **(undefined8 **)(*(long *)PTR_DAT_05e58bf8 + 0xb8);
    *(undefined4 *)(param_1 + 0x238) = uVar5;
  }
  uVar4 = func_0x029f5b40(*(undefined8 *)puVar1,*(undefined4 *)(param_1 + 0x19c));
  *(undefined8 *)(param_1 + 0x1a8) = uVar4;
  Managed_WriteBarrier(param_1 + 0x1a8);
  return;
}

