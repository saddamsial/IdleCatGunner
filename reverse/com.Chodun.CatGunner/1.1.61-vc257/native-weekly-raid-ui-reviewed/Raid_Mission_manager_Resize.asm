02c544a0  str x30,[sp, #-0x20]!
02c544a4  stp x20,x19,[sp, #0x10]
02c544a8  adrp x20,0x625c000
02c544ac  mov x19,x0
02c544b0  ldrb w8,[x20, #0x176]
02c544b4  tbnz w8,#0x0,0x02c544d8
02c544b8  adrp x0,0x5e63000
02c544bc  ldr x0,[x0, #0x600]
02c544c0  bl 0x029f5a50
02c544c4  adrp x0,0x5e62000
02c544c8  ldr x0,[x0, #0x6b0]
02c544cc  bl 0x029f5a50
02c544d0  mov w8,#0x1
02c544d4  strb w8,[x20, #0x176]
02c544d8  ldr x8,[x19]
02c544dc  cbz x8,0x02c544f8
02c544e0  ldr w8,[x8, #0x18]
02c544e4  cmp w8,#0x8
02c544e8  b.ne 0x02c54524
02c544ec  ldp x20,x19,[sp, #0x10]
02c544f0  ldr x30,[sp], #0x20
02c544f4  ret
02c544f8  adrp x8,0x5e62000
02c544fc  mov w1,#0x8
02c54500  ldr x8,[x8, #0x6b0]
02c54504  ldr x0,[x8]
02c54508  bl 0x029f5b40
02c5450c  mov x1,x0
02c54510  mov x0,x19
02c54514  str x1,[x19]
02c54518  ldp x20,x19,[sp, #0x10]
02c5451c  ldr x30,[sp], #0x20
02c54520  b 0x029f59f4
02c54524  adrp x8,0x5e63000
02c54528  mov x0,x19
02c5452c  mov w1,#0x8
02c54530  ldr x8,[x8, #0x600]
02c54534  ldp x20,x19,[sp, #0x10]
02c54538  ldr x2,[x8]
02c5453c  ldr x30,[sp], #0x20
02c54540  b 0x02f2eccc
