/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b49908, Ghidra VA 02c49908. */

void Mine_manager_Game_Start(long param_1)

{
  undefined *puVar1;
  long lVar2;
  undefined8 uVar3;
  undefined8 *puVar4;
  
  puVar1 = PTR_DAT_05e5d338;
  if ((bRam000000000625c10b & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5d338);
    bRam000000000625c10b = 1;
  }
  lVar2 = *(long *)puVar1;
  if (*(int *)(lVar2 + 0xe4) == 0) {
    func_0x029f5bd0();
    lVar2 = *(long *)puVar1;
  }
  **(undefined1 **)(lVar2 + 0xb8) = 1;
  uVar3 = Mine_manager_Game_Cor(param_1);
  puVar4 = (undefined8 *)(param_1 + 0x80);
  *puVar4 = uVar3;
  Managed_WriteBarrier(puVar4,uVar3);
  MonoBehaviour_StartCoroutine_0x6000d43(param_1,*puVar4,0);
  return;
}

