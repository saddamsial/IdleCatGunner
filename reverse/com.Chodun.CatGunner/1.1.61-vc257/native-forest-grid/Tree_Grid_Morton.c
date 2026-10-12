/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2bac79c, Ghidra VA 02cac79c. */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

undefined4 Tree_Grid_Morton(undefined8 param_1,undefined4 param_2,undefined4 param_3)

{
  uint uVar1;
  undefined2 uVar2;
  byte bVar6;
  byte bVar7;
  ulong uVar4;
  ulong uVar5;
  int iVar8;
  int iVar10;
  undefined8 uVar9;
  undefined4 uVar3;
  
  bVar6 = (byte)((uint)param_3 >> 8) | (byte)((uint)param_3 >> 0x10);
  bVar7 = (byte)((uint)param_2 >> 8) | (byte)((uint)param_2 >> 0x10);
  uVar1 = (uint)CONCAT12(bVar6,(ushort)(byte)param_3);
  iVar8 = uVar1 << 4;
  iVar10 = (uint)(uint3)(CONCAT16(bVar7,(uint6)CONCAT14((char)param_2,uVar1)) >> 0x20) << 4;
  uVar2 = CONCAT11((char)((uint)iVar8 >> 8),(byte)param_3);
  uVar3 = CONCAT13((char)((uint)iVar8 >> 0x18),CONCAT12(bVar6,uVar2));
  uVar5 = CONCAT62((int6)(CONCAT17((char)((uint)iVar10 >> 0x18),
                                   CONCAT16(bVar7,CONCAT15((char)((uint)iVar10 >> 8),
                                                           CONCAT14((char)param_2,uVar3)))) >> 0x10)
                   ,uVar2) & 0xffffffffffffff0f;
  uVar4 = CONCAT44((int)(uVar5 >> 0x20),CONCAT22((short)((uint)uVar3 >> 0x10),(short)uVar5)) &
          0xffffffffff0fffff;
  uVar5 = CONCAT26((short)(uVar4 >> 0x30),CONCAT24((short)(uVar5 >> 0x20),(int)uVar4)) &
          0xff0fff0fffffffff;
  iVar8 = (int)uVar5 << 2;
  iVar10 = (int)(uVar5 >> 0x20) << 2;
  uVar5 = CONCAT17((byte)((uint)iVar10 >> 0x18) | (byte)(uVar5 >> 0x38),
                   CONCAT16((byte)((uint)iVar10 >> 0x10) | (byte)(uVar5 >> 0x30),
                            CONCAT15((byte)((uint)iVar10 >> 8) | (byte)(uVar5 >> 0x28),
                                     CONCAT14((byte)iVar10 | (byte)(uVar5 >> 0x20),
                                              CONCAT13((byte)((uint)iVar8 >> 0x18) |
                                                       (byte)(uVar5 >> 0x18),
                                                       CONCAT12((byte)((uint)iVar8 >> 0x10) |
                                                                (byte)(uVar5 >> 0x10),
                                                                CONCAT11((byte)((uint)iVar8 >> 8) |
                                                                         (byte)(uVar5 >> 8),
                                                                         (byte)iVar8 | (byte)uVar5))
                                                      ))))) & 0x3333333333333333;
  uVar9 = NEON_ushl(uVar5,_UNK_01170770,4);
  iVar8 = (int)uVar5 << 1;
  uVar5 = CONCAT17((byte)((ulong)uVar9 >> 0x38) | (byte)(uVar5 >> 0x38),
                   CONCAT16((byte)((ulong)uVar9 >> 0x30) | (byte)(uVar5 >> 0x30),
                            CONCAT15((byte)((ulong)uVar9 >> 0x28) | (byte)(uVar5 >> 0x28),
                                     CONCAT14((byte)((ulong)uVar9 >> 0x20) | (byte)(uVar5 >> 0x20),
                                              CONCAT13((byte)((ulong)uVar9 >> 0x18) |
                                                       (byte)((uint)iVar8 >> 0x18),
                                                       CONCAT12((byte)((ulong)uVar9 >> 0x10) |
                                                                (byte)((uint)iVar8 >> 0x10),
                                                                CONCAT11((byte)((ulong)uVar9 >> 8) |
                                                                         (byte)((uint)iVar8 >> 8),
                                                                         (byte)uVar9 | (byte)iVar8))
                                                      ))))) & _UNK_01170938;
  return CONCAT13((byte)(uVar5 >> 0x18) | (byte)(uVar5 >> 0x38),
                  CONCAT12((byte)(uVar5 >> 0x10) | (byte)(uVar5 >> 0x30),
                           CONCAT11((byte)(uVar5 >> 8) | (byte)(uVar5 >> 0x28),
                                    (byte)uVar5 | (byte)(uVar5 >> 0x20))));
}

