/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x294335c, Ghidra VA 02a4335c. */

/* WARNING: Possible PIC construction at 0x02a43900: Changing call to branch */
/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void Metadata_Load_Transform(undefined4 *param_1,int *param_2)

{
  byte bVar1;
  int iVar2;
  int iVar3;
  uint uVar4;
  undefined1 auVar5 [16];
  long lVar6;
  byte *pbVar7;
  long lVar8;
  long lVar9;
  code *pcVar10;
  ulong uVar11;
  ulong uVar12;
  undefined1 auVar13 [16];
  byte bStack_80;
  undefined4 uStack_7f;
  undefined4 uStack_7b;
  undefined2 uStack_77;
  undefined2 uStack_75;
  undefined1 uStack_73;
  undefined1 uStack_72;
  undefined1 uStack_71;
  undefined1 uStack_70;
  undefined2 uStack_6f;
  undefined1 uStack_6d;
  long lStack_68;
  
  lVar9 = tpidr_el0;
  lStack_68 = *(long *)(lVar9 + 0x28);
  uStack_77 = (undefined2)((ulong)_UNK_0175acbd >> 8);
  uStack_7f = (undefined4)((ulong)_UNK_0175acb5 >> 8);
  uStack_6f = 0xbd07;
  lVar8 = 0;
  uStack_6d = 0xe8;
  uStack_73 = (undefined1)_UNK_0116fb40;
  uStack_71 = (undefined1)((ulong)_UNK_0116fb40 >> 0x10);
  uStack_70 = (undefined1)((ulong)_UNK_0116fb40 >> 0x18);
  uStack_72 = 0x71;
  bStack_80 = 0xf6;
  uStack_75 = 0xc512;
  uVar11 = 0x82ab54e2a429c520;
  uStack_7b = (int)_UNK_0116fb48;
  do {
    uVar11 = uVar11 ^ uVar11 << 0xd;
    uVar12 = uVar11 ^ uVar11 >> 7;
    uVar11 = uVar12 ^ uVar12 << 0x11;
    (&bStack_80)[lVar8] =
         (&bStack_80)[lVar8] ^
         (&UNK_0175acc9)
         [(ulong)((uint)(uVar11 >> 0x10) & 0xffff ^ (uint)uVar11 >> 8 ^ (uint)uVar11 >> 0x18 ^
                 (uint)uVar12) & 0xff];
    lVar8 = lVar8 + 1;
  } while (lVar8 != 0x14);
  lVar8 = Metadata_MapFile_candidate(&bStack_80);
  lRam0000000006271ea0 = lVar8;
  if (lVar8 == 0) {
    if (*(long *)(lVar9 + 0x28) == lStack_68) {
      return;
    }
    auVar13 = func_0x05afb240(0);
  }
  else {
    lVar6 = func_0x05afb780(0x198);
    lRam0000000006271ea8 = lVar6;
    func_0x05afb2b0(lVar6,lVar8,0x198);
    lVar9 = 0;
    uVar11 = 0x25ecd3fdf705c15e;
    do {
      uVar11 = uVar11 ^ uVar11 << 0xd;
      uVar12 = uVar11 ^ uVar11 >> 7;
      uVar11 = uVar12 ^ uVar12 << 0x11;
      *(byte *)(lVar6 + lVar9) =
           *(byte *)(lVar6 + lVar9) ^
           (&UNK_0175adc9)
           [(ulong)((uint)(uVar11 >> 0x10) & 0xffff ^ (uint)uVar11 >> 8 ^ (uint)uVar11 >> 0x18 ^
                   (uint)uVar12) & 0xff];
      lVar9 = lVar9 + 1;
    } while (lVar9 != 0x198);
    iVar2 = *(int *)(lVar6 + 0x1c);
    lVar9 = (long)iVar2;
    lRam0000000006271eb0 = lVar6;
    pbVar7 = (byte *)func_0x05afb780(lVar9);
    pbRam0000000006271eb8 = pbVar7;
    func_0x05afb2b0(pbVar7,lVar8 + (*(int *)(lVar6 + 0xb4) + -0x260),lVar9);
    if (iVar2 != 0) {
      uVar11 = 0xda393518189531e9;
      do {
        uVar11 = uVar11 ^ uVar11 << 0xd;
        lVar9 = lVar9 + -1;
        uVar12 = uVar11 ^ uVar11 >> 7;
        uVar11 = uVar12 ^ uVar12 << 0x11;
        *pbVar7 = *pbVar7 ^ (&UNK_0175adc9)
                            [(ulong)((uint)(uVar11 >> 0x10) & 0xffff ^ (uint)uVar11 >> 8 ^
                                     (uint)uVar11 >> 0x18 ^ (uint)uVar12) & 0xff];
        pbVar7 = pbVar7 + 1;
      } while (lVar9 != 0);
    }
    iVar2 = *(int *)(lVar6 + 0x18);
    lVar9 = (long)iVar2;
    pbVar7 = (byte *)func_0x05afb780(lVar9);
    pbRam0000000006271ec0 = pbVar7;
    func_0x05afb2b0(pbVar7,lVar8 + (*(int *)(lVar6 + 0x164) + -0x564),lVar9);
    if (iVar2 != 0) {
      uVar11 = 0x94685d28878e158f;
      do {
        uVar11 = uVar11 ^ uVar11 << 0xd;
        lVar9 = lVar9 + -1;
        uVar12 = uVar11 ^ uVar11 >> 7;
        uVar11 = uVar12 ^ uVar12 << 0x11;
        *pbVar7 = *pbVar7 ^ (&UNK_0175adc9)
                            [(ulong)((uint)(uVar11 >> 0x10) & 0xffff ^ (uint)uVar11 >> 8 ^
                                     (uint)uVar11 >> 0x18 ^ (uint)uVar12) & 0xff];
        pbVar7 = pbVar7 + 1;
      } while (lVar9 != 0);
    }
    iVar2 = *(int *)(lVar6 + 0x13c);
    lVar9 = (long)iVar2;
    pbVar7 = (byte *)func_0x05afb780(lVar9);
    pbRam0000000006271ec8 = pbVar7;
    func_0x05afb2b0(pbVar7,lVar8 + (*(int *)(lVar6 + 0x170) + 0x11b0),lVar9);
    if (iVar2 != 0) {
      uVar11 = 0x975b70e23991c718;
      do {
        uVar11 = uVar11 ^ uVar11 << 0xd;
        lVar9 = lVar9 + -1;
        uVar12 = uVar11 ^ uVar11 >> 7;
        uVar11 = uVar12 ^ uVar12 << 0x11;
        *pbVar7 = *pbVar7 ^ (&UNK_0175adc9)
                            [(ulong)((uint)(uVar11 >> 0x10) & 0xffff ^ (uint)uVar11 >> 8 ^
                                     (uint)uVar11 >> 0x18 ^ (uint)uVar12) & 0xff];
        pbVar7 = pbVar7 + 1;
      } while (lVar9 != 0);
    }
    iVar2 = *(int *)(lVar6 + 0xe8);
    lVar9 = (long)iVar2;
    pbVar7 = (byte *)func_0x05afb780(lVar9);
    pbRam0000000006271ed0 = pbVar7;
    func_0x05afb2b0(pbVar7,lVar8 + (*(int *)(lVar6 + 0x6c) + -0xa80),lVar9);
    if (iVar2 != 0) {
      uVar11 = 0xca950ae85445fec;
      do {
        uVar11 = uVar11 ^ uVar11 << 0xd;
        lVar9 = lVar9 + -1;
        uVar12 = uVar11 ^ uVar11 >> 7;
        uVar11 = uVar12 ^ uVar12 << 0x11;
        *pbVar7 = *pbVar7 ^ (&UNK_0175adc9)
                            [(ulong)((uint)(uVar11 >> 0x10) & 0xffff ^ (uint)uVar11 >> 8 ^
                                     (uint)uVar11 >> 0x18 ^ (uint)uVar12) & 0xff];
        pbVar7 = pbVar7 + 1;
      } while (lVar9 != 0);
    }
    iVar3 = *(int *)(lVar6 + 0x108);
    lVar9 = (long)iVar3;
    pbVar7 = (byte *)func_0x05afb780(lVar9);
    pbRam0000000006271ed8 = pbVar7;
    func_0x05afb2b0(pbVar7,lVar8 + (*(int *)(lVar6 + 0xc0) + -0xaf8),lVar9);
    if (iVar3 != 0) {
      uVar11 = 0x138e6c40f7365260;
      do {
        uVar11 = uVar11 ^ uVar11 << 0xd;
        lVar9 = lVar9 + -1;
        uVar12 = uVar11 ^ uVar11 >> 7;
        uVar11 = uVar12 ^ uVar12 << 0x11;
        *pbVar7 = *pbVar7 ^ (&UNK_0175adc9)
                            [(ulong)((uint)(uVar11 >> 0x10) & 0xffff ^ (uint)uVar11 >> 8 ^
                                     (uint)uVar11 >> 0x18 ^ (uint)uVar12) & 0xff];
        pbVar7 = pbVar7 + 1;
      } while (lVar9 != 0);
    }
    iVar3 = *(int *)(lVar6 + 0x94);
    lVar9 = (long)iVar3;
    pbVar7 = (byte *)func_0x05afb780(lVar9);
    pbRam0000000006271ee0 = pbVar7;
    func_0x05afb2b0(pbVar7,lVar8 + (*(int *)(lVar6 + 0xe4) + -0x1358),lVar9);
    if (iVar3 != 0) {
      uVar11 = 0x814734271052ff15;
      do {
        uVar11 = uVar11 ^ uVar11 << 0xd;
        lVar9 = lVar9 + -1;
        uVar12 = uVar11 ^ uVar11 >> 7;
        uVar11 = uVar12 ^ uVar12 << 0x11;
        *pbVar7 = *pbVar7 ^ (&UNK_0175adc9)
                            [(ulong)((uint)(uVar11 >> 0x10) & 0xffff ^ (uint)uVar11 >> 8 ^
                                     (uint)uVar11 >> 0x18 ^ (uint)uVar12) & 0xff];
        pbVar7 = pbVar7 + 1;
      } while (lVar9 != 0);
    }
    iVar3 = *(int *)(lVar6 + 0x188);
    lVar9 = (long)iVar3;
    pbVar7 = (byte *)func_0x05afb780(lVar9);
    pbRam0000000006271ee8 = pbVar7;
    func_0x05afb2b0(pbVar7,lVar8 + (*(int *)(lVar6 + 0x68) + -0x13e0),lVar9);
    if (iVar3 != 0) {
      uVar11 = 0x72f58e24531199dc;
      do {
        uVar11 = uVar11 ^ uVar11 << 0xd;
        lVar9 = lVar9 + -1;
        uVar12 = uVar11 ^ uVar11 >> 7;
        uVar11 = uVar12 ^ uVar12 << 0x11;
        *pbVar7 = *pbVar7 ^ (&UNK_0175adc9)
                            [(ulong)((uint)(uVar11 >> 0x10) & 0xffff ^ (uint)uVar11 >> 8 ^
                                     (uint)uVar11 >> 0x18 ^ (uint)uVar12) & 0xff];
        pbVar7 = pbVar7 + 1;
      } while (lVar9 != 0);
    }
    auVar5._8_8_ = 0;
    auVar5._0_8_ = (long)*(int *)(lVar6 + 0x44);
    uRam0000000006271ef0 = (undefined4)((ulong)(long)*(int *)(lVar6 + 0x44) / 0x28);
    *param_1 = uRam0000000006271ef0;
    *param_2 = iVar2 >> 6;
    uRam0000000006271ef8 =
         func_0x02a2a8e4((SUB168(auVar5 * ZEXT816(0xcccccccccccccccd),8) << 0x1b) >> 0x20,0x18);
    uRam0000000006271f00 = func_0x02a2a8e4((long)*(int *)(lRam0000000006271e90 + 0x30),8);
    uRam0000000006271f08 =
         func_0x02a2a8e4((ulong)(long)*(int *)(lRam0000000006271eb0 + 0x28) / 0x58,8);
    uRam0000000006271e88 =
         func_0x02a2a8e4((ulong)(long)*(int *)(lRam0000000006271eb0 + 0x18) / 0x24,8);
    auVar13._8_8_ = &UNK_02a43a28;
    auVar13._0_8_ = &UNK_02a439e4;
  }
  if (0 < *(int *)(lRam0000000006271e90 + 0x30)) {
    lVar8 = 0;
    do {
      bVar1 = *(byte *)(*(long *)(*(long *)(lRam0000000006271e90 + 0x38) + lVar8 * 8) + 10);
      if ((bVar1 < 0x1f) &&
         ((uVar4 = 1 << (ulong)(bVar1 & 0x1f), pcVar10 = auVar13._0_8_, (uVar4 & 0x13467ffe) != 0 ||
          (pcVar10 = auVar13._8_8_, (uVar4 & 0x40080000) != 0)))) {
        (*pcVar10)();
      }
      lVar8 = lVar8 + 1;
    } while (lVar8 < *(int *)(lRam0000000006271e90 + 0x30));
  }
  return;
}

