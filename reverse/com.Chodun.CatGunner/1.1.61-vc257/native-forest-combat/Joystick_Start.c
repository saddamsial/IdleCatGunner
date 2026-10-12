/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2a876ac, Ghidra VA 02b876ac. */

void Joystick_Start(long param_1)

{
  undefined *puVar1;
  undefined *puVar2;
  undefined *puVar3;
  ulong uVar4;
  undefined8 uVar5;
  long lVar6;
  undefined8 *puVar7;
  
  puVar3 = PTR_DAT_05e5be98;
  puVar2 = PTR_DAT_05e5ba78;
  puVar1 = PTR_DAT_05e591c0;
  if ((bRam000000000625b905 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5ba78);
    func_0x029f5a50(PTR_DAT_05e5be98);
    func_0x029f5a50(PTR_DAT_05e58f08);
    func_0x029f5a50(PTR_DAT_05e591c0);
    func_0x029f5a50(PTR_DAT_05e5d8a0);
    bRam000000000625b905 = 1;
  }
  uVar5 = *(undefined8 *)puVar3;
  *(ulong *)(param_1 + 0x20) =
       CONCAT44(ABS((float)((ulong)*(undefined8 *)(param_1 + 0x20) >> 0x20)),
                ABS((float)*(undefined8 *)(param_1 + 0x20)));
  uVar5 = func_0x02fe5f2c(param_1,uVar5);
  *(undefined8 *)(param_1 + 0x40) = uVar5;
  func_0x029f59f4();
  uVar5 = func_0x02fe64b8(param_1,*(undefined8 *)puVar2);
  puVar7 = (undefined8 *)(param_1 + 0x48);
  *puVar7 = uVar5;
  func_0x029f59f4(puVar7,uVar5);
  uVar5 = *puVar7;
  if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  uVar4 = Object_op_Equality_0x6000dec(uVar5,0,0);
  puVar1 = PTR_DAT_05e5d8a0;
  if ((uVar4 & 1) != 0) {
    if (*(int *)(*(long *)PTR_DAT_05e58f08 + 0xe4) == 0) {
      func_0x029f5bd0();
    }
    Debug_LogError_0x6000340(*(undefined8 *)puVar1,0);
  }
  if (*(long *)(param_1 + 0x30) != 0) {
    RectTransform_set_pivot_0x6000f30(0x3f000000,0x3f000000,*(long *)(param_1 + 0x30),0);
    if (*(long *)(param_1 + 0x38) != 0) {
      RectTransform_set_anchorMin_0x6000f28(0x3f000000,0x3f000000,*(long *)(param_1 + 0x38),0);
      if (*(long *)(param_1 + 0x38) != 0) {
        RectTransform_set_anchorMax_0x6000f2a(0x3f000000,0x3f000000,*(long *)(param_1 + 0x38),0);
        if (*(long *)(param_1 + 0x38) != 0) {
          RectTransform_set_pivot_0x6000f30(0x3f000000,0x3f000000,*(long *)(param_1 + 0x38),0);
          lVar6 = *(long *)(param_1 + 0x38);
          if (cRam000000000625b271 == '\0') {
            func_0x029f5a50(PTR_DAT_05e59608);
            cRam000000000625b271 = '\x01';
          }
          if (lVar6 != 0) {
            RectTransform_set_anchoredPosition_0x6000f2c
                      (**(undefined4 **)(*(long *)PTR_DAT_05e59608 + 0xb8),
                       (*(undefined4 **)(*(long *)PTR_DAT_05e59608 + 0xb8))[1],lVar6,0);
            return;
          }
        }
      }
    }
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

