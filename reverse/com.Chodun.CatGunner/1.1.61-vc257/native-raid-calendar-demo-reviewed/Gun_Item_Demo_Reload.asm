02c75ad0  stp x30,x23,[sp, #-0x30]!
02c75ad4  stp x22,x21,[sp, #0x10]
02c75ad8  stp x20,x19,[sp, #0x20]
02c75adc  adrp x22,0x625c000
02c75ae0  adrp x21,0x5e5d000
02c75ae4  mov w19,w1
02c75ae8  ldrb w8,[x22, #0x2e9]
02c75aec  ldr x21,[x21, #0xd40]
02c75af0  mov x20,x0
02c75af4  tbnz w8,#0x0,0x02c75b0c
02c75af8  adrp x0,0x5e5d000
02c75afc  ldr x0,[x0, #0xd40]
02c75b00  bl 0x029f5a50
02c75b04  mov w8,#0x1
02c75b08  strb w8,[x22, #0x2e9]
02c75b0c  ldr x8,[x21]
02c75b10  str w19,[x20, #0x20]
02c75b14  ldr x8,[x8, #0xb8]
02c75b18  ldr x8,[x8]
02c75b1c  cbz x8,0x02c75bf0
02c75b20  ldr x8,[x8, #0x48]
02c75b24  cbz x8,0x02c75bf0
02c75b28  ldr w9,[x8, #0x18]
02c75b2c  cmp w9,w19
02c75b30  b.ls 0x02c75c2c
02c75b34  ldr x0,[x20, #0x28]
02c75b38  cbz x0,0x02c75bf0
02c75b3c  add x8,x8,w19, SXTW  #0x3
02c75b40  ldr x23,[x20, #0x30]
02c75b44  mov x2,xzr
02c75b48  ldr x22,[x8, #0x20]
02c75b4c  mov x1,x22
02c75b50  bl 0x058d34cc
02c75b54  cbz x23,0x02c75bf0
02c75b58  mov w8,#0x6667
02c75b5c  mov x0,x23
02c75b60  mov x1,x22
02c75b64  movk w8,#0x6666, LSL #16
02c75b68  mov x2,xzr
02c75b6c  smull x8,w19,w8
02c75b70  lsr x9,x8,#0x20
02c75b74  lsr x8,x8,#0x3f
02c75b78  add w21,w8,w9, ASR #0x1
02c75b7c  bl 0x058d34cc
02c75b80  ldr x22,[x20, #0x38]
02c75b84  mov w0,w21
02c75b88  mov x1,xzr
02c75b8c  bl 0x02c5b234
02c75b90  cbz x22,0x02c75bf0
02c75b94  ldr x8,[x22]
02c75b98  mov x0,x22
02c75b9c  ldr x9,[x8, #0x2a8]
02c75ba0  ldr x1,[x8, #0x2b0]
02c75ba4  blr x9
02c75ba8  ldr x8,[x20, #0x40]
02c75bac  cbz x8,0x02c75bf0
02c75bb0  mov x22,xzr
02c75bb4  ldr w9,[x8, #0x18]
02c75bb8  cmp w22,w9
02c75bbc  b.ge 0x02c75bf4
02c75bc0  cmp w22,w9
02c75bc4  b.cs 0x02c75c2c
02c75bc8  add x8,x8,x22, LSL #0x3
02c75bcc  ldr x0,[x8, #0x20]
02c75bd0  cbz x0,0x02c75bf0
02c75bd4  cmp w21,w22
02c75bd8  mov x2,xzr
02c75bdc  cset w1,eq
02c75be0  bl 0x057dff3c
02c75be4  ldr x8,[x20, #0x40]
02c75be8  add x22,x22,#0x1
02c75bec  cbnz x8,0x02c75bb4
02c75bf0  bl 0x029f5cfc
02c75bf4  ldr x20,[x20, #0x48]
02c75bf8  mov w0,w19
02c75bfc  mov x1,xzr
02c75c00  bl 0x02c5b2ac
02c75c04  cbz x20,0x02c75bf0
02c75c08  ldr x8,[x20]
02c75c0c  mov x1,x0
02c75c10  mov x0,x20
02c75c14  ldp x20,x19,[sp, #0x20]
02c75c18  ldp x22,x21,[sp, #0x10]
02c75c1c  ldr x2,[x8, #0x560]
02c75c20  ldr x3,[x8, #0x558]
02c75c24  ldp x30,x23,[sp], #0x30
02c75c28  br x3
02c75c2c  bl 0x029f5d04
