02ca0830  stp x30,x21,[sp, #-0x20]!
02ca0834  stp x20,x19,[sp, #0x10]
02ca0838  adrp x20,0x625c000
02ca083c  adrp x21,0x5e5e000
02ca0840  mov x19,x0
02ca0844  ldrb w8,[x20, #0x482]
02ca0848  ldr x21,[x21, #0x70]
02ca084c  tbnz w8,#0x0,0x02ca0870
02ca0850  adrp x0,0x5e5e000
02ca0854  ldr x0,[x0, #0x70]
02ca0858  bl 0x029f5a50
02ca085c  adrp x0,0x5e5e000
02ca0860  ldr x0,[x0, #0x3e0]
02ca0864  bl 0x029f5a50
02ca0868  mov w8,#0x1
02ca086c  strb w8,[x20, #0x482]
02ca0870  ldr x0,[x21]
02ca0874  ldr w8,[x0, #0xe4]
02ca0878  cbnz w8,0x02ca0880
02ca087c  bl 0x029f5bd0
02ca0880  mov x0,xzr
02ca0884  bl 0x02c549a0
02ca0888  ldr w8,[x19, #0x2c]
02ca088c  cmp w8,w0
02ca0890  b.eq 0x02ca08e8
02ca0894  adrp x20,0x5e5e000
02ca0898  adrp x8,0x116f000
02ca089c  ldr x20,[x20, #0x3e0]
02ca08a0  ldr d0,[x8, #0xdf0]
02ca08a4  stp wzr,w0,[x19, #0x28]
02ca08a8  ldr x8,[x20]
02ca08ac  str d0,[x19, #0x20]
02ca08b0  ldr w9,[x8, #0xe4]
02ca08b4  cbnz w9,0x02ca08c4
02ca08b8  mov x0,x8
02ca08bc  bl 0x029f5bd0
02ca08c0  ldr x8,[x20]
02ca08c4  ldr x8,[x8, #0xb8]
02ca08c8  ldr x8,[x8, #0x18]
02ca08cc  cbz x8,0x02ca08e8
02ca08d0  ldp x20,x19,[sp, #0x10]
02ca08d4  ldr x0,[x8, #0x40]
02ca08d8  ldr x1,[x8, #0x28]
02ca08dc  ldr x2,[x8, #0x18]
02ca08e0  ldp x30,x21,[sp], #0x20
02ca08e4  br x2
02ca08e8  ldp x20,x19,[sp, #0x10]
02ca08ec  ldp x30,x21,[sp], #0x20
02ca08f0  ret
