/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b9cec4, Ghidra VA 02c9cec4. */

void Shop_manager__cctor(void)

{
  undefined *puVar1;
  undefined *puVar2;
  undefined *puVar3;
  undefined *puVar4;
  undefined *puVar5;
  undefined *puVar6;
  undefined *puVar7;
  undefined *puVar8;
  undefined *puVar9;
  undefined *puVar10;
  undefined8 uVar11;
  long lVar12;
  long *plVar13;
  undefined8 *puVar14;
  
  puVar10 = PTR_DAT_05e64688;
  puVar9 = PTR_DAT_05e626b0;
  puVar8 = PTR_DAT_05e62680;
  puVar7 = PTR_DAT_05e62628;
  puVar6 = PTR_DAT_05e5da80;
  puVar5 = PTR_DAT_05e5da78;
  puVar4 = PTR_DAT_05e5d920;
  puVar3 = PTR_DAT_05e5d790;
  puVar2 = PTR_DAT_05e5a8a8;
  puVar1 = PTR_DAT_05e5a8a0;
  if ((bRam000000000625c46c & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e626b0);
    func_0x029f5a50(PTR_DAT_05e5da70);
    func_0x029f5a50(PTR_DAT_05e5da78);
    func_0x029f5a50(PTR_DAT_05e5da80);
    func_0x029f5a50(PTR_DAT_05e5e338);
    func_0x029f5a50(PTR_DAT_05e5bde8);
    func_0x029f5a50(PTR_DAT_05e5bde0);
    func_0x029f5a50(PTR_DAT_05e5d790);
    func_0x029f5a50(PTR_DAT_05e62680);
    func_0x029f5a50(PTR_DAT_05e5a8a8);
    func_0x029f5a50(PTR_DAT_05e62628);
    func_0x029f5a50(PTR_DAT_05e5a8a0);
    func_0x029f5a50(PTR_DAT_05e5d920);
    func_0x029f5a50(PTR_DAT_05e64688);
    func_0x029f5a50(PTR_DAT_05e64690);
    func_0x029f5a50(PTR_DAT_05e64698);
    func_0x029f5a50(PTR_DAT_05e646a0);
    func_0x029f5a50(PTR_DAT_05e646a8);
    func_0x029f5a50(PTR_DAT_05e646b0);
    func_0x029f5a50(PTR_DAT_05e646b8);
    func_0x029f5a50(PTR_DAT_05e646c0);
    func_0x029f5a50(PTR_DAT_05e646c8);
    func_0x029f5a50(PTR_DAT_05e646d0);
    func_0x029f5a50(PTR_DAT_05e646d8);
    func_0x029f5a50(PTR_DAT_05e646e0);
    func_0x029f5a50(PTR_DAT_05e646e8);
    func_0x029f5a50(PTR_DAT_05e646f0);
    func_0x029f5a50(PTR_DAT_05e646f8);
    func_0x029f5a50(PTR_DAT_05e64700);
    func_0x029f5a50(PTR_DAT_05e64708);
    func_0x029f5a50(PTR_DAT_05e64710);
    func_0x029f5a50(PTR_DAT_05e64718);
    func_0x029f5a50(PTR_DAT_05e64720);
    func_0x029f5a50(PTR_DAT_05e64728);
    func_0x029f5a50(PTR_DAT_05e64730);
    func_0x029f5a50(PTR_DAT_05e64738);
    func_0x029f5a50(PTR_DAT_05e64740);
    func_0x029f5a50(PTR_DAT_05e64748);
    func_0x029f5a50(PTR_DAT_05e64750);
    func_0x029f5a50(PTR_DAT_05e64758);
    func_0x029f5a50(PTR_DAT_05e64760);
    func_0x029f5a50(PTR_DAT_05e64768);
    func_0x029f5a50(PTR_DAT_05e64770);
    func_0x029f5a50(PTR_DAT_05e64778);
    func_0x029f5a50(PTR_DAT_05e64498);
    func_0x029f5a50(PTR_DAT_05e64780);
    func_0x029f5a50(PTR_DAT_05e5daf8);
    func_0x029f5a50(PTR_DAT_05e64788);
    func_0x029f5a50(PTR_DAT_05e64790);
    func_0x029f5a50(PTR_DAT_05e64798);
    func_0x029f5a50(PTR_DAT_05e647a0);
    func_0x029f5a50(PTR_DAT_05e647a8);
    bRam000000000625c46c = 1;
  }
  uVar11 = func_0x029f5b40(*(undefined8 *)puVar9,5);
  puVar14 = (undefined8 *)(*(long *)(*(long *)puVar4 + 0xb8) + 0x28);
  *puVar14 = uVar11;
  Managed_WriteBarrier(puVar14,uVar11);
  uVar11 = func_0x029f5b40(*(undefined8 *)puVar3,5);
  RuntimeHelpers_InitializeArray_0x6002429(uVar11,*(undefined8 *)puVar10,0);
  puVar14 = (undefined8 *)(*(long *)(*(long *)puVar4 + 0xb8) + 0x30);
  *puVar14 = uVar11;
  Managed_WriteBarrier(puVar14,uVar11);
  uVar11 = func_0x029f5cec(*(undefined8 *)puVar1);
  func_0x0452c340(uVar11,*(undefined8 *)puVar2);
  puVar14 = (undefined8 *)(*(long *)(*(long *)puVar4 + 0xb8) + 0x40);
  *puVar14 = uVar11;
  Managed_WriteBarrier(puVar14,uVar11);
  uVar11 = func_0x029f5cec(*(undefined8 *)puVar7);
  func_0x044f7180(uVar11,*(undefined8 *)puVar8);
  puVar14 = (undefined8 *)(*(long *)(*(long *)puVar4 + 0xb8) + 0x48);
  *puVar14 = uVar11;
  Managed_WriteBarrier(puVar14,uVar11);
  lVar12 = func_0x029f5cec(*(undefined8 *)puVar6);
  func_0x03e45bf8(lVar12,*(undefined8 *)puVar5);
  puVar10 = PTR_DAT_05e64778;
  puVar9 = PTR_DAT_05e64770;
  puVar8 = PTR_DAT_05e64760;
  puVar7 = PTR_DAT_05e64740;
  puVar6 = PTR_DAT_05e64728;
  puVar5 = PTR_DAT_05e64710;
  puVar4 = PTR_DAT_05e646e0;
  puVar3 = PTR_DAT_05e646b8;
  puVar2 = PTR_DAT_05e5daf8;
  puVar1 = PTR_DAT_05e5da70;
  if (lVar12 != 0) {
    func_0x03e465a4(lVar12,*(undefined8 *)PTR_DAT_05e64498,*(undefined8 *)PTR_DAT_05e64788,
                    *(undefined8 *)PTR_DAT_05e5da70);
    func_0x03e465a4(lVar12,*(undefined8 *)puVar2,*(undefined8 *)puVar3,*(undefined8 *)puVar1);
    func_0x03e465a4(lVar12,*(undefined8 *)puVar10,*(undefined8 *)puVar3,*(undefined8 *)puVar1);
    func_0x03e465a4(lVar12,*(undefined8 *)puVar4,*(undefined8 *)puVar3,*(undefined8 *)puVar1);
    func_0x03e465a4(lVar12,*(undefined8 *)puVar9,*(undefined8 *)puVar3,*(undefined8 *)puVar1);
    func_0x03e465a4(lVar12,*(undefined8 *)PTR_DAT_05e64718,*(undefined8 *)puVar3,
                    *(undefined8 *)puVar1);
    func_0x03e465a4(lVar12,*(undefined8 *)PTR_DAT_05e64738,*(undefined8 *)puVar3,
                    *(undefined8 *)puVar1);
    func_0x03e465a4(lVar12,*(undefined8 *)PTR_DAT_05e64758,*(undefined8 *)puVar3,
                    *(undefined8 *)puVar1);
    func_0x03e465a4(lVar12,*(undefined8 *)PTR_DAT_05e64698,*(undefined8 *)puVar3,
                    *(undefined8 *)puVar1);
    func_0x03e465a4(lVar12,*(undefined8 *)puVar5,*(undefined8 *)puVar8,*(undefined8 *)puVar1);
    func_0x03e465a4(lVar12,*(undefined8 *)PTR_DAT_05e64748,*(undefined8 *)puVar8,
                    *(undefined8 *)puVar1);
    func_0x03e465a4(lVar12,*(undefined8 *)PTR_DAT_05e647a0,*(undefined8 *)PTR_DAT_05e64708,
                    *(undefined8 *)puVar1);
    func_0x03e465a4(lVar12,*(undefined8 *)PTR_DAT_05e646c8,*(undefined8 *)PTR_DAT_05e646a8,
                    *(undefined8 *)puVar1);
    func_0x03e465a4(lVar12,*(undefined8 *)PTR_DAT_05e646a0,*(undefined8 *)PTR_DAT_05e646f0,
                    *(undefined8 *)puVar1);
    func_0x03e465a4(lVar12,*(undefined8 *)PTR_DAT_05e64798,*(undefined8 *)PTR_DAT_05e64780,
                    *(undefined8 *)puVar1);
    func_0x03e465a4(lVar12,*(undefined8 *)PTR_DAT_05e646e8,*(undefined8 *)PTR_DAT_05e647a8,
                    *(undefined8 *)puVar1);
    func_0x03e465a4(lVar12,*(undefined8 *)puVar6,*(undefined8 *)PTR_DAT_05e64720,
                    *(undefined8 *)puVar1);
    func_0x03e465a4(lVar12,*(undefined8 *)puVar7,*(undefined8 *)PTR_DAT_05e646f8,
                    *(undefined8 *)puVar1);
    func_0x03e465a4(lVar12,*(undefined8 *)PTR_DAT_05e64768,*(undefined8 *)PTR_DAT_05e646c0,
                    *(undefined8 *)puVar1);
    func_0x03e465a4(lVar12,*(undefined8 *)PTR_DAT_05e646b0,*(undefined8 *)PTR_DAT_05e64700,
                    *(undefined8 *)puVar1);
    puVar2 = PTR_DAT_05e64790;
    func_0x03e465a4(lVar12,*(undefined8 *)PTR_DAT_05e64750,*(undefined8 *)PTR_DAT_05e64790,
                    *(undefined8 *)puVar1);
    func_0x03e465a4(lVar12,*(undefined8 *)PTR_DAT_05e64730,*(undefined8 *)puVar2,
                    *(undefined8 *)puVar1);
    func_0x03e465a4(lVar12,*(undefined8 *)PTR_DAT_05e646d0,*(undefined8 *)puVar2,
                    *(undefined8 *)puVar1);
    puVar1 = PTR_DAT_05e5d920;
    plVar13 = (long *)(*(long *)(*(long *)PTR_DAT_05e5d920 + 0xb8) + 0x68);
    *plVar13 = lVar12;
    Managed_WriteBarrier(plVar13,lVar12);
    lVar12 = func_0x029f5cec(*(undefined8 *)PTR_DAT_05e5bde0);
    func_0x042bb9a4(lVar12,*(undefined8 *)PTR_DAT_05e5bde8);
    puVar4 = PTR_DAT_05e646d8;
    puVar3 = PTR_DAT_05e64690;
    puVar2 = PTR_DAT_05e5e338;
    if (lVar12 != 0) {
      func_0x042bcb98(lVar12,*(undefined8 *)PTR_DAT_05e64498,*(undefined8 *)PTR_DAT_05e5e338);
      func_0x042bcb98(lVar12,*(undefined8 *)puVar5,*(undefined8 *)puVar2);
      func_0x042bcb98(lVar12,*(undefined8 *)puVar7,*(undefined8 *)puVar2);
      func_0x042bcb98(lVar12,*(undefined8 *)puVar6,*(undefined8 *)puVar2);
      func_0x042bcb98(lVar12,*(undefined8 *)puVar4,*(undefined8 *)puVar2);
      func_0x042bcb98(lVar12,*(undefined8 *)puVar3,*(undefined8 *)puVar2);
      plVar13 = (long *)(*(long *)(*(long *)puVar1 + 0xb8) + 0x70);
      *plVar13 = lVar12;
      Managed_WriteBarrier(plVar13,lVar12);
      return;
    }
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

