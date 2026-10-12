02b9af1c  stp x30,x19,[sp, #-0x10]!
02b9af20  mov x1,xzr
02b9af24  mov x19,x0
02b9af28  strb wzr,[x0, #0x34]
02b9af2c  bl 0x057dc0f8
02b9af30  cbz x0,0x02b9af48
02b9af34  ldp s0,s1,[x19, #0x38]
02b9af38  mov x1,xzr
02b9af3c  ldr s2,[x19, #0x40]
02b9af40  ldp x30,x19,[sp], #0x10
02b9af44  b 0x057ef654
02b9af48  bl 0x029f5cfc
