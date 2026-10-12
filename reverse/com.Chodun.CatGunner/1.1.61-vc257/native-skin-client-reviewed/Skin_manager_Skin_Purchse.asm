02ca7934  str x30,[sp, #-0x30]!
02ca7938  stp x22,x21,[sp, #0x10]
02ca793c  stp x20,x19,[sp, #0x20]
02ca7940  adrp x21,0x625c000
02ca7944  mov w20,w1
02ca7948  mov x19,x0
02ca794c  ldrb w8,[x21, #0x4e3]
02ca7950  tbnz w8,#0x0,0x02ca7968
02ca7954  adrp x0,0x5e5d000
02ca7958  ldr x0,[x0, #0x338]
02ca795c  bl 0x029f5a50
02ca7960  mov w8,#0x1
02ca7964  strb w8,[x21, #0x4e3]
02ca7968  mov x0,x19
02ca796c  mov w1,w20
02ca7970  bl 0x02ca7a94
02ca7974  mov w21,w0
02ca7978  mov x0,x19
02ca797c  mov w1,w20
02ca7980  bl 0x02ca7ac4
02ca7984  tbnz w0,#0x0,0x02ca79bc
02ca7988  adrp x22,0x5e5d000
02ca798c  ldr x22,[x22, #0x338]
02ca7990  ldr x0,[x22]
02ca7994  ldr w8,[x0, #0xe4]
02ca7998  cbnz w8,0x02ca79a4
02ca799c  bl 0x029f5bd0
02ca79a0  ldr x0,[x22]
02ca79a4  ldr x8,[x0, #0xb8]
02ca79a8  mov x2,xzr
02ca79ac  ldp x0,x1,[x8, #0x90]
02ca79b0  bl 0x02b1e644
02ca79b4  cmp w0,w21
02ca79b8  b.ge 0x02ca79cc
02ca79bc  ldp x20,x19,[sp, #0x20]
02ca79c0  ldp x22,x21,[sp, #0x10]
02ca79c4  ldr x30,[sp], #0x30
02ca79c8  ret
02ca79cc  ldr x0,[x22]
02ca79d0  ldr w8,[x0, #0xe4]
02ca79d4  cbnz w8,0x02ca79dc
02ca79d8  bl 0x029f5bd0
02ca79dc  mov w0,w21
02ca79e0  mov w1,#0x2
02ca79e4  mov x2,xzr
02ca79e8  bl 0x02b7f278
02ca79ec  ldr x8,[x19, #0x28]
02ca79f0  cbz x8,0x02ca7a8c
02ca79f4  ldr w9,[x8, #0x18]
02ca79f8  cmp w9,w20
02ca79fc  b.ls 0x02ca7a90
02ca7a00  add x8,x8,w20, SXTW 
02ca7a04  ldr x0,[x19, #0x70]
02ca7a08  mov w9,#0x1
02ca7a0c  strb w9,[x8, #0x20]
02ca7a10  cbz x0,0x02ca7a8c
02ca7a14  ldr w1,[x0, #0x20]
02ca7a18  bl 0x02ca7f64
02ca7a1c  mov x0,x19
02ca7a20  bl 0x02ca7b10
02ca7a24  mov x0,x19
02ca7a28  bl 0x02ca7618
02ca7a2c  adrp x19,0x625b000
02ca7a30  ldrb w8,[x19, #0xa57]
02ca7a34  cbnz w8,0x02ca7a4c
02ca7a38  adrp x0,0x5e5d000
02ca7a3c  ldr x0,[x0, #0xd70]
02ca7a40  bl 0x029f5a50
02ca7a44  mov w8,#0x1
02ca7a48  strb w8,[x19, #0xa57]
02ca7a4c  adrp x8,0x5e5d000
02ca7a50  ldr x8,[x8, #0xd70]
02ca7a54  ldr x8,[x8]
02ca7a58  ldr x8,[x8, #0xb8]
02ca7a5c  ldr x0,[x8]
02ca7a60  cbz x0,0x02ca7a8c
02ca7a64  fmov s0,0x3f800000
02ca7a68  mov w1,#0x7
02ca7a6c  mov x2,xzr
02ca7a70  mov x3,xzr
02ca7a74  bl 0x02c1f10c
02ca7a78  ldp x20,x19,[sp, #0x20]
02ca7a7c  mov x0,xzr
02ca7a80  ldp x22,x21,[sp, #0x10]
02ca7a84  ldr x30,[sp], #0x30
02ca7a88  b 0x02b7dcfc
02ca7a8c  bl 0x029f5cfc
02ca7a90  bl 0x029f5d04
