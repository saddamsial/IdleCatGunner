02c4aa54  sub sp,sp,#0x20
02c4aa58  str x30,[sp, #0x10]
02c4aa5c  fmov s0,s3
02c4aa60  mov x8,sp
02c4aa64  mov x1,xzr
02c4aa68  add x0,x8,#0xc
02c4aa6c  stp s4,s5,[sp]
02c4aa70  stp s6,s7,[sp, #0x8]
02c4aa74  bl 0x04863ac8
02c4aa78  ldr x30,[sp, #0x10]
02c4aa7c  add sp,sp,#0x20
02c4aa80  ret
