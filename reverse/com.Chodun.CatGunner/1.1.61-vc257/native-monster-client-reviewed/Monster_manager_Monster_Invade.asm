02c4c95c  str x30,[sp, #-0x30]!
02c4c960  stp x22,x21,[sp, #0x10]
02c4c964  stp x20,x19,[sp, #0x20]
02c4c968  adrp x22,0x625c000
02c4c96c  adrp x21,0x5e5d000
02c4c970  mov x20,x1
02c4c974  ldrb w8,[x22, #0x14f]
02c4c978  ldr x21,[x21, #0x338]
02c4c97c  mov x19,x0
02c4c980  tbnz w8,#0x0,0x02c4c9b0
02c4c984  adrp x0,0x5e5d000
02c4c988  ldr x0,[x0, #0x338]
02c4c98c  bl 0x029f5a50
02c4c990  adrp x0,0x5e63000
02c4c994  ldr x0,[x0, #0x498]
02c4c998  bl 0x029f5a50
02c4c99c  adrp x0,0x5e63000
02c4c9a0  ldr x0,[x0, #0x4a0]
02c4c9a4  bl 0x029f5a50
02c4c9a8  mov w8,#0x1
02c4c9ac  strb w8,[x22, #0x14f]
02c4c9b0  ldr x0,[x21]
02c4c9b4  ldr w8,[x0, #0xe4]
02c4c9b8  cbnz w8,0x02c4c9c4
02c4c9bc  bl 0x029f5bd0
02c4c9c0  ldr x0,[x21]
02c4c9c4  ldr x8,[x0, #0xb8]
02c4c9c8  ldrb w8,[x8]
02c4c9cc  cbz w8,0x02c4cabc
02c4c9d0  ldr w8,[x19, #0xbc]
02c4c9d4  ldr x0,[x19, #0xc8]
02c4c9d8  sub w8,w8,#0x1
02c4c9dc  str w8,[x19, #0xbc]
02c4c9e0  cbz x0,0x02c4cacc
02c4c9e4  ldr s0,[x19, #0xc0]
02c4c9e8  scvtf s1,w8
02c4c9ec  mov w8,#0x43b40000
02c4c9f0  mov x1,xzr
02c4c9f4  scvtf s0,s0
02c4c9f8  fdiv s0,s1,s0
02c4c9fc  fmov s1,w8
02c4ca00  fmul s0,s0,s1
02c4ca04  bl 0x04b58204
02c4ca08  ldr w8,[x19, #0xbc]
02c4ca0c  cmp w8,#0x0
02c4ca10  b.le 0x02c4ca88
02c4ca14  ldr x0,[x19, #0x178]
02c4ca18  cbz x0,0x02c4cacc
02c4ca1c  adrp x8,0x5e63000
02c4ca20  mov x1,x20
02c4ca24  ldr x8,[x8, #0x4a0]
02c4ca28  ldr x2,[x8]
02c4ca2c  bl 0x0452e0a8
02c4ca30  ldr x0,[x19, #0x170]
02c4ca34  cbz x0,0x02c4cacc
02c4ca38  adrp x9,0x5e63000
02c4ca3c  ldr x9,[x9, #0x498]
02c4ca40  ldr w10,[x0, #0x1c]
02c4ca44  ldr x8,[x0, #0x10]
02c4ca48  ldr x9,[x9]
02c4ca4c  add w10,w10,#0x1
02c4ca50  str w10,[x0, #0x1c]
02c4ca54  cbz x8,0x02c4cacc
02c4ca58  ldrsw x10,[x0, #0x18]
02c4ca5c  ldr w11,[x8, #0x18]
02c4ca60  cmp w10,w11
02c4ca64  b.cs 0x02c4ca9c
02c4ca68  add x8,x8,x10, LSL #0x3
02c4ca6c  add w9,w10,#0x1
02c4ca70  mov x1,x20
02c4ca74  str w9,[x0, #0x18]
02c4ca78  str x20,[x8, #0x20]!
02c4ca7c  mov x0,x8
02c4ca80  bl 0x029f59f4
02c4ca84  b 0x02c4cab0
02c4ca88  mov x0,x19
02c4ca8c  ldp x20,x19,[sp, #0x20]
02c4ca90  ldp x22,x21,[sp, #0x10]
02c4ca94  ldr x30,[sp], #0x30
02c4ca98  b 0x02c4e5b8
02c4ca9c  ldr x8,[x9, #0x20]
02c4caa0  mov x1,x20
02c4caa4  ldr x8,[x8, #0xc0]
02c4caa8  ldr x2,[x8, #0x70]
02c4caac  bl 0x0452cba8
02c4cab0  ldr w8,[x19, #0xd4]
02c4cab4  add w8,w8,#0x1
02c4cab8  str w8,[x19, #0xd4]
02c4cabc  ldp x20,x19,[sp, #0x20]
02c4cac0  ldp x22,x21,[sp, #0x10]
02c4cac4  ldr x30,[sp], #0x30
02c4cac8  ret
02c4cacc  bl 0x029f5cfc
