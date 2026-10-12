02c8bb7c  stp x30,x23,[sp, #-0x30]!
02c8bb80  stp x22,x21,[sp, #0x10]
02c8bb84  stp x20,x19,[sp, #0x20]
02c8bb88  adrp x20,0x625c000
02c8bb8c  adrp x22,0x5e62000
02c8bb90  mov x19,x0
02c8bb94  ldrb w8,[x20, #0x3b1]
02c8bb98  ldr x22,[x22, #0x660]
02c8bb9c  tbnz w8,#0x0,0x02c8bbc0
02c8bba0  adrp x0,0x5e62000
02c8bba4  ldr x0,[x0, #0x660]
02c8bba8  bl 0x029f5a50
02c8bbac  adrp x0,0x5e59000
02c8bbb0  ldr x0,[x0, #0x1c0]
02c8bbb4  bl 0x029f5a50
02c8bbb8  mov w8,#0x1
02c8bbbc  strb w8,[x20, #0x3b1]
02c8bbc0  ldr x0,[x22]
02c8bbc4  adrp x23,0x5e59000
02c8bbc8  ldr w8,[x0, #0xe4]
02c8bbcc  ldr x23,[x23, #0x1c0]
02c8bbd0  ldr w20,[x19, #0x20]
02c8bbd4  cbnz w8,0x02c8bbdc
02c8bbd8  bl 0x029f5bd0
02c8bbdc  mov w0,w20
02c8bbe0  bl 0x02c8b23c
02c8bbe4  ldr x8,[x23]
02c8bbe8  ldr x21,[x19, #0x28]
02c8bbec  mov w20,w0
02c8bbf0  ldr w9,[x8, #0xe4]
02c8bbf4  cbnz w9,0x02c8bc00
02c8bbf8  mov x0,x8
02c8bbfc  bl 0x029f5bd0
02c8bc00  mov x0,x21
02c8bc04  mov x1,xzr
02c8bc08  mov x2,xzr
02c8bc0c  bl 0x057dfa70
02c8bc10  tbz w0,#0x0,0x02c8bc28
02c8bc14  ldr x0,[x19, #0x28]
02c8bc18  cbz x0,0x02c8bccc
02c8bc1c  mov w1,w20
02c8bc20  mov x2,xzr
02c8bc24  bl 0x02c75ad0
02c8bc28  ldr x0,[x23]
02c8bc2c  ldr x20,[x19, #0x30]
02c8bc30  ldr w8,[x0, #0xe4]
02c8bc34  cbnz w8,0x02c8bc3c
02c8bc38  bl 0x029f5bd0
02c8bc3c  mov x0,x20
02c8bc40  mov x1,xzr
02c8bc44  mov x2,xzr
02c8bc48  bl 0x057dfa70
02c8bc4c  tbz w0,#0x0,0x02c8bcbc
02c8bc50  ldr x0,[x22]
02c8bc54  ldr x20,[x19, #0x30]
02c8bc58  ldr w8,[x0, #0xe4]
02c8bc5c  cbnz w8,0x02c8bc68
02c8bc60  bl 0x029f5bd0
02c8bc64  ldr x0,[x22]
02c8bc68  ldr x8,[x0, #0xb8]
02c8bc6c  ldr x8,[x8, #0x10]
02c8bc70  cbz x8,0x02c8bccc
02c8bc74  ldrsw x9,[x19, #0x20]
02c8bc78  ldr w10,[x8, #0x18]
02c8bc7c  cmp w9,w10
02c8bc80  b.cs 0x02c8bcd0
02c8bc84  add x8,x8,x9, LSL #0x2
02c8bc88  mov x1,xzr
02c8bc8c  add x0,x8,#0x20
02c8bc90  bl 0x0484e6a4
02c8bc94  cbz x20,0x02c8bccc
02c8bc98  ldr x8,[x20]
02c8bc9c  mov x1,x0
02c8bca0  mov x0,x20
02c8bca4  ldp x20,x19,[sp, #0x20]
02c8bca8  ldp x22,x21,[sp, #0x10]
02c8bcac  ldr x2,[x8, #0x560]
02c8bcb0  ldr x3,[x8, #0x558]
02c8bcb4  ldp x30,x23,[sp], #0x30
02c8bcb8  br x3
02c8bcbc  ldp x20,x19,[sp, #0x20]
02c8bcc0  ldp x22,x21,[sp, #0x10]
02c8bcc4  ldp x30,x23,[sp], #0x30
02c8bcc8  ret
02c8bccc  bl 0x029f5cfc
02c8bcd0  bl 0x029f5d04
