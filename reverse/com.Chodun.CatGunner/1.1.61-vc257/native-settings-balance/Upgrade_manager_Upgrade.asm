02cb15b4  sub sp,sp,#0x90
02cb15b8  stp x30,x23,[sp, #0x60]
02cb15bc  stp x22,x21,[sp, #0x70]
02cb15c0  stp x20,x19,[sp, #0x80]
02cb15c4  adrp x21,0x625c000
02cb15c8  mov w19,w1
02cb15cc  mov x20,x0
02cb15d0  ldrb w8,[x21, #0x556]
02cb15d4  tbnz w8,#0x0,0x02cb15f8
02cb15d8  adrp x0,0x5e5d000
02cb15dc  ldr x0,[x0, #0x5b0]
02cb15e0  bl 0x029f5a50
02cb15e4  adrp x0,0x5e5d000
02cb15e8  ldr x0,[x0, #0x338]
02cb15ec  bl 0x029f5a50
02cb15f0  mov w8,#0x1
02cb15f4  strb w8,[x21, #0x556]
02cb15f8  movi v0.2D,#0x0
02cb15fc  ldr x8,[x20, #0x20]
02cb1600  stp q0,q0,[sp, #0x40]
02cb1604  cbz x8,0x02cb187c
02cb1608  ldr w9,[x8, #0x18]
02cb160c  cmp w9,w19
02cb1610  b.ls 0x02cb1880
02cb1614  sxtw x21,w19
02cb1618  add x8,x8,x21, LSL #0x3
02cb161c  ldr x8,[x8, #0x20]
02cb1620  cbz x8,0x02cb187c
02cb1624  ldp x0,x1,[x8, #0x18]
02cb1628  mov x2,xzr
02cb162c  bl 0x02b1e644
02cb1630  mov w8,#0x270f
02cb1634  cmp w0,w8
02cb1638  b.gt 0x02cb1860
02cb163c  ldr x8,[x20, #0x20]
02cb1640  cbz x8,0x02cb187c
02cb1644  ldr w9,[x8, #0x18]
02cb1648  cmp w9,w19
02cb164c  b.ls 0x02cb1880
02cb1650  add x8,x8,x21, LSL #0x3
02cb1654  ldr x8,[x8, #0x20]
02cb1658  cbz x8,0x02cb187c
02cb165c  ldp x0,x1,[x8, #0x18]
02cb1660  mov x2,xzr
02cb1664  ldr x23,[x20, #0x30]
02cb1668  bl 0x02b1e644
02cb166c  cbz x23,0x02cb187c
02cb1670  ldr w8,[x23, #0x18]
02cb1674  cmp w0,w8
02cb1678  b.cs 0x02cb1880
02cb167c  sxtw x8,w0
02cb1680  adrp x22,0x5e5d000
02cb1684  ldr x22,[x22, #0x338]
02cb1688  add x8,x23,x8, LSL #0x5
02cb168c  ldr x0,[x22]
02cb1690  ldp q1,q0,[x8, #0x20]
02cb1694  ldr w8,[x0, #0xe4]
02cb1698  stp q1,q0,[sp, #0x40]
02cb169c  cbnz w8,0x02cb16a8
02cb16a0  bl 0x029f5bd0
02cb16a4  ldr x0,[x22]
02cb16a8  ldr x8,[x0, #0xb8]
02cb16ac  add x1,sp,#0x40
02cb16b0  mov x2,xzr
02cb16b4  add x0,x8,#0x30
02cb16b8  bl 0x04654530
02cb16bc  tbz w0,#0x0,0x02cb1860
02cb16c0  ldr x0,[x22]
02cb16c4  ldp q0,q1,[sp, #0x40]
02cb16c8  ldr w8,[x0, #0xe4]
02cb16cc  stp q0,q1,[sp, #0x20]
02cb16d0  cbnz w8,0x02cb16d8
02cb16d4  bl 0x029f5bd0
02cb16d8  ldp q0,q1,[sp, #0x20]
02cb16dc  mov x0,sp
02cb16e0  mov x1,xzr
02cb16e4  stp q0,q1,[sp]
02cb16e8  bl 0x02b7f11c
02cb16ec  ldr x8,[x20, #0x20]
02cb16f0  cbz x8,0x02cb187c
02cb16f4  ldr w9,[x8, #0x18]
02cb16f8  cmp w9,w19
02cb16fc  b.ls 0x02cb1880
02cb1700  add x8,x8,x21, LSL #0x3
02cb1704  ldr x23,[x8, #0x20]
02cb1708  cbz x23,0x02cb187c
02cb170c  ldp x0,x1,[x23, #0x18]
02cb1710  mov x2,xzr
02cb1714  bl 0x02b1e644
02cb1718  add w0,w0,#0x1
02cb171c  mov x1,xzr
02cb1720  bl 0x02b1e5c8
02cb1724  stp x0,x1,[x23, #0x18]
02cb1728  ldr x0,[x20, #0x58]
02cb172c  cbz x0,0x02cb187c
02cb1730  bl 0x02cb2310
02cb1734  adrp x23,0x5e5d000
02cb1738  ldr x23,[x23, #0x5b0]
02cb173c  ldr x8,[x23]
02cb1740  ldr x8,[x8, #0xb8]
02cb1744  ldr x0,[x8, #0x8]
02cb1748  cbz x0,0x02cb187c
02cb174c  mov x1,xzr
02cb1750  bl 0x02c43744
02cb1754  ldr x8,[x23]
02cb1758  ldr x8,[x8, #0xb8]
02cb175c  ldrb w8,[x8]
02cb1760  cbnz w8,0x02cb17b0
02cb1764  adrp x23,0x625b000
02cb1768  ldrb w8,[x23, #0xa57]
02cb176c  cbnz w8,0x02cb1784
02cb1770  adrp x0,0x5e5d000
02cb1774  ldr x0,[x0, #0xd70]
02cb1778  bl 0x029f5a50
02cb177c  mov w8,#0x1
02cb1780  strb w8,[x23, #0xa57]
02cb1784  adrp x8,0x5e5d000
02cb1788  ldr x8,[x8, #0xd70]
02cb178c  ldr x8,[x8]
02cb1790  ldr x8,[x8, #0xb8]
02cb1794  ldr x0,[x8]
02cb1798  cbz x0,0x02cb187c
02cb179c  fmov s0,0x3f800000
02cb17a0  mov w1,#0x4
02cb17a4  mov x2,xzr
02cb17a8  mov x3,xzr
02cb17ac  bl 0x02c1f10c
02cb17b0  ldr x8,[x20, #0x28]
02cb17b4  cbz x8,0x02cb187c
02cb17b8  ldr w9,[x8, #0x18]
02cb17bc  cmp w9,w19
02cb17c0  b.ls 0x02cb1880
02cb17c4  add x8,x8,x21, LSL #0x3
02cb17c8  ldr x0,[x8, #0x20]
02cb17cc  cbz x0,0x02cb187c
02cb17d0  mov x1,xzr
02cb17d4  bl 0x057e00b4
02cb17d8  tbz w0,#0x0,0x02cb1808
02cb17dc  ldr x8,[x20, #0x28]
02cb17e0  cbz x8,0x02cb187c
02cb17e4  ldr w9,[x8, #0x18]
02cb17e8  cmp w9,w19
02cb17ec  b.ls 0x02cb1880
02cb17f0  add x8,x8,x21, LSL #0x3
02cb17f4  ldr x0,[x8, #0x20]
02cb17f8  cbz x0,0x02cb187c
02cb17fc  mov w1,wzr
02cb1800  mov x2,xzr
02cb1804  bl 0x057dff3c
02cb1808  ldr x8,[x20, #0x28]
02cb180c  cbz x8,0x02cb187c
02cb1810  ldr w9,[x8, #0x18]
02cb1814  cmp w9,w19
02cb1818  b.ls 0x02cb1880
02cb181c  add x8,x8,x21, LSL #0x3
02cb1820  ldr x0,[x8, #0x20]
02cb1824  cbz x0,0x02cb187c
02cb1828  mov w1,#0x1
02cb182c  mov x2,xzr
02cb1830  mov w20,#0x1
02cb1834  bl 0x057dff3c
02cb1838  cmp w19,#0x2
02cb183c  b.ne 0x02cb1864
02cb1840  ldr x0,[x22]
02cb1844  ldr w8,[x0, #0xe4]
02cb1848  cbnz w8,0x02cb1850
02cb184c  bl 0x029f5bd0
02cb1850  mov x0,xzr
02cb1854  bl 0x02b7dcfc
02cb1858  mov w20,#0x1
02cb185c  b 0x02cb1864
02cb1860  mov w20,wzr
02cb1864  mov w0,w20
02cb1868  ldp x20,x19,[sp, #0x80]
02cb186c  ldp x22,x21,[sp, #0x70]
02cb1870  ldp x30,x23,[sp, #0x60]
02cb1874  add sp,sp,#0x90
02cb1878  ret
02cb187c  bl 0x029f5cfc
02cb1880  bl 0x029f5d04
