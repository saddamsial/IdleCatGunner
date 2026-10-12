02ca8438  str x30,[sp, #-0x10]!
02ca843c  ldr x8,[x0, #0x58]
02ca8440  cbz x8,0x02ca8464
02ca8444  ldrsw x9,[x0, #0x30]
02ca8448  ldr w10,[x8, #0x18]
02ca844c  cmp w9,w10
02ca8450  b.cs 0x02ca8468
02ca8454  add x8,x8,x9, LSL #0x3
02ca8458  ldr x0,[x8, #0x20]
02ca845c  ldr x30,[sp], #0x10
02ca8460  ret
02ca8464  bl 0x029f5cfc
02ca8468  bl 0x029f5d04
