02ca7008  str x30,[sp, #-0x20]!
02ca700c  stp x20,x19,[sp, #0x10]
02ca7010  adrp x19,0x625c000
02ca7014  adrp x20,0x5e5d000
02ca7018  ldrb w8,[x19, #0x4db]
02ca701c  ldr x20,[x20, #0xc20]
02ca7020  tbnz w8,#0x0,0x02ca7044
02ca7024  adrp x0,0x5e59000
02ca7028  ldr x0,[x0, #0x1c0]
02ca702c  bl 0x029f5a50
02ca7030  adrp x0,0x5e5d000
02ca7034  ldr x0,[x0, #0xc20]
02ca7038  bl 0x029f5a50
02ca703c  mov w8,#0x1
02ca7040  strb w8,[x19, #0x4db]
02ca7044  ldr x0,[x20]
02ca7048  adrp x19,0x5e59000
02ca704c  ldr w8,[x0, #0xe4]
02ca7050  ldr x19,[x19, #0x1c0]
02ca7054  cbnz w8,0x02ca7060
02ca7058  bl 0x029f5bd0
02ca705c  ldr x0,[x20]
02ca7060  ldr x8,[x19]
02ca7064  ldr x9,[x0, #0xb8]
02ca7068  ldr w10,[x8, #0xe4]
02ca706c  ldr x19,[x9, #0x10]
02ca7070  cbnz w10,0x02ca707c
02ca7074  mov x0,x8
02ca7078  bl 0x029f5bd0
02ca707c  mov x0,x19
02ca7080  mov x1,xzr
02ca7084  mov x2,xzr
02ca7088  bl 0x057dfa70
02ca708c  tbz w0,#0x0,0x02ca70c0
02ca7090  ldr x0,[x20]
02ca7094  ldr w8,[x0, #0xe4]
02ca7098  cbnz w8,0x02ca70a4
02ca709c  bl 0x029f5bd0
02ca70a0  ldr x0,[x20]
02ca70a4  ldr x8,[x0, #0xb8]
02ca70a8  ldr x8,[x8, #0x10]
02ca70ac  cbz x8,0x02ca70d0
02ca70b0  ldr w8,[x8, #0x30]
02ca70b4  cmp w8,#0xbd
02ca70b8  cset w0,gt
02ca70bc  b 0x02ca70c4
02ca70c0  mov w0,wzr
02ca70c4  ldp x20,x19,[sp, #0x10]
02ca70c8  ldr x30,[sp], #0x20
02ca70cc  ret
02ca70d0  bl 0x029f5cfc
