02cac8f4  sub sp,sp,#0x30
02cac8f8  stp x30,x21,[sp, #0x10]
02cac8fc  stp x20,x19,[sp, #0x20]
02cac900  mov w20,#0x6667
02cac904  mov w21,#0xa
02cac908  mov w19,w2
02cac90c  movk w20,#0x6666, LSL #16
02cac910  smull x8,w1,w20
02cac914  lsr x9,x8,#0x3f
02cac918  asr x8,x8,#0x22
02cac91c  add w8,w8,w9
02cac920  msub w1,w8,w21,w1
02cac924  mov w2,w8
02cac928  bl 0x02cac79c
02cac92c  smull x8,w19,w20
02cac930  str w0,[sp, #0xc]
02cac934  lsr x9,x8,#0x3f
02cac938  asr x8,x8,#0x22
02cac93c  add w2,w8,w9
02cac940  msub w1,w2,w21,w19
02cac944  bl 0x02cac79c
02cac948  mov w1,w0
02cac94c  add x0,sp,#0xc
02cac950  mov x2,xzr
02cac954  bl 0x0484e630
02cac958  ldp x20,x19,[sp, #0x20]
02cac95c  ldp x30,x21,[sp, #0x10]
02cac960  add sp,sp,#0x30
02cac964  ret
