02c4bb74  str x30,[sp, #-0x30]!
02c4bb78  stp x22,x21,[sp, #0x10]
02c4bb7c  stp x20,x19,[sp, #0x20]
02c4bb80  adrp x20,0x625c000
02c4bb84  adrp x21,0x5e59000
02c4bb88  mov x19,x0
02c4bb8c  ldrb w8,[x20, #0x128]
02c4bb90  ldr x21,[x21, #0x1c0]
02c4bb94  tbnz w8,#0x0,0x02c4bbd0
02c4bb98  adrp x0,0x5e5d000
02c4bb9c  ldr x0,[x0, #0xd48]
02c4bba0  bl 0x029f5a50
02c4bba4  adrp x0,0x5e59000
02c4bba8  ldr x0,[x0, #0x1c0]
02c4bbac  bl 0x029f5a50
02c4bbb0  adrp x0,0x5e5e000
02c4bbb4  ldr x0,[x0, #0xb8]
02c4bbb8  bl 0x029f5a50
02c4bbbc  adrp x0,0x5e5d000
02c4bbc0  ldr x0,[x0, #0x920]
02c4bbc4  bl 0x029f5a50
02c4bbc8  mov w8,#0x1
02c4bbcc  strb w8,[x20, #0x128]
02c4bbd0  ldr x0,[x21]
02c4bbd4  ldr x20,[x19, #0x60]
02c4bbd8  ldr w8,[x0, #0xe4]
02c4bbdc  cbnz w8,0x02c4bbe4
02c4bbe0  bl 0x029f5bd0
02c4bbe4  mov x0,x20
02c4bbe8  mov x1,xzr
02c4bbec  mov x2,xzr
02c4bbf0  bl 0x057e14b4
02c4bbf4  tbz w0,#0x0,0x02c4bc08
02c4bbf8  ldp x20,x19,[sp, #0x20]
02c4bbfc  ldp x22,x21,[sp, #0x10]
02c4bc00  ldr x30,[sp], #0x30
02c4bc04  ret
02c4bc08  adrp x22,0x5e5d000
02c4bc0c  ldr x22,[x22, #0xd48]
02c4bc10  ldr x0,[x21]
02c4bc14  ldr x8,[x22]
02c4bc18  ldr w9,[x0, #0xe4]
02c4bc1c  ldr x8,[x8, #0xb8]
02c4bc20  ldr x20,[x8]
02c4bc24  cbnz w9,0x02c4bc2c
02c4bc28  bl 0x029f5bd0
02c4bc2c  mov x0,x20
02c4bc30  mov x1,xzr
02c4bc34  mov x2,xzr
02c4bc38  bl 0x057e14b4
02c4bc3c  tbnz w0,#0x0,0x02c4bc78
02c4bc40  ldr x8,[x22]
02c4bc44  ldr x8,[x8, #0xb8]
02c4bc48  ldr x8,[x8]
02c4bc4c  cbz x8,0x02c4bd24
02c4bc50  ldr x0,[x21]
02c4bc54  ldr x20,[x8, #0x48]
02c4bc58  ldr w9,[x0, #0xe4]
02c4bc5c  cbnz w9,0x02c4bc64
02c4bc60  bl 0x029f5bd0
02c4bc64  mov x0,x20
02c4bc68  mov x1,xzr
02c4bc6c  mov x2,xzr
02c4bc70  bl 0x057e14b4
02c4bc74  tbz w0,#0x0,0x02c4bc80
02c4bc78  mov w20,#0x1
02c4bc7c  b 0x02c4bca8
02c4bc80  ldr x8,[x22]
02c4bc84  ldr x8,[x8, #0xb8]
02c4bc88  ldr x8,[x8]
02c4bc8c  cbz x8,0x02c4bd24
02c4bc90  ldr x0,[x8, #0x48]
02c4bc94  cbz x0,0x02c4bd24
02c4bc98  mov x1,xzr
02c4bc9c  bl 0x057e0000
02c4bca0  mov w8,#0x1
02c4bca4  bic w20,w8,w0
02c4bca8  adrp x21,0x5e5d000
02c4bcac  ldr x21,[x21, #0x920]
02c4bcb0  ldr x0,[x21]
02c4bcb4  ldr w8,[x0, #0xe4]
02c4bcb8  cbnz w8,0x02c4bcc4
02c4bcbc  bl 0x029f5bd0
02c4bcc0  ldr x0,[x21]
02c4bcc4  ldr x8,[x0, #0xb8]
02c4bcc8  ldrb w8,[x8, #0xd]
02c4bccc  tst w20,w8
02c4bcd0  b.eq 0x02c4bcfc
02c4bcd4  adrp x8,0x5e5e000
02c4bcd8  ldr x8,[x8, #0xb8]
02c4bcdc  ldr x0,[x8]
02c4bce0  ldr w8,[x0, #0xe4]
02c4bce4  cbnz w8,0x02c4bcec
02c4bce8  bl 0x029f5bd0
02c4bcec  mov w0,#0x1
02c4bcf0  mov x1,xzr
02c4bcf4  bl 0x02c9196c
02c4bcf8  b 0x02c4bd00
02c4bcfc  mov w0,wzr
02c4bd00  ldr x8,[x19, #0x60]
02c4bd04  cbz x8,0x02c4bd24
02c4bd08  ldp x20,x19,[sp, #0x20]
02c4bd0c  and w1,w0,#0x1
02c4bd10  ldp x22,x21,[sp, #0x10]
02c4bd14  mov x0,x8
02c4bd18  mov x2,xzr
02c4bd1c  ldr x30,[sp], #0x30
02c4bd20  b 0x057dff3c
02c4bd24  bl 0x029f5cfc
