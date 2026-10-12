02c200b4  stp x30,x23,[sp, #-0x30]!
02c200b8  stp x22,x21,[sp, #0x10]
02c200bc  stp x20,x19,[sp, #0x20]
02c200c0  adrp x20,0x625b000
02c200c4  mov x19,x0
02c200c8  ldrb w8,[x20, #0xf53]
02c200cc  tbnz w8,#0x0,0x02c200e4
02c200d0  adrp x0,0x5e58000
02c200d4  ldr x0,[x0, #0xa78]
02c200d8  bl 0x029f5a50
02c200dc  mov w8,#0x1
02c200e0  strb w8,[x20, #0xf53]
02c200e4  ldr x0,[x19, #0x28]
02c200e8  cbz x0,0x02c20298
02c200ec  ldrb w8,[x19, #0x20]
02c200f0  mov x2,xzr
02c200f4  cmp w8,#0x0
02c200f8  cset w1,eq
02c200fc  bl 0x057dff3c
02c20100  ldr x0,[x19, #0x30]
02c20104  cbz x0,0x02c20298
02c20108  ldrb w1,[x19, #0x20]
02c2010c  mov x2,xzr
02c20110  bl 0x057dff3c
02c20114  ldr x0,[x19, #0x38]
02c20118  cbz x0,0x02c20298
02c2011c  ldrb w8,[x19, #0x21]
02c20120  mov x2,xzr
02c20124  cmp w8,#0x0
02c20128  cset w1,eq
02c2012c  bl 0x057dff3c
02c20130  ldr x0,[x19, #0x40]
02c20134  cbz x0,0x02c20298
02c20138  ldrb w1,[x19, #0x21]
02c2013c  mov x2,xzr
02c20140  bl 0x057dff3c
02c20144  ldr x0,[x19, #0x48]
02c20148  cbz x0,0x02c20298
02c2014c  ldrb w8,[x19, #0x22]
02c20150  mov x2,xzr
02c20154  cmp w8,#0x0
02c20158  cset w1,eq
02c2015c  bl 0x057dff3c
02c20160  ldr x0,[x19, #0x50]
02c20164  cbz x0,0x02c20298
02c20168  ldrb w1,[x19, #0x22]
02c2016c  mov x2,xzr
02c20170  bl 0x057dff3c
02c20174  adrp x20,0x625b000
02c20178  ldrb w8,[x20, #0xa57]
02c2017c  cbnz w8,0x02c20194
02c20180  adrp x0,0x5e5d000
02c20184  ldr x0,[x0, #0xd70]
02c20188  bl 0x029f5a50
02c2018c  mov w8,#0x1
02c20190  strb w8,[x20, #0xa57]
02c20194  adrp x8,0x5e5d000
02c20198  ldr x8,[x8, #0xd70]
02c2019c  ldr x8,[x8]
02c201a0  ldr x8,[x8, #0xb8]
02c201a4  ldr x0,[x8]
02c201a8  cbz x0,0x02c20298
02c201ac  adrp x20,0x5e58000
02c201b0  ldr x20,[x20, #0xa78]
02c201b4  ldrb w1,[x19, #0x20]
02c201b8  bl 0x02c2029c
02c201bc  ldr x0,[x20]
02c201c0  ldr w8,[x0, #0xe4]
02c201c4  cbnz w8,0x02c201cc
02c201c8  bl 0x029f5bd0
02c201cc  mov x0,xzr
02c201d0  bl 0x05792b40
02c201d4  mov w22,w0
02c201d8  mov x0,xzr
02c201dc  bl 0x05792b40
02c201e0  mov w21,w0
02c201e4  bl 0x02c20340
02c201e8  ldr x8,[x19, #0x58]
02c201ec  cbz x8,0x02c20298
02c201f0  cmp w22,#0xb
02c201f4  eor w23,w0,#0x1
02c201f8  mov w20,w0
02c201fc  cset w9,eq
02c20200  mov x0,x8
02c20204  mov x2,xzr
02c20208  and w1,w9,w23
02c2020c  bl 0x057dff3c
02c20210  ldr x0,[x19, #0x60]
02c20214  cbz x0,0x02c20298
02c20218  cmp w21,#0x8
02c2021c  mov x2,xzr
02c20220  cset w8,eq
02c20224  and w1,w8,w23
02c20228  bl 0x057dff3c
02c2022c  ldr x0,[x19, #0x88]
02c20230  cbz x0,0x02c20298
02c20234  cmp w22,#0xb
02c20238  mov x2,xzr
02c2023c  cset w22,eq
02c20240  mov w1,w22
02c20244  bl 0x057dff3c
02c20248  ldr x0,[x19, #0x68]
02c2024c  cmp w21,#0x8
02c20250  csinc w21,w22,wzr,ne
02c20254  cbz x0,0x02c20298
02c20258  and w1,w20,w21
02c2025c  mov x2,xzr
02c20260  bl 0x057dff3c
02c20264  ldr x0,[x19, #0x70]
02c20268  cbz x0,0x02c20298
02c2026c  and w1,w20,w21
02c20270  mov x2,xzr
02c20274  bl 0x057dff3c
02c20278  ldr x0,[x19, #0x78]
02c2027c  cbz x0,0x02c20298
02c20280  ldp x20,x19,[sp, #0x20]
02c20284  mov w1,wzr
02c20288  ldp x22,x21,[sp, #0x10]
02c2028c  mov x2,xzr
02c20290  ldp x30,x23,[sp], #0x30
02c20294  b 0x057dff3c
02c20298  bl 0x029f5cfc
