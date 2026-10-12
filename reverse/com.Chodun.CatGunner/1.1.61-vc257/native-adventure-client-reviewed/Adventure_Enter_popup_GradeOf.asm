02c33adc  stp x30,x21,[sp, #-0x20]!
02c33ae0  stp x20,x19,[sp, #0x10]
02c33ae4  adrp x21,0x625c000
02c33ae8  adrp x20,0x5e5d000
02c33aec  mov x19,x1
02c33af0  ldrb w8,[x21, #0x4b]
02c33af4  ldr x20,[x20, #0x4d0]
02c33af8  tbnz w8,#0x0,0x02c33b10
02c33afc  adrp x0,0x5e5d000
02c33b00  ldr x0,[x0, #0x4d0]
02c33b04  bl 0x029f5a50
02c33b08  mov w8,#0x1
02c33b0c  strb w8,[x21, #0x4b]
02c33b10  ldr x0,[x20]
02c33b14  ldr w8,[x0, #0xe4]
02c33b18  cbnz w8,0x02c33b24
02c33b1c  bl 0x029f5bd0
02c33b20  ldr x0,[x20]
02c33b24  ldr x8,[x0, #0xb8]
02c33b28  ldr x8,[x8, #0x28]
02c33b2c  cbz w19,0x02c33b40
02c33b30  cbz x8,0x02c33b70
02c33b34  ldr x8,[x8, #0x30]
02c33b38  cbnz x8,0x02c33b4c
02c33b3c  b 0x02c33b70
02c33b40  cbz x8,0x02c33b70
02c33b44  ldr x8,[x8, #0x38]
02c33b48  cbz x8,0x02c33b70
02c33b4c  asr x9,x19,#0x20
02c33b50  ldr w10,[x8, #0x18]
02c33b54  cmp w9,w10
02c33b58  b.cs 0x02c33b74
02c33b5c  add x8,x8,x9, LSL #0x2
02c33b60  ldp x20,x19,[sp, #0x10]
02c33b64  ldr w0,[x8, #0x20]!
02c33b68  ldp x30,x21,[sp], #0x20
02c33b6c  ret
02c33b70  bl 0x029f5cfc
02c33b74  bl 0x029f5d04
