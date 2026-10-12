02c7000c  str x30,[sp, #-0x20]!
02c70010  stp x20,x19,[sp, #0x10]
02c70014  adrp x20,0x625c000
02c70018  mov x19,x0
02c7001c  ldrb w8,[x20, #0x2bc]
02c70020  tbnz w8,#0x0,0x02c70038
02c70024  adrp x0,0x5e5d000
02c70028  ldr x0,[x0, #0xd40]
02c7002c  bl 0x029f5a50
02c70030  mov w8,#0x1
02c70034  strb w8,[x20, #0x2bc]
02c70038  ldr w8,[x19, #0x88]
02c7003c  cmp w8,#0x1
02c70040  b.ne 0x02c70070
02c70044  adrp x8,0x5e5d000
02c70048  ldr x8,[x8, #0xd40]
02c7004c  ldr x8,[x8]
02c70050  ldr x8,[x8, #0xb8]
02c70054  ldr x0,[x8]
02c70058  cbz x0,0x02c70088
02c7005c  ldr w1,[x19, #0x90]
02c70060  mov x2,xzr
02c70064  bl 0x02c68408
02c70068  eor w8,w0,#0x1
02c7006c  b 0x02c70078
02c70070  cmp w8,#0x2
02c70074  cset w8,eq
02c70078  ldp x20,x19,[sp, #0x10]
02c7007c  and w0,w8,#0x1
02c70080  ldr x30,[sp], #0x20
02c70084  ret
02c70088  bl 0x029f5cfc
