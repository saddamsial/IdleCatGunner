02ca157c  sub sp,sp,#0x50
02ca1580  stp x30,x25,[sp, #0x10]
02ca1584  stp x24,x23,[sp, #0x20]
02ca1588  stp x22,x21,[sp, #0x30]
02ca158c  stp x20,x19,[sp, #0x40]
02ca1590  adrp x20,0x625c000
02ca1594  mov w21,w1
02ca1598  mov x19,x0
02ca159c  ldrb w8,[x20, #0x485]
02ca15a0  tbnz w8,#0x0,0x02ca15f4
02ca15a4  adrp x0,0x5e58000
02ca15a8  ldr x0,[x0, #0xf08]
02ca15ac  bl 0x029f5a50
02ca15b0  adrp x0,0x5e5d000
02ca15b4  ldr x0,[x0, #0x338]
02ca15b8  bl 0x029f5a50
02ca15bc  adrp x0,0x5e59000
02ca15c0  ldr x0,[x0, #0x768]
02ca15c4  bl 0x029f5a50
02ca15c8  adrp x0,0x5e59000
02ca15cc  ldr x0,[x0, #0x1c0]
02ca15d0  bl 0x029f5a50
02ca15d4  adrp x0,0x5e5e000
02ca15d8  ldr x0,[x0, #0x3e0]
02ca15dc  bl 0x029f5a50
02ca15e0  adrp x0,0x5e64000
02ca15e4  ldr x0,[x0, #0x8c8]
02ca15e8  bl 0x029f5a50
02ca15ec  mov w8,#0x1
02ca15f0  strb w8,[x20, #0x485]
02ca15f4  sub w23,w21,#0x1
02ca15f8  cmp w23,#0x2
02ca15fc  b.hi 0x02ca190c
02ca1600  adrp x24,0x5e5e000
02ca1604  mov x0,x19
02ca1608  ldr x24,[x24, #0x3e0]
02ca160c  bl 0x02ca0830
02ca1610  ldr x0,[x24]
02ca1614  ldr w8,[x0, #0xe4]
02ca1618  cbnz w8,0x02ca1624
02ca161c  bl 0x029f5bd0
02ca1620  ldr x0,[x24]
02ca1624  ldr x8,[x0, #0xb8]
02ca1628  ldr x8,[x8, #0x8]
02ca162c  cbz x8,0x02ca1930
02ca1630  ldr w9,[x8, #0x18]
02ca1634  cmp w23,w9
02ca1638  b.cs 0x02ca192c
02ca163c  adrp x9,0x5e5d000
02ca1640  add x8,x8,w23, UXTW  #0x2
02ca1644  ldr x9,[x9, #0x338]
02ca1648  ldr w22,[x8, #0x20]
02ca164c  ldr x0,[x9]
02ca1650  ldr w9,[x0, #0xe4]
02ca1654  cbnz w9,0x02ca165c
02ca1658  bl 0x029f5bd0
02ca165c  mov w0,w22
02ca1660  mov x1,xzr
02ca1664  bl 0x02b7f834
02ca1668  ldr w8,[x19, #0x20]
02ca166c  cmp w8,w21
02ca1670  b.ne 0x02ca16a8
02ca1674  ldr w8,[x19, #0x28]
02ca1678  cmp w21,#0x2
02ca167c  add w20,w8,#0x1
02ca1680  stp wzr,w20,[x19, #0x24]
02ca1684  b.hi 0x02ca16a8
02ca1688  mov x0,x19
02ca168c  bl 0x02ca1040
02ca1690  cmp w20,w0
02ca1694  b.lt 0x02ca16a8
02ca1698  ldr w8,[x19, #0x20]
02ca169c  str wzr,[x19, #0x28]
02ca16a0  add w8,w8,#0x1
02ca16a4  str w8,[x19, #0x20]
02ca16a8  adrp x8,0x5e59000
02ca16ac  mov w1,#0x4
02ca16b0  ldr x8,[x8, #0x768]
02ca16b4  ldr x0,[x8]
02ca16b8  bl 0x029f5b40
02ca16bc  adrp x25,0x5e58000
02ca16c0  mov x20,x0
02ca16c4  add x1,sp,#0xc
02ca16c8  ldr x25,[x25, #0xa10]
02ca16cc  str w21,[sp, #0xc]
02ca16d0  ldr x0,[x25, #0x48]
02ca16d4  bl 0x029f5bd8
02ca16d8  cbz x20,0x02ca1930
02ca16dc  mov x21,x0
02ca16e0  cbz x0,0x02ca16f8
02ca16e4  ldr x8,[x20]
02ca16e8  mov x0,x21
02ca16ec  ldr x1,[x8, #0x40]
02ca16f0  bl 0x029f5bd4
02ca16f4  cbz x0,0x02ca1934
02ca16f8  ldr w8,[x20, #0x18]
02ca16fc  cbz w8,0x02ca192c
02ca1700  mov x0,x20
02ca1704  mov x1,x21
02ca1708  str x21,[x0, #0x20]!
02ca170c  bl 0x029f59f4
02ca1710  ldr x0,[x25, #0x48]
02ca1714  add x1,sp,#0x8
02ca1718  str w22,[sp, #0x8]
02ca171c  bl 0x029f5bd8
02ca1720  mov x21,x0
02ca1724  cbz x0,0x02ca173c
02ca1728  ldr x8,[x20]
02ca172c  mov x0,x21
02ca1730  ldr x1,[x8, #0x40]
02ca1734  bl 0x029f5bd4
02ca1738  cbz x0,0x02ca1934
02ca173c  ldr w8,[x20, #0x18]
02ca1740  tst w8,#0xfffffffe
02ca1744  b.eq 0x02ca192c
02ca1748  mov x0,x20
02ca174c  mov x1,x21
02ca1750  str x21,[x0, #0x28]!
02ca1754  bl 0x029f59f4
02ca1758  ldr w8,[x19, #0x20]
02ca175c  ldr x0,[x25, #0x48]
02ca1760  add x1,sp,#0x4
02ca1764  str w8,[sp, #0x4]
02ca1768  bl 0x029f5bd8
02ca176c  mov x21,x0
02ca1770  cbz x0,0x02ca1788
02ca1774  ldr x8,[x20]
02ca1778  mov x0,x21
02ca177c  ldr x1,[x8, #0x40]
02ca1780  bl 0x029f5bd4
02ca1784  cbz x0,0x02ca1934
02ca1788  ldr w8,[x20, #0x18]
02ca178c  cmp w8,#0x2
02ca1790  b.ls 0x02ca192c
02ca1794  mov x0,x20
02ca1798  mov x1,x21
02ca179c  str x21,[x0, #0x30]!
02ca17a0  bl 0x029f59f4
02ca17a4  ldr w8,[x19, #0x28]
02ca17a8  ldr x0,[x25, #0x48]
02ca17ac  mov x1,sp
02ca17b0  str w8,[sp]
02ca17b4  bl 0x029f5bd8
02ca17b8  mov x19,x0
02ca17bc  cbz x0,0x02ca17d4
02ca17c0  ldr x8,[x20]
02ca17c4  mov x0,x19
02ca17c8  ldr x1,[x8, #0x40]
02ca17cc  bl 0x029f5bd4
02ca17d0  cbz x0,0x02ca1934
02ca17d4  ldr w8,[x20, #0x18]
02ca17d8  tst w8,#0xfffffffc
02ca17dc  b.eq 0x02ca192c
02ca17e0  mov x0,x20
02ca17e4  mov x1,x19
02ca17e8  str x19,[x0, #0x38]!
02ca17ec  bl 0x029f59f4
02ca17f0  adrp x8,0x5e64000
02ca17f4  mov x1,x20
02ca17f8  mov x2,xzr
02ca17fc  ldr x8,[x8, #0x8c8]
02ca1800  ldr x0,[x8]
02ca1804  bl 0x046c1d9c
02ca1808  adrp x8,0x5e58000
02ca180c  mov x19,x0
02ca1810  ldr x8,[x8, #0xf08]
02ca1814  ldr x8,[x8]
02ca1818  ldr w9,[x8, #0xe4]
02ca181c  cbnz w9,0x02ca1828
02ca1820  mov x0,x8
02ca1824  bl 0x029f5bd0
02ca1828  mov x0,x19
02ca182c  mov x1,xzr
02ca1830  bl 0x05799e30
02ca1834  mov x0,xzr
02ca1838  bl 0x02c0faf8
02ca183c  adrp x20,0x625b000
02ca1840  ldrb w8,[x20, #0xa57]
02ca1844  cbnz w8,0x02ca185c
02ca1848  adrp x0,0x5e5d000
02ca184c  ldr x0,[x0, #0xd70]
02ca1850  bl 0x029f5a50
02ca1854  mov w8,#0x1
02ca1858  strb w8,[x20, #0xa57]
02ca185c  adrp x21,0x5e5d000
02ca1860  adrp x8,0x5e59000
02ca1864  ldr x21,[x21, #0xd70]
02ca1868  ldr x8,[x8, #0x1c0]
02ca186c  ldr x9,[x21]
02ca1870  ldr x0,[x8]
02ca1874  ldr x8,[x9, #0xb8]
02ca1878  ldr w9,[x0, #0xe4]
02ca187c  ldr x19,[x8]
02ca1880  cbnz w9,0x02ca1888
02ca1884  bl 0x029f5bd0
02ca1888  mov x0,x19
02ca188c  mov x1,xzr
02ca1890  mov x2,xzr
02ca1894  bl 0x057dfa70
02ca1898  tbz w0,#0x0,0x02ca18dc
02ca189c  ldrb w8,[x20, #0xa57]
02ca18a0  cbnz w8,0x02ca18b8
02ca18a4  adrp x0,0x5e5d000
02ca18a8  ldr x0,[x0, #0xd70]
02ca18ac  bl 0x029f5a50
02ca18b0  mov w8,#0x1
02ca18b4  strb w8,[x20, #0xa57]
02ca18b8  ldr x8,[x21]
02ca18bc  ldr x8,[x8, #0xb8]
02ca18c0  ldr x0,[x8]
02ca18c4  cbz x0,0x02ca1930
02ca18c8  fmov s0,0x3f800000
02ca18cc  mov w1,#0x7
02ca18d0  mov x2,xzr
02ca18d4  mov x3,xzr
02ca18d8  bl 0x02c1f10c
02ca18dc  ldr x0,[x24]
02ca18e0  ldr w8,[x0, #0xe4]
02ca18e4  cbnz w8,0x02ca18f0
02ca18e8  bl 0x029f5bd0
02ca18ec  ldr x0,[x24]
02ca18f0  ldr x8,[x0, #0xb8]
02ca18f4  ldr x8,[x8, #0x18]
02ca18f8  cbz x8,0x02ca190c
02ca18fc  ldr x9,[x8, #0x18]
02ca1900  ldr x0,[x8, #0x40]
02ca1904  ldr x1,[x8, #0x28]
02ca1908  blr x9
02ca190c  cmp w23,#0x3
02ca1910  ldp x20,x19,[sp, #0x40]
02ca1914  ldp x22,x21,[sp, #0x30]
02ca1918  cset w0,cc
02ca191c  ldp x24,x23,[sp, #0x20]
02ca1920  ldp x30,x25,[sp, #0x10]
02ca1924  add sp,sp,#0x50
02ca1928  ret
02ca192c  bl 0x029f5d04
02ca1930  bl 0x029f5cfc
02ca1934  bl 0x029f5d20
02ca1938  mov x1,xzr
02ca193c  bl 0x029f5bc0
