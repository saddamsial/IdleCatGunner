/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x295a824, Ghidra VA 02a5a824. */

uint MetadataCache_Init_candidate(void)

{
  uint uVar1;
  long lVar2;
  uint uVar3;
  int iVar4;
  undefined8 uVar5;
  long lVar6;
  ulong uVar7;
  ulong uVar8;
  undefined8 *puVar9;
  long lVar10;
  undefined8 *puVar11;
  byte abStack_98 [16];
  undefined8 uStack_88;
  ulong uStack_80;
  ulong uStack_78;
  ulong uStack_70;
  int iStack_64;
  
  uVar3 = Metadata_Load_Transform(0x6272848,0x627284c);
  if ((uVar3 & 1) != 0) {
    func_0x02a10734(*(undefined8 *)(puRam0000000006272838 + 2),*puRam0000000006272838);
    func_0x02a109f4(*(undefined4 *)(lRam0000000006272840 + 4));
    func_0x02a10a0c(*(undefined4 *)(lRam0000000006272840 + 8));
    func_0x02a5ac24(0x62725d8,(long)(int)puRam0000000006272838[4]);
    if (0 < (int)puRam0000000006272838[4]) {
      lVar6 = 0;
      lVar10 = 0;
      do {
        func_0x02a5ac74(0x62725d8,*(long *)(puRam0000000006272838 + 6) + lVar6);
        lVar10 = lVar10 + 1;
        lVar6 = lVar6 + 8;
      } while (lVar10 < (int)puRam0000000006272838[4]);
    }
    lVar10 = *(long *)(lRam0000000006272830 + 0x60);
    uVar1 = *(uint *)(lRam0000000006272830 + 0x58);
    uVar7 = (ulong)uVar1;
    if ((cRam00000000062727f8 != '\0') && (lRam00000000062727e8 != 0)) {
      func_0x05afc010();
    }
    lVar6 = 0;
    if (uVar1 != 0) {
      lVar6 = LZCOUNT(uVar7) * -2 + 0x7e;
    }
    func_0x02a5f494(lVar10,lVar10 + uVar7 * 0x38,&uStack_80,lVar6,1);
    cRam00000000062727f8 = '\0';
    lVar6 = *(long *)(lRam0000000006272830 + 0x70);
    uVar1 = *(uint *)(lRam0000000006272830 + 0x68);
    uVar8 = (ulong)uVar1;
    lRam00000000062727e8 = lVar10;
    uRam00000000062727f0 = uVar7;
    if ((cRam0000000006272810 != '\0') && (lRam0000000006272800 != 0)) {
      func_0x05afc010();
    }
    lVar10 = 0;
    if (uVar1 != 0) {
      lVar10 = LZCOUNT(uVar8) * -2 + 0x7e;
    }
    func_0x02a608c0(lVar6,lVar6 + uVar8 * 0x10,&uStack_80,lVar10,1);
    cRam0000000006272810 = '\0';
    lRam0000000006272800 = lVar6;
    uRam0000000006272808 = uVar8;
    lRam0000000006272850 = func_0x02a2a8e4((long)iRam0000000006272848,0x48);
    lRam0000000006272858 = func_0x02a2a8e4((long)iRam000000000627284c,0x58);
    if (0 < iRam0000000006272848) {
      uVar7 = 0;
      do {
        lVar6 = lRam0000000006272850;
        puVar9 = (undefined8 *)(lRam0000000006272850 + uVar7 * 0x48);
        func_0x02a441b4(puVar9,uVar7 & 0xffffffff,&iStack_64);
        lVar10 = 0;
        if (iStack_64 != -1) {
          lVar10 = lRam0000000006272858 + (long)iStack_64 * 0x58;
        }
        puVar9[2] = lVar10;
        func_0x029fc894(abStack_98,*puVar9);
        func_0x02a2b424(&uStack_80,abStack_98);
        if ((abStack_98[0] & 1) != 0) {
          func_0x05afb6f0(uStack_88);
        }
        uVar8 = uStack_80 >> 1 & 0x7f;
        if ((uStack_80 & 1) != 0) {
          uVar8 = uStack_78;
        }
        uVar5 = func_0x02a2a8e4(uVar8 + 1,1);
        *(undefined8 *)(lVar6 + uVar7 * 0x48 + 8) = uVar5;
        uVar8 = (ulong)&uStack_80 | 1;
        if ((uStack_80 & 1) != 0) {
          uVar8 = uStack_70;
        }
        func_0x05afb990(uVar5,uVar8);
        uVar8 = (ulong)*(uint *)(lRam0000000006272830 + 0x78);
        if (*(uint *)(lRam0000000006272830 + 0x78) != 0) {
          uVar5 = *puVar9;
          puVar9 = *(undefined8 **)(lRam0000000006272830 + 0x80);
          do {
            puVar11 = (undefined8 *)*puVar9;
            iVar4 = func_0x05afb7b0(uVar5,*puVar11);
            if (iVar4 == 0) {
              *(undefined8 **)(lVar6 + uVar7 * 0x48 + 0x38) = puVar11;
            }
            uVar8 = uVar8 - 1;
            puVar9 = puVar9 + 1;
          } while (uVar8 != 0);
        }
        *(undefined1 *)(lVar6 + uVar7 * 0x48 + 0x44) = 0;
        if ((uStack_80 & 1) != 0) {
          func_0x05afb6f0(uStack_70);
        }
        uVar7 = uVar7 + 1;
      } while ((long)uVar7 < (long)iRam0000000006272848);
      if (0 < iRam0000000006272848) {
        lVar10 = 0;
        uVar7 = 0;
        do {
          lVar2 = lRam0000000006272858;
          func_0x02a44248(lRam0000000006272858 + lVar10,uVar7 & 0xffffffff,&uStack_80);
          lVar6 = 0;
          if ((int)uStack_80 != -1) {
            lVar6 = lRam0000000006272850 + (long)(int)uStack_80 * 0x48;
          }
          *(long *)(lVar2 + lVar10) = lVar6;
          func_0x02a31960(lVar2 + lVar10);
          uVar7 = uVar7 + 1;
          lVar10 = lVar10 + 0x58;
        } while ((long)uVar7 < (long)iRam0000000006272848);
      }
    }
    func_0x02a5ace8();
    uStack_80 = 0;
    uStack_78 = 0;
    uStack_70 = 0;
    func_0x02a4549c(&uStack_80);
    func_0x02a2d380(&uStack_80);
    if (uStack_80 != 0) {
      uStack_78 = uStack_80;
      func_0x05afb6f0();
    }
  }
  return uVar3 & 1;
}

