/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b203f0, Ghidra VA 02c203f0. */

/* WARNING: Possible PIC construction at 0x02c200fc: Changing call to branch */
/* WARNING: Possible PIC construction at 0x02c2012c: Changing call to branch */
/* WARNING: Possible PIC construction at 0x02c2015c: Changing call to branch */
/* WARNING: Possible PIC construction at 0x02c2020c: Changing call to branch */
/* WARNING: Possible PIC construction at 0x02c20244: Changing call to branch */
/* WARNING: Possible PIC construction at 0x02c20274: Changing call to branch */
/* WARNING: Removing unreachable block (ram,0x02c20248) */
/* WARNING: Removing unreachable block (ram,0x02c20250) */
/* WARNING: Removing unreachable block (ram,0x02c20258) */
/* WARNING: Removing unreachable block (ram,0x02c2026c) */
/* WARNING: Removing unreachable block (ram,0x02c20210) */
/* WARNING: Removing unreachable block (ram,0x02c20218) */
/* WARNING: Removing unreachable block (ram,0x02c20234) */
/* WARNING: Removing unreachable block (ram,0x02c20160) */
/* WARNING: Removing unreachable block (ram,0x02c20168) */
/* WARNING: Removing unreachable block (ram,0x02c20180) */
/* WARNING: Removing unreachable block (ram,0x02c20194) */
/* WARNING: Removing unreachable block (ram,0x02c201ac) */
/* WARNING: Removing unreachable block (ram,0x02c201c8) */
/* WARNING: Removing unreachable block (ram,0x02c201cc) */
/* WARNING: Removing unreachable block (ram,0x02c201f0) */
/* WARNING: Removing unreachable block (ram,0x02c20130) */
/* WARNING: Removing unreachable block (ram,0x02c20138) */
/* WARNING: Removing unreachable block (ram,0x02c2014c) */
/* WARNING: Removing unreachable block (ram,0x02c20100) */
/* WARNING: Removing unreachable block (ram,0x02c20108) */
/* WARNING: Removing unreachable block (ram,0x02c2011c) */
/* WARNING: Removing unreachable block (ram,0x02c20278) */
/* WARNING: Removing unreachable block (ram,0x02c20280) */

void Setting_Vibration_Setting_Change(long param_1)

{
  bool bVar1;
  long lVar2;
  long lVar3;
  
  *(byte *)(param_1 + 0x22) = *(byte *)(param_1 + 0x22) ^ 1;
  if ((bRam000000000625bf53 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e58a78);
    bRam000000000625bf53 = 1;
  }
  lVar2 = *(long *)(param_1 + 0x28);
  if (lVar2 == 0) {
                    /* WARNING: Subroutine does not return */
    Throw_NullReference_Wrapper();
  }
  bVar1 = *(char *)(param_1 + 0x20) == '\0';
  if ((bRam000000000626c55f & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05ed56d8,bVar1,0);
    bRam000000000626c55f = 1;
  }
  if (lVar2 != 0) {
    lVar3 = *(long *)(lVar2 + 0x10);
    if (lVar3 == 0) {
      func_0x057f539c(lVar2,0);
    }
    if (pcRam000000000626c5d0 == (code *)0x0) {
      pcRam000000000626c5d0 = (code *)func_0x029f5a0c(&UNK_011a70e7);
    }
                    /* WARNING: Could not recover jumptable at 0x057dffb4. Too many branches */
                    /* WARNING: Treating indirect jump as call */
    (*pcRam000000000626c5d0)(lVar3,bVar1);
    return;
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

