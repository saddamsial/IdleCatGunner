/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b44fc4, Ghidra VA 02c44fc4. */

void Boss_Game_Fail(long param_1)

{
  undefined8 uVar1;
  long lVar2;
  undefined4 *puVar3;
  long lVar4;
  long lVar5;
  undefined8 uStack_50;
  undefined8 uStack_48;
  undefined8 uStack_40;
  ulong uStack_38;
  undefined8 uStack_30;
  undefined8 uStack_28;
  
  if ((bRam000000000625c0d1 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e61488);
    func_0x029f5a50(PTR_DAT_05e61878);
    bRam000000000625c0d1 = 1;
  }
  lVar5 = *(long *)(param_1 + 0x40);
  if (cRam000000000625b26f == '\0') {
    func_0x029f5a50(PTR_DAT_05e58bf8);
    cRam000000000625b26f = '\x01';
  }
  if (lVar5 != 0) {
    puVar3 = *(undefined4 **)(*(long *)PTR_DAT_05e58bf8 + 0xb8);
    Rigidbody_set_linearVelocity_0x6000096(*puVar3,puVar3[1],puVar3[2],lVar5,0);
    if (*(long *)(param_1 + 0x38) != 0) {
      Animator_SetBool_0x6000033(*(long *)(param_1 + 0x38),*(undefined8 *)PTR_DAT_05e61878,0,0);
      lVar5 = *(long *)(param_1 + 0x38);
      if (lVar5 != 0) {
        lVar2 = *(long *)PTR_DAT_05e61488;
        if ((bRam000000000626a530 & 1) == 0) {
          func_0x029f5a50(PTR_DAT_05ed56f8,lVar2,0);
          func_0x029f5a50(PTR_DAT_05ed5178);
          func_0x029f5a50(PTR_DAT_05e74168);
          bRam000000000626a530 = 1;
        }
        uStack_40 = 0;
        uStack_38 = 0;
        uStack_50 = 0;
        uStack_48 = 0;
        if (lVar5 != 0) {
          lVar4 = *(long *)(lVar5 + 0x10);
          if (lVar4 == 0) {
            func_0x057f539c(lVar5,0);
          }
          if (lVar2 == 0) {
            uStack_50 = 0;
            uStack_48 = 0;
          }
          else if (*(int *)(lVar2 + 0x10) == 0) {
            uVar1 = func_0x048aa3d0(1,0);
            uVar1 = func_0x048aa3d8(uVar1,0);
            uStack_30 = 0;
            uStack_28 = 0;
            func_0x057f551c(&uStack_30,uVar1,0,0);
            uStack_48 = uStack_28;
            uStack_50 = uStack_30;
          }
          else {
            if (cRam0000000006260d8c == '\0') {
              func_0x029f5a50(PTR_DAT_05e6e370);
              cRam0000000006260d8c = '\x01';
            }
            uStack_40 = func_0x046bdd44(lVar2,0);
            uStack_38 = (ulong)*(uint *)(lVar2 + 0x10);
            uVar1 = func_0x0383b870(&uStack_40,*(undefined8 *)PTR_DAT_05ed5178);
            func_0x057f551c(&uStack_50,uVar1,uStack_38 & 0xffffffff,0);
          }
          if (pcRam000000000626a5b8 == (code *)0x0) {
            pcRam000000000626a5b8 = (code *)func_0x029f5a0c(&UNK_01187e56);
          }
          (*pcRam000000000626a5b8)(lVar4,&uStack_50);
          return;
        }
                    /* WARNING: Subroutine does not return */
        Throw_NullReference_Wrapper();
      }
    }
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

