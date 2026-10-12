02c637bc  stp d9,d8,[sp, #-0x50]!
02c637c0  str x30,[sp, #0x10]
02c637c4  stp x24,x23,[sp, #0x20]
02c637c8  stp x22,x21,[sp, #0x30]
02c637cc  stp x20,x19,[sp, #0x40]
02c637d0  adrp x22,0x625c000
02c637d4  adrp x23,0x5e59000
02c637d8  mov x20,x2
02c637dc  ldrb w8,[x22, #0x239]
02c637e0  ldr x23,[x23, #0x1c0]
02c637e4  mov x21,x1
02c637e8  mov x19,x0
02c637ec  tbnz w8,#0x0,0x02c63828
02c637f0  adrp x0,0x5e5d000
02c637f4  ldr x0,[x0, #0xd38]
02c637f8  bl 0x029f5a50
02c637fc  adrp x0,0x5e62000
02c63800  ldr x0,[x0, #0xfe8]
02c63804  bl 0x029f5a50
02c63808  adrp x0,0x5e59000
02c6380c  ldr x0,[x0, #0x1c0]
02c63810  bl 0x029f5a50
02c63814  adrp x0,0x5e63000
02c63818  ldr x0,[x0, #0x838]
02c6381c  bl 0x029f5a50
02c63820  mov w8,#0x1
02c63824  strb w8,[x22, #0x239]
02c63828  ldr x0,[x23]
02c6382c  ldr w8,[x0, #0xe4]
02c63830  cbnz w8,0x02c63838
02c63834  bl 0x029f5bd0
02c63838  mov x0,x21
02c6383c  mov x1,xzr
02c63840  mov x2,xzr
02c63844  bl 0x057e14b4
02c63848  tbnz w0,#0x0,0x02c63a18
02c6384c  ldr x0,[x23]
02c63850  ldr w8,[x0, #0xe4]
02c63854  cbnz w8,0x02c6385c
02c63858  bl 0x029f5bd0
02c6385c  mov x0,x20
02c63860  mov x1,xzr
02c63864  mov x2,xzr
02c63868  bl 0x057e14b4
02c6386c  tbnz w0,#0x0,0x02c63a18
02c63870  ldr x0,[x23]
02c63874  ldr w8,[x0, #0xe4]
02c63878  cbnz w8,0x02c63880
02c6387c  bl 0x029f5bd0
02c63880  mov x0,x21
02c63884  mov x1,x20
02c63888  mov x2,xzr
02c6388c  bl 0x057e14b4
02c63890  tbnz w0,#0x0,0x02c63a18
02c63894  cbz x21,0x02c63a34
02c63898  ldrb w8,[x21, #0x48]
02c6389c  cbz w8,0x02c63a18
02c638a0  cbz x20,0x02c63a34
02c638a4  ldrb w8,[x20, #0x48]
02c638a8  cbz w8,0x02c63a18
02c638ac  adrp x24,0x5e5d000
02c638b0  ldr x24,[x24, #0xd38]
02c638b4  ldr x8,[x24]
02c638b8  ldr x8,[x8, #0xb8]
02c638bc  ldr x0,[x8]
02c638c0  cbz x0,0x02c63a34
02c638c4  ldr w2,[x20, #0x44]
02c638c8  ldr w1,[x21, #0x44]
02c638cc  bl 0x02c5ece8
02c638d0  tbnz w0,#0x1f,0x02c63a18
02c638d4  mov w22,w0
02c638d8  mov x0,x20
02c638dc  bl 0x02c6285c
02c638e0  mov x0,x21
02c638e4  fmov s8,s0
02c638e8  fmov s9,s1
02c638ec  bl 0x02c5fb98
02c638f0  mov x0,x20
02c638f4  bl 0x02c5fb98
02c638f8  mov x0,x19
02c638fc  bl 0x02c63a38
02c63900  mov x0,x19
02c63904  bl 0x02c63668
02c63908  ldr x8,[x23]
02c6390c  mov x20,x0
02c63910  ldr w9,[x8, #0xe4]
02c63914  cbnz w9,0x02c63920
02c63918  mov x0,x8
02c6391c  bl 0x029f5bd0
02c63920  mov x0,x20
02c63924  mov x1,xzr
02c63928  mov x2,xzr
02c6392c  bl 0x057dfa70
02c63930  tbz w0,#0x0,0x02c63974
02c63934  ldr x8,[x24]
02c63938  ldr x8,[x8, #0xb8]
02c6393c  ldr x8,[x8]
02c63940  cbz x8,0x02c63a34
02c63944  ldr x8,[x8, #0x90]
02c63948  cbz x8,0x02c63a34
02c6394c  cbz x20,0x02c63a34
02c63950  ldr w8,[x8, #0x18]
02c63954  mov x0,x20
02c63958  mov w1,w22
02c6395c  sub w2,w8,#0x1
02c63960  bl 0x02c61164
02c63964  fmov s0,s8
02c63968  fmov s1,s9
02c6396c  mov x0,x20
02c63970  bl 0x02c6298c
02c63974  mov x0,x19
02c63978  bl 0x02c633b4
02c6397c  ldr x8,[x24]
02c63980  ldr x8,[x8, #0xb8]
02c63984  ldr x8,[x8]
02c63988  cbz x8,0x02c63a34
02c6398c  ldr x8,[x8, #0x90]
02c63990  cbz x8,0x02c63a34
02c63994  adrp x22,0x5e58000
02c63998  add x1,sp,#0x1c
02c6399c  ldr x22,[x22, #0xa10]
02c639a0  ldr w8,[x8, #0x18]
02c639a4  ldr x20,[x19, #0x48]
02c639a8  ldr x0,[x22, #0x48]
02c639ac  str w8,[sp, #0x1c]
02c639b0  bl 0x029f5bd8
02c639b4  mov x21,x0
02c639b8  ldr x0,[x22, #0x48]
02c639bc  mov w8,#0x14
02c639c0  add x1,sp,#0x18
02c639c4  str w8,[sp, #0x18]
02c639c8  bl 0x029f5bd8
02c639cc  adrp x8,0x5e63000
02c639d0  mov x2,x0
02c639d4  mov x1,x21
02c639d8  ldr x8,[x8, #0x838]
02c639dc  mov x3,xzr
02c639e0  ldr x8,[x8]
02c639e4  mov x0,x8
02c639e8  bl 0x046c1d14
02c639ec  cbz x20,0x02c63a34
02c639f0  ldr x8,[x20]
02c639f4  mov x1,x0
02c639f8  mov x0,x20
02c639fc  ldr x9,[x8, #0x558]
02c63a00  ldr x2,[x8, #0x560]
02c63a04  blr x9
02c63a08  mov x0,x19
02c63a0c  bl 0x02c5e45c
02c63a10  mov w0,#0x1
02c63a14  b 0x02c63a1c
02c63a18  mov w0,wzr
02c63a1c  ldp x20,x19,[sp, #0x40]
02c63a20  ldr x30,[sp, #0x10]
02c63a24  ldp x22,x21,[sp, #0x30]
02c63a28  ldp x24,x23,[sp, #0x20]
02c63a2c  ldp d9,d8,[sp], #0x50
02c63a30  ret
02c63a34  bl 0x029f5cfc
