02cb0710  str x30,[sp, #-0x30]!
02cb0714  stp x22,x21,[sp, #0x10]
02cb0718  stp x20,x19,[sp, #0x20]
02cb071c  adrp x22,0x625c000
02cb0720  adrp x21,0x5e5d000
02cb0724  mov w20,w0
02cb0728  ldrb w9,[x22, #0x55a]
02cb072c  ldr x21,[x21, #0x4e8]
02cb0730  mov x19,x8
02cb0734  tbnz w9,#0x0,0x02cb074c
02cb0738  adrp x0,0x5e5d000
02cb073c  ldr x0,[x0, #0x4e8]
02cb0740  bl 0x029f5a50
02cb0744  mov w8,#0x1
02cb0748  strb w8,[x22, #0x55a]
02cb074c  ldr x0,[x21]
02cb0750  ldr w8,[x0, #0xe4]
02cb0754  cbnz w8,0x02cb0760
02cb0758  bl 0x029f5bd0
02cb075c  ldr x0,[x21]
02cb0760  ldr x8,[x0, #0xb8]
02cb0764  ldr x8,[x8]
02cb0768  cbz x8,0x02cb07a8
02cb076c  ldr x21,[x8, #0x30]
02cb0770  mov w0,w20
02cb0774  bl 0x02caf208
02cb0778  cbz x21,0x02cb07a8
02cb077c  ldr w8,[x21, #0x18]
02cb0780  cmp w0,w8
02cb0784  b.cs 0x02cb07ac
02cb0788  sxtw x8,w0
02cb078c  add x8,x21,x8, LSL #0x5
02cb0790  ldp x22,x21,[sp, #0x10]
02cb0794  ldp q0,q1,[x8, #0x20]
02cb0798  stp q0,q1,[x19]
02cb079c  ldp x20,x19,[sp, #0x20]
02cb07a0  ldr x30,[sp], #0x30
02cb07a4  ret
02cb07a8  bl 0x029f5cfc
02cb07ac  bl 0x029f5d04
