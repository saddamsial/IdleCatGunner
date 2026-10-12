02b9eb0c  str x30,[sp, #-0x20]!
02b9eb10  stp x20,x19,[sp, #0x10]
02b9eb14  adrp x19,0x625b000
02b9eb18  adrp x20,0x5e5e000
02b9eb1c  ldrb w8,[x19, #0x9f1]
02b9eb20  ldr x20,[x20, #0x4d0]
02b9eb24  tbnz w8,#0x0,0x02b9eb48
02b9eb28  adrp x0,0x5e5e000
02b9eb2c  ldr x0,[x0, #0x4d0]
02b9eb30  bl 0x029f5a50
02b9eb34  adrp x0,0x5e5e000
02b9eb38  ldr x0,[x0, #0x70]
02b9eb3c  bl 0x029f5a50
02b9eb40  mov w8,#0x1
02b9eb44  strb w8,[x19, #0x9f1]
02b9eb48  ldr x0,[x20]
02b9eb4c  ldr w8,[x0, #0xe4]
02b9eb50  cbnz w8,0x02b9eb58
02b9eb54  bl 0x029f5bd0
02b9eb58  mov w0,#0x7
02b9eb5c  bl 0x02b9e588
02b9eb60  tbz w0,#0x0,0x02b9eb9c
02b9eb64  adrp x19,0x5e5e000
02b9eb68  ldr x19,[x19, #0x70]
02b9eb6c  ldr x0,[x19]
02b9eb70  ldr w8,[x0, #0xe4]
02b9eb74  cbnz w8,0x02b9eb80
02b9eb78  bl 0x029f5bd0
02b9eb7c  ldr x0,[x19]
02b9eb80  ldr x8,[x0, #0xb8]
02b9eb84  ldr x0,[x8]
02b9eb88  cbz x0,0x02b9eba8
02b9eb8c  ldp x20,x19,[sp, #0x10]
02b9eb90  mov x1,xzr
02b9eb94  ldr x30,[sp], #0x20
02b9eb98  b 0x02c57280
02b9eb9c  ldp x20,x19,[sp, #0x10]
02b9eba0  ldr x30,[sp], #0x20
02b9eba4  ret
02b9eba8  bl 0x029f5cfc
