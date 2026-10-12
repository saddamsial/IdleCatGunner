02ca1040  stp x30,x21,[sp, #-0x20]!
02ca1044  stp x20,x19,[sp, #0x10]
02ca1048  adrp x21,0x625c000
02ca104c  adrp x20,0x5e5e000
02ca1050  mov x19,x0
02ca1054  ldrb w8,[x21, #0x480]
02ca1058  ldr x20,[x20, #0x3e0]
02ca105c  tbnz w8,#0x0,0x02ca1074
02ca1060  adrp x0,0x5e5e000
02ca1064  ldr x0,[x0, #0x3e0]
02ca1068  bl 0x029f5a50
02ca106c  mov w8,#0x1
02ca1070  strb w8,[x21, #0x480]
02ca1074  ldr x0,[x20]
02ca1078  ldr w8,[x0, #0xe4]
02ca107c  cbnz w8,0x02ca1088
02ca1080  bl 0x029f5bd0
02ca1084  ldr x0,[x20]
02ca1088  ldr x8,[x0, #0xb8]
02ca108c  ldr x8,[x8, #0x10]
02ca1090  cbz x8,0x02ca10d0
02ca1094  ldr w9,[x19, #0x20]
02ca1098  mov w10,#0x3
02ca109c  cmp w9,#0x3
02ca10a0  csel w9,w9,w10,lt
02ca10a4  ldr w10,[x8, #0x18]
02ca10a8  cmp w9,#0x1
02ca10ac  csinc w9,w9,wzr,gt
02ca10b0  sub w9,w9,#0x1
02ca10b4  cmp w9,w10
02ca10b8  b.cs 0x02ca10d4
02ca10bc  add x8,x8,w9, UXTW  #0x2
02ca10c0  ldp x20,x19,[sp, #0x10]
02ca10c4  ldr w0,[x8, #0x20]
02ca10c8  ldp x30,x21,[sp], #0x20
02ca10cc  ret
02ca10d0  bl 0x029f5cfc
02ca10d4  bl 0x029f5d04
