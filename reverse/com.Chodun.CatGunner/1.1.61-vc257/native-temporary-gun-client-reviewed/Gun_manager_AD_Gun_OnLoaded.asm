02c6aa10  stp x30,x19,[sp, #-0x10]!
02c6aa14  ldr w8,[x0, #0xc0]
02c6aa18  cmn w8,#0x1
02c6aa1c  b.eq 0x02c6aa78
02c6aa20  mov x19,x0
02c6aa24  tbnz w8,#0x1f,0x02c6aa6c
02c6aa28  ldr x9,[x19, #0x40]
02c6aa2c  cbz x9,0x02c6aa80
02c6aa30  ldr w10,[x9, #0x18]
02c6aa34  cmp w8,w10
02c6aa38  b.ge 0x02c6aa6c
02c6aa3c  add x8,x9,x8, LSL #0x2
02c6aa40  ldr w9,[x19, #0xc4]
02c6aa44  ldr w8,[x8, #0x20]
02c6aa48  cmp w8,w9
02c6aa4c  b.ne 0x02c6aa6c
02c6aa50  mov x0,x19
02c6aa54  bl 0x02c6a6d8
02c6aa58  fcmp d0,#0.0
02c6aa5c  b.hi 0x02c6aa78
02c6aa60  mov x0,x19
02c6aa64  ldp x30,x19,[sp], #0x10
02c6aa68  b 0x02c6a9e4
02c6aa6c  movi v0.2D,#-0x1
02c6aa70  str xzr,[x19, #0xc8]
02c6aa74  str d0,[x19, #0xc0]
02c6aa78  ldp x30,x19,[sp], #0x10
02c6aa7c  ret
02c6aa80  bl 0x029f5cfc
