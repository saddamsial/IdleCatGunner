02c90ff0  sub sp,sp,#0x30
02c90ff4  stp x30,x21,[sp, #0x10]
02c90ff8  stp x20,x19,[sp, #0x20]
02c90ffc  adrp x21,0x625c000
02c91000  adrp x20,0x5e5e000
02c91004  mov w19,w0
02c91008  ldrb w8,[x21, #0x3ee]
02c9100c  ldr x20,[x20, #0xb8]
02c91010  tbnz w8,#0x0,0x02c91034
02c91014  adrp x0,0x5e59000
02c91018  ldr x0,[x0, #0x7d0]
02c9101c  bl 0x029f5a50
02c91020  adrp x0,0x5e5e000
02c91024  ldr x0,[x0, #0xb8]
02c91028  bl 0x029f5a50
02c9102c  mov w8,#0x1
02c91030  strb w8,[x21, #0x3ee]
02c91034  ldr x0,[x20]
02c91038  str xzr,[sp, #0x8]
02c9103c  ldr w8,[x0, #0xe4]
02c91040  cbnz w8,0x02c9104c
02c91044  bl 0x029f5bd0
02c91048  ldr x0,[x20]
02c9104c  ldr x8,[x0, #0xb8]
02c91050  ldr x8,[x8, #0x8]
02c91054  cbz x8,0x02c910d4
02c91058  ldr w9,[x8, #0x18]
02c9105c  cmp w9,w19
02c91060  b.ls 0x02c910d8
02c91064  adrp x20,0x5e59000
02c91068  add x8,x8,w19, SXTW  #0x3
02c9106c  ldr x20,[x20, #0x7d0]
02c91070  ldr x19,[x8, #0x20]
02c91074  ldr x0,[x20]
02c91078  str x19,[sp, #0x8]
02c9107c  ldr w8,[x0, #0xe4]
02c91080  cbnz w8,0x02c91088
02c91084  bl 0x029f5bd0
02c91088  mov x0,x19
02c9108c  mov x1,xzr
02c91090  mov x2,xzr
02c91094  bl 0x04833138
02c91098  mov w8,w0
02c9109c  mov x0,xzr
02c910a0  tbnz w8,#0x0,0x02c910c4
02c910a4  ldr x0,[x20]
02c910a8  ldr w8,[x0, #0xe4]
02c910ac  cbnz w8,0x02c910b4
02c910b0  bl 0x029f5bd0
02c910b4  fmov d0,0x401c000000000000
02c910b8  add x0,sp,#0x8
02c910bc  mov x1,xzr
02c910c0  bl 0x0482f924
02c910c4  ldp x20,x19,[sp, #0x20]
02c910c8  ldp x30,x21,[sp, #0x10]
02c910cc  add sp,sp,#0x30
02c910d0  ret
02c910d4  bl 0x029f5cfc
02c910d8  bl 0x029f5d04
