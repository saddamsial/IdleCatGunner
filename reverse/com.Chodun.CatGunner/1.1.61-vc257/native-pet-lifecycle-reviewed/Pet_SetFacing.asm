02c7a9d8  str d8,[sp, #-0x20]!
02c7a9dc  stp x30,x19,[sp, #0x10]
02c7a9e0  fmov s8,s0
02c7a9e4  fabs s0,s0
02c7a9e8  adrp x8,0x116c000
02c7a9ec  ldr s1,[x8, #0x94]
02c7a9f0  fcmp s0,s1
02c7a9f4  b.pl 0x02c7aa04
02c7a9f8  ldp x30,x19,[sp, #0x10]
02c7a9fc  ldr d8,[sp], #0x20
02c7aa00  ret
02c7aa04  ldr x8,[x0, #0x30]
02c7aa08  cbz x8,0x02c7aa68
02c7aa0c  ldrsw x9,[x0, #0x20]
02c7aa10  ldr w10,[x8, #0x18]
02c7aa14  cmp w9,w10
02c7aa18  b.cs 0x02c7aa6c
02c7aa1c  add x8,x8,x9, LSL #0x3
02c7aa20  ldr x0,[x8, #0x20]
02c7aa24  cbz x0,0x02c7aa68
02c7aa28  mov x1,xzr
02c7aa2c  bl 0x057dfcf4
02c7aa30  cbz x0,0x02c7aa68
02c7aa34  mov x1,xzr
02c7aa38  mov x19,x0
02c7aa3c  bl 0x057ef154
02c7aa40  movi d1,#0x0
02c7aa44  mov w8,#0x43340000
02c7aa48  fcmp s8,#0.0
02c7aa4c  fmov s3,w8
02c7aa50  mov x0,x19
02c7aa54  mov x1,xzr
02c7aa58  ldp x30,x19,[sp, #0x10]
02c7aa5c  fcsel s1,s1,s3,gt
02c7aa60  ldr d8,[sp], #0x20
02c7aa64  b 0x057ef218
02c7aa68  bl 0x029f5cfc
02c7aa6c  bl 0x029f5d04
