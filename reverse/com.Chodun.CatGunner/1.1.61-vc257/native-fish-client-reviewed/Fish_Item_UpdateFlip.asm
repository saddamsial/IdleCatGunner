02c61768  stp x30,x23,[sp, #-0x30]!
02c6176c  stp x22,x21,[sp, #0x10]
02c61770  stp x20,x19,[sp, #0x20]
02c61774  adrp x20,0x625c000
02c61778  adrp x21,0x5e59000
02c6177c  mov x19,x0
02c61780  ldrb w8,[x20, #0x223]
02c61784  ldr x21,[x21, #0x1c0]
02c61788  tbnz w8,#0x0,0x02c617a0
02c6178c  adrp x0,0x5e59000
02c61790  ldr x0,[x0, #0x1c0]
02c61794  bl 0x029f5a50
02c61798  mov w8,#0x1
02c6179c  strb w8,[x20, #0x223]
02c617a0  ldr x0,[x21]
02c617a4  ldr x20,[x19, #0x58]
02c617a8  ldr w8,[x0, #0xe4]
02c617ac  cbnz w8,0x02c617b4
02c617b0  bl 0x029f5bd0
02c617b4  mov x0,x20
02c617b8  mov x1,xzr
02c617bc  mov x2,xzr
02c617c0  bl 0x057e14b4
02c617c4  tbz w0,#0x0,0x02c617d8
02c617c8  ldp x20,x19,[sp, #0x20]
02c617cc  ldp x22,x21,[sp, #0x10]
02c617d0  ldp x30,x23,[sp], #0x30
02c617d4  ret
02c617d8  ldr s0,[x19, #0xb4]
02c617dc  fcmp s0,#0.0
02c617e0  b.le 0x02c61894
02c617e4  adrp x22,0x625b000
02c617e8  ldr x20,[x19, #0x58]
02c617ec  ldrb w8,[x22, #0x26f]
02c617f0  cbnz w8,0x02c61808
02c617f4  adrp x0,0x5e58000
02c617f8  ldr x0,[x0, #0xbf8]
02c617fc  bl 0x029f5a50
02c61800  mov w8,#0x1
02c61804  strb w8,[x22, #0x26f]
02c61808  cbz x20,0x02c6190c
02c6180c  adrp x23,0x5e58000
02c61810  mov x0,x20
02c61814  mov x1,xzr
02c61818  ldr x23,[x23, #0xbf8]
02c6181c  ldr x8,[x23]
02c61820  ldr x8,[x8, #0xb8]
02c61824  ldp s1,s2,[x8, #0x4]
02c61828  ldr s0,[x8]
02c6182c  bl 0x057ef218
02c61830  ldr x0,[x21]
02c61834  ldr x20,[x19, #0x30]
02c61838  ldr w8,[x0, #0xe4]
02c6183c  cbnz w8,0x02c61844
02c61840  bl 0x029f5bd0
02c61844  mov x0,x20
02c61848  mov x1,xzr
02c6184c  mov x2,xzr
02c61850  bl 0x057dfa70
02c61854  tbz w0,#0x0,0x02c617c8
02c61858  ldrb w8,[x22, #0x26f]
02c6185c  ldr x19,[x19, #0x30]
02c61860  cbnz w8,0x02c61878
02c61864  adrp x0,0x5e58000
02c61868  ldr x0,[x0, #0xbf8]
02c6186c  bl 0x029f5a50
02c61870  mov w8,#0x1
02c61874  strb w8,[x22, #0x26f]
02c61878  cbz x19,0x02c6190c
02c6187c  ldr x8,[x23]
02c61880  mov x0,x19
02c61884  ldr x8,[x8, #0xb8]
02c61888  ldp s0,s1,[x8]
02c6188c  ldr s2,[x8, #0x8]
02c61890  b 0x02c618f8
02c61894  b.pl 0x02c617c8
02c61898  ldr x0,[x19, #0x58]
02c6189c  cbz x0,0x02c6190c
02c618a0  movi d0,#0x0
02c618a4  movi d2,#0x0
02c618a8  mov w8,#0x43340000
02c618ac  fmov s1,w8
02c618b0  mov x1,xzr
02c618b4  bl 0x057ef218
02c618b8  ldr x0,[x21]
02c618bc  ldr x20,[x19, #0x30]
02c618c0  ldr w8,[x0, #0xe4]
02c618c4  cbnz w8,0x02c618cc
02c618c8  bl 0x029f5bd0
02c618cc  mov x0,x20
02c618d0  mov x1,xzr
02c618d4  mov x2,xzr
02c618d8  bl 0x057dfa70
02c618dc  tbz w0,#0x0,0x02c617c8
02c618e0  ldr x0,[x19, #0x30]
02c618e4  cbz x0,0x02c6190c
02c618e8  movi d0,#0x0
02c618ec  movi d2,#0x0
02c618f0  mov w8,#0x43340000
02c618f4  fmov s1,w8
02c618f8  ldp x20,x19,[sp, #0x20]
02c618fc  mov x1,xzr
02c61900  ldp x22,x21,[sp, #0x10]
02c61904  ldp x30,x23,[sp], #0x30
02c61908  b 0x057ef218
02c6190c  bl 0x029f5cfc
