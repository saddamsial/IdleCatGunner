02c9077c  sub sp,sp,#0x30
02c90780  stp x30,x21,[sp, #0x10]
02c90784  stp x20,x19,[sp, #0x20]
02c90788  adrp x21,0x625c000
02c9078c  adrp x20,0x5e5e000
02c90790  mov w19,w0
02c90794  ldrb w8,[x21, #0x3ef]
02c90798  ldr x20,[x20, #0xb8]
02c9079c  tbnz w8,#0x0,0x02c907cc
02c907a0  adrp x0,0x5e59000
02c907a4  ldr x0,[x0, #0x7d0]
02c907a8  bl 0x029f5a50
02c907ac  adrp x0,0x5e5e000
02c907b0  ldr x0,[x0, #0xb8]
02c907b4  bl 0x029f5a50
02c907b8  adrp x0,0x5e5d000
02c907bc  ldr x0,[x0, #0x3c0]
02c907c0  bl 0x029f5a50
02c907c4  mov w8,#0x1
02c907c8  strb w8,[x21, #0x3ef]
02c907cc  ldr x0,[x20]
02c907d0  str xzr,[sp, #0x8]
02c907d4  ldr w8,[x0, #0xe4]
02c907d8  cbnz w8,0x02c907e4
02c907dc  bl 0x029f5bd0
02c907e0  ldr x0,[x20]
02c907e4  ldr x8,[x0, #0xb8]
02c907e8  ldr x8,[x8, #0x8]
02c907ec  cbz x8,0x02c908a8
02c907f0  ldr w9,[x8, #0x18]
02c907f4  cmp w9,w19
02c907f8  b.ls 0x02c908ac
02c907fc  adrp x20,0x5e59000
02c90800  add x8,x8,w19, SXTW  #0x3
02c90804  ldr x20,[x20, #0x7d0]
02c90808  ldr x19,[x8, #0x20]
02c9080c  ldr x0,[x20]
02c90810  str x19,[sp, #0x8]
02c90814  ldr w8,[x0, #0xe4]
02c90818  cbnz w8,0x02c90820
02c9081c  bl 0x029f5bd0
02c90820  mov x0,x19
02c90824  mov x1,xzr
02c90828  mov x2,xzr
02c9082c  bl 0x04833138
02c90830  tbz w0,#0x0,0x02c9083c
02c90834  mov w0,wzr
02c90838  b 0x02c90894
02c9083c  adrp x8,0x5e5d000
02c90840  ldr x8,[x8, #0x3c0]
02c90844  ldr x0,[x8]
02c90848  ldr w8,[x0, #0xe4]
02c9084c  cbnz w8,0x02c90854
02c90850  bl 0x029f5bd0
02c90854  mov x0,xzr
02c90858  bl 0x02c1a570
02c9085c  ldr x8,[x20]
02c90860  mov x19,x0
02c90864  ldr w9,[x8, #0xe4]
02c90868  cbnz w9,0x02c90874
02c9086c  mov x0,x8
02c90870  bl 0x029f5bd0
02c90874  fmov d0,0x401c000000000000
02c90878  add x0,sp,#0x8
02c9087c  mov x1,xzr
02c90880  bl 0x0482f924
02c90884  mov x1,x0
02c90888  mov x0,x19
02c9088c  mov x2,xzr
02c90890  bl 0x04833208
02c90894  ldp x20,x19,[sp, #0x20]
02c90898  and w0,w0,#0x1
02c9089c  ldp x30,x21,[sp, #0x10]
02c908a0  add sp,sp,#0x30
02c908a4  ret
02c908a8  bl 0x029f5cfc
02c908ac  bl 0x029f5d04
