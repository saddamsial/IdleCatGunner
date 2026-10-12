/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b20374, Ghidra VA 02c20374. */

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

void Setting_BGM_Setting_Change(long param_1)

{
  char cVar1;
  bool bVar2;
  long lVar3;
  long lVar4;
  
  cVar1 = cRam000000000625ba57;
  *(byte *)(param_1 + 0x20) = *(byte *)(param_1 + 0x20) ^ 1;
  if (cVar1 == '\0') {
    func_0x029f5a50(PTR_DAT_05e5dd70);
    cRam000000000625ba57 = '\x01';
  }
  if (**(long **)(*(long *)PTR_DAT_05e5dd70 + 0xb8) == 0) {
                    /* WARNING: Subroutine does not return */
    Throw_NullReference_Wrapper();
  }
  Sound_manager_ApplyBGMMute_0x6000549
            (**(long **)(*(long *)PTR_DAT_05e5dd70 + 0xb8),*(undefined1 *)(param_1 + 0x20));
  if ((bRam000000000625bf53 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e58a78);
    bRam000000000625bf53 = 1;
  }
  lVar3 = *(long *)(param_1 + 0x28);
  if (lVar3 != 0) {
    bVar2 = *(char *)(param_1 + 0x20) == '\0';
    if ((bRam000000000626c55f & 1) == 0) {
      func_0x029f5a50(PTR_DAT_05ed56d8,bVar2,0);
      bRam000000000626c55f = 1;
    }
    if (lVar3 != 0) {
      lVar4 = *(long *)(lVar3 + 0x10);
      if (lVar4 == 0) {
        func_0x057f539c(lVar3,0);
      }
      if (pcRam000000000626c5d0 == (code *)0x0) {
        pcRam000000000626c5d0 = (code *)func_0x029f5a0c(&UNK_011a70e7);
      }
                    /* WARNING: Could not recover jumptable at 0x057dffb4. Too many branches */
                    /* WARNING: Treating indirect jump as call */
      (*pcRam000000000626c5d0)(lVar4,bVar2);
      return;
    }
                    /* WARNING: Subroutine does not return */
    Throw_NullReference_Wrapper();
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

