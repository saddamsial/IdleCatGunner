02c89688  str d8,[sp, #-0x30]!
02c8968c  stp x30,x21,[sp, #0x10]
02c89690  stp x20,x19,[sp, #0x20]
02c89694  adrp x20,0x625c000
02c89698  mov x19,x0
02c8969c  ldrb w8,[x20, #0x39a]
02c896a0  tbnz w8,#0x0,0x02c896c4
02c896a4  adrp x0,0x5e5d000
02c896a8  ldr x0,[x0, #0xd60]
02c896ac  bl 0x029f5a50
02c896b0  adrp x0,0x5e5a000
02c896b4  ldr x0,[x0, #0x710]
02c896b8  bl 0x029f5a50
02c896bc  mov w8,#0x1
02c896c0  strb w8,[x20, #0x39a]
02c896c4  ldr w8,[x19, #0x10]
02c896c8  ldr x20,[x19, #0x20]
02c896cc  sub w9,w8,#0x1
02c896d0  cmp w9,#0x2
02c896d4  b.cs 0x02c89784
02c896d8  adrp x21,0x5e5d000
02c896dc  mov w9,#0xffffffff
02c896e0  ldr x21,[x21, #0xd60]
02c896e4  str w9,[x19, #0x10]
02c896e8  ldr x8,[x21]
02c896ec  ldr x8,[x8, #0xb8]
02c896f0  ldr x8,[x8]
02c896f4  cbz x8,0x02c897f8
02c896f8  cbz x20,0x02c897f8
02c896fc  ldr x8,[x8, #0x20]
02c89700  cbz x8,0x02c897f8
02c89704  ldrsw x9,[x20, #0x20]
02c89708  ldr w10,[x8, #0x18]
02c8970c  cmp w9,w10
02c89710  b.cs 0x02c897fc
02c89714  add x8,x8,x9, LSL #0x3
02c89718  ldr x0,[x8, #0x20]
02c8971c  cbz x0,0x02c897f8
02c89720  bl 0x02c888a8
02c89724  tbz w0,#0x0,0x02c897d4
02c89728  ldr x8,[x21]
02c8972c  ldr x8,[x8, #0xb8]
02c89730  ldr x0,[x8]
02c89734  cbz x0,0x02c897f8
02c89738  ldr w1,[x20, #0x20]
02c8973c  bl 0x02c87630
02c89740  adrp x8,0x5e5a000
02c89744  ldr x8,[x8, #0x710]
02c89748  ldr s8,[x20, #0x5c]
02c8974c  ldr x0,[x8]
02c89750  bl 0x029f5cec
02c89754  fmov s0,s8
02c89758  mov x1,xzr
02c8975c  mov x20,x0
02c89760  bl 0x057e84e0
02c89764  str x20,[x19, #0x18]!
02c89768  mov x0,x19
02c8976c  mov x1,x20
02c89770  bl 0x029f59f4
02c89774  mov w8,#0x2
02c89778  mov w0,#0x1
02c8977c  stur w8,[x19, #-0x8]
02c89780  b 0x02c897e8
02c89784  cbnz w8,0x02c897e4
02c89788  mov w8,#0xffffffff
02c8978c  str w8,[x19, #0x10]
02c89790  cbz x20,0x02c897f8
02c89794  adrp x8,0x5e5a000
02c89798  ldr x8,[x8, #0x710]
02c8979c  ldr s8,[x20, #0x58]
02c897a0  ldr x0,[x8]
02c897a4  bl 0x029f5cec
02c897a8  fmov s0,s8
02c897ac  mov x1,xzr
02c897b0  mov x20,x0
02c897b4  bl 0x057e84e0
02c897b8  str x20,[x19, #0x18]!
02c897bc  mov x0,x19
02c897c0  mov x1,x20
02c897c4  bl 0x029f59f4
02c897c8  mov w0,#0x1
02c897cc  stur w0,[x19, #-0x8]
02c897d0  b 0x02c897e8
02c897d4  str xzr,[x20, #0x60]!
02c897d8  mov x0,x20
02c897dc  mov x1,xzr
02c897e0  bl 0x029f59f4
02c897e4  mov w0,wzr
02c897e8  ldp x20,x19,[sp, #0x20]
02c897ec  ldp x30,x21,[sp, #0x10]
02c897f0  ldr d8,[sp], #0x30
02c897f4  ret
02c897f8  bl 0x029f5cfc
02c897fc  bl 0x029f5d04
