049c3814  str x30,[sp, #-0x10]!
049c3818  adrp x8,0x116c000
049c381c  add x0,sp,#0xc
049c3820  add x1,sp,#0x8
049c3824  ldr s1,[x8, #0x26c]
049c3828  fmul s0,s0,s1
049c382c  bl 0x05afb270
049c3830  ldp s1,s0,[sp, #0x8]
049c3834  movi d2,#0x0
049c3838  ldr x30,[sp], #0x10
049c383c  ret
