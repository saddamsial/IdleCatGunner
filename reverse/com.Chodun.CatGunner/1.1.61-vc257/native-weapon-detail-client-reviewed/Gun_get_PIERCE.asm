02be07d8  sub sp,sp,#0x30
02be07dc  str x30,[sp, #0x10]
02be07e0  stp x20,x19,[sp, #0x20]
02be07e4  adrp x20,0x625b000
02be07e8  adrp x19,0x5e5e000
02be07ec  ldrb w8,[x20, #0xc5d]
02be07f0  ldr x19,[x19, #0x528]
02be07f4  tbnz w8,#0x0,0x02be0818
02be07f8  adrp x0,0x5e5e000
02be07fc  ldr x0,[x0, #0x528]
02be0800  bl 0x029f5a50
02be0804  adrp x0,0x5e60000
02be0808  ldr x0,[x0, #0xd90]
02be080c  bl 0x029f5a50
02be0810  mov w8,#0x1
02be0814  strb w8,[x20, #0xc5d]
02be0818  ldr x0,[x19]
02be081c  adrp x19,0x5e60000
02be0820  ldr w8,[x0, #0xe4]
02be0824  ldr x19,[x19, #0xd90]
02be0828  cbnz w8,0x02be0830
02be082c  bl 0x029f5bd0
02be0830  ldr x0,[x19]
02be0834  mov w1,#0x1
02be0838  mov w2,wzr
02be083c  mov w3,#0x1
02be0840  mov w4,wzr
02be0844  mov x5,xzr
02be0848  mov x6,xzr
02be084c  mov w7,#0x1
02be0850  str xzr,[sp]
02be0854  bl 0x02bccb00
02be0858  ldp x20,x19,[sp, #0x20]
02be085c  ldr x30,[sp, #0x10]
02be0860  add sp,sp,#0x30
02be0864  ret
