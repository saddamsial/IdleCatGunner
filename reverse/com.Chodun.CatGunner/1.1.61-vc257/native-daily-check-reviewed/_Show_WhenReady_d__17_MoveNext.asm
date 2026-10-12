02ba0aa4  str x30,[sp, #-0x20]!
02ba0aa8  stp x20,x19,[sp, #0x10]
02ba0aac  adrp x20,0x625b000
02ba0ab0  mov x19,x0
02ba0ab4  ldrb w8,[x20, #0xa0e]
02ba0ab8  tbnz w8,#0x0,0x02ba0adc
02ba0abc  adrp x0,0x5e5d000
02ba0ac0  ldr x0,[x0, #0x3c0]
02ba0ac4  bl 0x029f5a50
02ba0ac8  adrp x0,0x5e5e000
02ba0acc  ldr x0,[x0, #0x518]
02ba0ad0  bl 0x029f5a50
02ba0ad4  mov w8,#0x1
02ba0ad8  strb w8,[x20, #0xa0e]
02ba0adc  ldr w8,[x19, #0x10]
02ba0ae0  cmp w8,#0x2
02ba0ae4  b.eq 0x02ba0b64
02ba0ae8  cmp w8,#0x1
02ba0aec  b.eq 0x02ba0b18
02ba0af0  cbnz w8,0x02ba0bc8
02ba0af4  str xzr,[x19, #0x18]!
02ba0af8  mov w8,#0xffffffff
02ba0afc  mov x0,x19
02ba0b00  mov x1,xzr
02ba0b04  stur w8,[x19, #-0x8]
02ba0b08  bl 0x029f59f4
02ba0b0c  mov w0,#0x1
02ba0b10  stur w0,[x19, #-0x8]
02ba0b14  b 0x02ba0bcc
02ba0b18  adrp x8,0x5e5d000
02ba0b1c  mov w9,#0xffffffff
02ba0b20  ldr x8,[x8, #0x3c0]
02ba0b24  str w9,[x19, #0x10]
02ba0b28  ldr x0,[x8]
02ba0b2c  ldr w8,[x0, #0xe4]
02ba0b30  cbnz w8,0x02ba0b38
02ba0b34  bl 0x029f5bd0
02ba0b38  fmov s0,0x40800000
02ba0b3c  mov x0,xzr
02ba0b40  bl 0x02c253f0
02ba0b44  mov x1,x0
02ba0b48  str x0,[x19, #0x18]!
02ba0b4c  mov x0,x19
02ba0b50  bl 0x029f59f4
02ba0b54  mov w8,#0x2
02ba0b58  mov w0,#0x1
02ba0b5c  stur w8,[x19, #-0x8]
02ba0b60  b 0x02ba0bcc
02ba0b64  ldr x20,[x19, #0x20]
02ba0b68  mov w8,#0xffffffff
02ba0b6c  str w8,[x19, #0x10]
02ba0b70  cbz x20,0x02ba0bd8
02ba0b74  mov x0,x20
02ba0b78  bl 0x02b9f24c
02ba0b7c  ldrb w8,[x20, #0x38]
02ba0b80  cbnz w8,0x02ba0bc0
02ba0b84  adrp x8,0x5e5d000
02ba0b88  ldr x8,[x8, #0x3c0]
02ba0b8c  ldr x0,[x8]
02ba0b90  ldr w8,[x0, #0xe4]
02ba0b94  cbnz w8,0x02ba0b9c
02ba0b98  bl 0x029f5bd0
02ba0b9c  adrp x8,0x5e5e000
02ba0ba0  mov w1,#0x1
02ba0ba4  mov x2,xzr
02ba0ba8  ldr x8,[x8, #0x518]
02ba0bac  mov w19,#0x1
02ba0bb0  ldr x0,[x8]
02ba0bb4  bl 0x02c23998
02ba0bb8  tbnz w0,#0x0,0x02ba0bc0
02ba0bbc  strb w19,[x20, #0x39]
02ba0bc0  mov x0,x20
02ba0bc4  bl 0x02b9f068
02ba0bc8  mov w0,wzr
02ba0bcc  ldp x20,x19,[sp, #0x10]
02ba0bd0  ldr x30,[sp], #0x20
02ba0bd4  ret
02ba0bd8  bl 0x029f5cfc
