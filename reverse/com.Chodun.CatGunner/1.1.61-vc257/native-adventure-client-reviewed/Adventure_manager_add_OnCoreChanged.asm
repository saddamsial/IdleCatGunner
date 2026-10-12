02c2c70c  stp x30,x23,[sp, #-0x30]!
02c2c710  stp x22,x21,[sp, #0x10]
02c2c714  stp x20,x19,[sp, #0x20]
02c2c718  adrp x20,0x625b000
02c2c71c  adrp x22,0x5e5d000
02c2c720  mov x19,x0
02c2c724  ldrb w8,[x20, #0xff5]
02c2c728  ldr x22,[x22, #0xd28]
02c2c72c  tbnz w8,#0x0,0x02c2c750
02c2c730  adrp x0,0x5e59000
02c2c734  ldr x0,[x0, #0x288]
02c2c738  bl 0x029f5a50
02c2c73c  adrp x0,0x5e5d000
02c2c740  ldr x0,[x0, #0xd28]
02c2c744  bl 0x029f5a50
02c2c748  mov w8,#0x1
02c2c74c  strb w8,[x20, #0xff5]
02c2c750  ldr x0,[x22]
02c2c754  ldr w8,[x0, #0xe4]
02c2c758  cbnz w8,0x02c2c764
02c2c75c  bl 0x029f5bd0
02c2c760  ldr x0,[x22]
02c2c764  ldr x8,[x0, #0xb8]
02c2c768  adrp x23,0x5e59000
02c2c76c  ldr x23,[x23, #0x288]
02c2c770  ldr x20,[x8]
02c2c774  mov x0,x20
02c2c778  mov x1,x19
02c2c77c  mov x2,xzr
02c2c780  bl 0x04896684
02c2c784  mov x21,x0
02c2c788  cbz x0,0x02c2c79c
02c2c78c  ldr x1,[x23]
02c2c790  ldr x8,[x21]
02c2c794  cmp x8,x1
02c2c798  b.ne 0x02c2c7dc
02c2c79c  ldr x0,[x22]
02c2c7a0  ldr w8,[x0, #0xe4]
02c2c7a4  cbnz w8,0x02c2c7b0
02c2c7a8  bl 0x029f5bd0
02c2c7ac  ldr x0,[x22]
02c2c7b0  ldr x0,[x0, #0xb8]
02c2c7b4  mov x1,x21
02c2c7b8  mov x2,x20
02c2c7bc  bl 0x02a2e558
02c2c7c0  cmp x0,x20
02c2c7c4  mov x20,x0
02c2c7c8  b.ne 0x02c2c774
02c2c7cc  ldp x20,x19,[sp, #0x20]
02c2c7d0  ldp x22,x21,[sp, #0x10]
02c2c7d4  ldp x30,x23,[sp], #0x30
02c2c7d8  ret
02c2c7dc  mov x0,x21
02c2c7e0  bl 0x029f607c
