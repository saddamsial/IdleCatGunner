/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2953e94, Ghidra VA 02a53e94. */

undefined8 Metadata_MapFile_candidate(undefined *param_1)

{
  ulong uVar1;
  undefined8 uVar2;
  undefined8 uVar3;
  undefined *puStack_70;
  undefined8 uStack_68;
  byte abStack_60 [8];
  ulong uStack_58;
  ulong uStack_50;
  byte abStack_48 [8];
  ulong uStack_40;
  ulong uStack_38;
  ulong uStack_30;
  ulong uStack_28;
  
  func_0x02a28adc(abStack_60);
  puStack_70 = &UNK_011a833b;
  uStack_68 = 8;
  uStack_28 = (ulong)(abStack_60[0] >> 1);
  uStack_30 = (ulong)abStack_60 | 1;
  if ((abStack_60[0] & 1) != 0) {
    uStack_28 = uStack_58;
    uStack_30 = uStack_50;
  }
  func_0x02a0092c(abStack_48,&uStack_30,&puStack_70);
  if ((abStack_60[0] & 1) != 0) {
    func_0x05afb6f0(uStack_50);
  }
  uStack_68 = func_0x05afb800(param_1);
  uStack_28 = (ulong)(abStack_48[0] >> 1);
  uStack_30 = (ulong)abStack_48 | 1;
  if ((abStack_48[0] & 1) != 0) {
    uStack_28 = uStack_40;
    uStack_30 = uStack_38;
  }
  puStack_70 = param_1;
  func_0x02a0092c(abStack_60,&uStack_30,&puStack_70);
  uStack_30 = uStack_30 & 0xffffffff00000000;
  uVar2 = func_0x02a263e8(abStack_60,3,1,1,0,&uStack_30);
  if ((int)uStack_30 == 0) {
    uVar3 = func_0x02a2a908();
    func_0x02a26638(uVar2,&uStack_30);
    if ((int)uStack_30 == 0) goto LAB_02a53fbc;
    func_0x02a2a918(uVar3);
  }
  else {
    uVar1 = (ulong)abStack_60 | 1;
    if ((abStack_60[0] & 1) != 0) {
      uVar1 = uStack_50;
    }
    func_0x02a2a788(&UNK_011a8344,uVar1);
  }
  uVar3 = 0;
LAB_02a53fbc:
  if ((abStack_60[0] & 1) != 0) {
    func_0x05afb6f0(uStack_50);
  }
  if ((abStack_48[0] & 1) != 0) {
    func_0x05afb6f0(uStack_38);
  }
  return uVar3;
}

