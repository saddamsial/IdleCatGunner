02c2029c  str x30,[sp, #-0x30]!
02c202a0  stp x22,x21,[sp, #0x10]
02c202a4  stp x20,x19,[sp, #0x20]
02c202a8  adrp x22,0x625b000
02c202ac  adrp x21,0x5e59000
02c202b0  mov w19,w1
02c202b4  ldrb w8,[x22, #0xf6f]
02c202b8  ldr x21,[x21, #0x1c0]
02c202bc  mov x20,x0
02c202c0  tbnz w8,#0x0,0x02c202d8
02c202c4  adrp x0,0x5e59000
02c202c8  ldr x0,[x0, #0x1c0]
02c202cc  bl 0x029f5a50
02c202d0  mov w8,#0x1
02c202d4  strb w8,[x22, #0xf6f]
02c202d8  ldr x0,[x21]
02c202dc  ldr x21,[x20, #0x28]
02c202e0  ldr w8,[x0, #0xe4]
02c202e4  cbnz w8,0x02c202ec
02c202e8  bl 0x029f5bd0
02c202ec  mov x0,x21
02c202f0  mov x1,xzr
02c202f4  mov x2,xzr
02c202f8  bl 0x057e14b4
02c202fc  tbz w0,#0x0,0x02c20310
02c20300  ldp x20,x19,[sp, #0x20]
02c20304  ldp x22,x21,[sp, #0x10]
02c20308  ldr x30,[sp], #0x30
02c2030c  ret
02c20310  ldr x0,[x20, #0x28]
02c20314  cbz x0,0x02c2033c
02c20318  movi d0,#0x0
02c2031c  fmov s1,0x3f800000
02c20320  tst w19,#0x1
02c20324  ldp x20,x19,[sp, #0x20]
02c20328  mov x1,xzr
02c2032c  ldp x22,x21,[sp, #0x10]
02c20330  fcsel s0,s0,s1,ne
02c20334  ldr x30,[sp], #0x30
02c20338  b 0x0578880c
02c2033c  bl 0x029f5cfc
