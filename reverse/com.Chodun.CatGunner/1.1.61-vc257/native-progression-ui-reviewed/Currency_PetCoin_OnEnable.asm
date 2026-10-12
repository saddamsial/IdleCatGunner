02c2685c  stp x30,x23,[sp, #-0x30]!
02c26860  stp x22,x21,[sp, #0x10]
02c26864  stp x20,x19,[sp, #0x20]
02c26868  adrp x22,0x625b000
02c2686c  adrp x23,0x5e59000
02c26870  adrp x20,0x5e62000
02c26874  adrp x21,0x5e5d000
02c26878  ldr x23,[x23, #0x288]
02c2687c  ldrb w8,[x22, #0xfae]
02c26880  ldr x20,[x20, #0xd20]
02c26884  ldr x21,[x21, #0x338]
02c26888  mov x19,x0
02c2688c  tbnz w8,#0x0,0x02c268bc
02c26890  adrp x0,0x5e59000
02c26894  ldr x0,[x0, #0x288]
02c26898  bl 0x029f5a50
02c2689c  adrp x0,0x5e62000
02c268a0  ldr x0,[x0, #0xd20]
02c268a4  bl 0x029f5a50
02c268a8  adrp x0,0x5e5d000
02c268ac  ldr x0,[x0, #0x338]
02c268b0  bl 0x029f5a50
02c268b4  mov w8,#0x1
02c268b8  strb w8,[x22, #0xfae]
02c268bc  ldr x0,[x23]
02c268c0  bl 0x029f5cec
02c268c4  ldr x2,[x20]
02c268c8  mov x1,x19
02c268cc  mov x3,xzr
02c268d0  mov x20,x0
02c268d4  bl 0x047b3618
02c268d8  ldr x0,[x21]
02c268dc  ldr w8,[x0, #0xe4]
02c268e0  cbnz w8,0x02c268e8
02c268e4  bl 0x029f5bd0
02c268e8  mov x0,x20
02c268ec  mov x1,xzr
02c268f0  bl 0x02b7b224
02c268f4  ldr x8,[x21]
02c268f8  ldr x19,[x19, #0x28]
02c268fc  mov x1,xzr
02c26900  ldr x8,[x8, #0xb8]
02c26904  add x0,x8,#0xc0
02c26908  bl 0x0484e6a4
02c2690c  cbz x19,0x02c26934
02c26910  ldr x8,[x19]
02c26914  mov x1,x0
02c26918  mov x0,x19
02c2691c  ldp x20,x19,[sp, #0x20]
02c26920  ldp x22,x21,[sp, #0x10]
02c26924  ldr x2,[x8, #0x560]
02c26928  ldr x3,[x8, #0x558]
02c2692c  ldp x30,x23,[sp], #0x30
02c26930  br x3
02c26934  bl 0x029f5cfc
