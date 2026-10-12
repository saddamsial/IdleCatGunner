02c887b8  str x30,[sp, #-0x30]!
02c887bc  stp x22,x21,[sp, #0x10]
02c887c0  stp x20,x19,[sp, #0x20]
02c887c4  adrp x21,0x625c000
02c887c8  adrp x22,0x5e5d000
02c887cc  mov x20,x0
02c887d0  ldrb w9,[x21, #0x38c]
02c887d4  ldr x22,[x22, #0xd60]
02c887d8  mov x19,x8
02c887dc  tbnz w9,#0x0,0x02c887f4
02c887e0  adrp x0,0x5e5d000
02c887e4  ldr x0,[x0, #0xd60]
02c887e8  bl 0x029f5a50
02c887ec  mov w8,#0x1
02c887f0  strb w8,[x21, #0x38c]
02c887f4  ldr x8,[x22]
02c887f8  ldr x8,[x8, #0xb8]
02c887fc  ldr x8,[x8]
02c88800  cbz x8,0x02c88844
02c88804  ldp x0,x1,[x20, #0x18]
02c88808  mov x2,xzr
02c8880c  ldr x21,[x8, #0x28]
02c88810  bl 0x02b1e644
02c88814  cbz x21,0x02c88844
02c88818  ldr w8,[x21, #0x18]
02c8881c  cmp w0,w8
02c88820  b.cs 0x02c88848
02c88824  sxtw x8,w0
02c88828  add x8,x21,x8, LSL #0x5
02c8882c  ldp x22,x21,[sp, #0x10]
02c88830  ldp q0,q1,[x8, #0x20]
02c88834  stp q0,q1,[x19]
02c88838  ldp x20,x19,[sp, #0x20]
02c8883c  ldr x30,[sp], #0x30
02c88840  ret
02c88844  bl 0x029f5cfc
02c88848  bl 0x029f5d04
