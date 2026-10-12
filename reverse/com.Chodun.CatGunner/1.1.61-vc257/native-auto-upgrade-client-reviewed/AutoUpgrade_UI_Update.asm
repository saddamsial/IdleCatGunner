02c1d7a0  str x30,[sp, #-0x20]!
02c1d7a4  stp x20,x19,[sp, #0x10]
02c1d7a8  adrp x20,0x625b000
02c1d7ac  mov x19,x0
02c1d7b0  ldrb w8,[x20, #0xf34]
02c1d7b4  tbnz w8,#0x0,0x02c1d7cc
02c1d7b8  adrp x0,0x5e5d000
02c1d7bc  ldr x0,[x0, #0x4e8]
02c1d7c0  bl 0x029f5a50
02c1d7c4  mov w8,#0x1
02c1d7c8  strb w8,[x20, #0xf34]
02c1d7cc  ldrb w8,[x19, #0x58]
02c1d7d0  cbz w8,0x02c1d83c
02c1d7d4  adrp x20,0x5e5d000
02c1d7d8  ldr x20,[x20, #0x4e8]
02c1d7dc  ldr x0,[x20]
02c1d7e0  ldr w8,[x0, #0xe4]
02c1d7e4  cbnz w8,0x02c1d7ec
02c1d7e8  bl 0x029f5bd0
02c1d7ec  mov x0,xzr
02c1d7f0  bl 0x02cb345c
02c1d7f4  tbz w0,#0x0,0x02c1d848
02c1d7f8  ldr x0,[x20]
02c1d7fc  ldr x19,[x19, #0x50]
02c1d800  ldr w8,[x0, #0xe4]
02c1d804  cbnz w8,0x02c1d80c
02c1d808  bl 0x029f5bd0
02c1d80c  mov x0,xzr
02c1d810  bl 0x02cb34bc
02c1d814  bl 0x02c1d85c
02c1d818  cbz x19,0x02c1d858
02c1d81c  ldr x8,[x19]
02c1d820  mov x1,x0
02c1d824  mov x0,x19
02c1d828  ldp x20,x19,[sp, #0x10]
02c1d82c  ldr x2,[x8, #0x560]
02c1d830  ldr x3,[x8, #0x558]
02c1d834  ldr x30,[sp], #0x20
02c1d838  br x3
02c1d83c  ldp x20,x19,[sp, #0x10]
02c1d840  ldr x30,[sp], #0x20
02c1d844  ret
02c1d848  mov x0,x19
02c1d84c  ldp x20,x19,[sp, #0x10]
02c1d850  ldr x30,[sp], #0x20
02c1d854  b 0x02c1d4b0
02c1d858  bl 0x029f5cfc
