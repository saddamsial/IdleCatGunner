02c340a4  str x30,[sp, #-0x20]!
02c340a8  stp x20,x19,[sp, #0x10]
02c340ac  adrp x20,0x625c000
02c340b0  mov x19,x0
02c340b4  ldrb w8,[x20, #0x51]
02c340b8  tbnz w8,#0x0,0x02c340d0
02c340bc  adrp x0,0x5e62000
02c340c0  ldr x0,[x0, #0xfd0]
02c340c4  bl 0x029f5a50
02c340c8  mov w8,#0x1
02c340cc  strb w8,[x20, #0x51]
02c340d0  ldr x8,[x19, #0xc8]
02c340d4  cbz x8,0x02c340f4
02c340d8  ldr w8,[x8, #0x18]
02c340dc  ldr w9,[x19, #0xd0]
02c340e0  ldp x20,x19,[sp, #0x10]
02c340e4  cmp w8,w9
02c340e8  cset w0,lt
02c340ec  ldr x30,[sp], #0x20
02c340f0  ret
02c340f4  bl 0x029f5cfc
