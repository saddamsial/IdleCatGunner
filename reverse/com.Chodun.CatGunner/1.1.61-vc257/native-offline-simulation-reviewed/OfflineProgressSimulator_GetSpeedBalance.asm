02c08bd4  stp x30,x21,[sp, #-0x20]!
02c08bd8  stp x20,x19,[sp, #0x10]
02c08bdc  adrp x21,0x625b000
02c08be0  adrp x20,0x5e5d000
02c08be4  mov w19,w0
02c08be8  ldrb w8,[x21, #0xe88]
02c08bec  ldr x20,[x20, #0x4e8]
02c08bf0  tbnz w8,#0x0,0x02c08c08
02c08bf4  adrp x0,0x5e5d000
02c08bf8  ldr x0,[x0, #0x4e8]
02c08bfc  bl 0x029f5a50
02c08c00  mov w8,#0x1
02c08c04  strb w8,[x21, #0xe88]
02c08c08  ldr x0,[x20]
02c08c0c  mov w8,#0x2710
02c08c10  cmp w19,w8
02c08c14  ldr w9,[x0, #0xe4]
02c08c18  csel w19,w19,w8,lt
02c08c1c  cbnz w9,0x02c08c28
02c08c20  bl 0x029f5bd0
02c08c24  ldr x0,[x20]
02c08c28  ldr x8,[x0, #0xb8]
02c08c2c  ldr x9,[x8]
02c08c30  bic w8,w19,w19, ASR #0x1f
02c08c34  cbz x9,0x02c08c58
02c08c38  ldr x9,[x9, #0x48]
02c08c3c  cbz x9,0x02c08c58
02c08c40  ldr w10,[x9, #0x18]
02c08c44  cmp w8,w10
02c08c48  b.ge 0x02c08c58
02c08c4c  add x8,x9,w8, UXTW  #0x2
02c08c50  ldr w0,[x8, #0x20]
02c08c54  b 0x02c08c60
02c08c58  lsl w8,w8,#0x3
02c08c5c  add w0,w8,#0x64
02c08c60  ldp x20,x19,[sp, #0x10]
02c08c64  ldp x30,x21,[sp], #0x20
02c08c68  ret
