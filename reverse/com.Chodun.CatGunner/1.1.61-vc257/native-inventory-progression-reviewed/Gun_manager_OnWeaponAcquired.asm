02c68ac8  stp x30,x21,[sp, #-0x20]!
02c68acc  stp x20,x19,[sp, #0x10]
02c68ad0  adrp x21,0x625c000
02c68ad4  mov w19,w1
02c68ad8  mov x20,x0
02c68adc  ldrb w8,[x21, #0x278]
02c68ae0  tbnz w8,#0x0,0x02c68b04
02c68ae4  adrp x0,0x5e5d000
02c68ae8  ldr x0,[x0, #0x540]
02c68aec  bl 0x029f5a50
02c68af0  adrp x0,0x5e5d000
02c68af4  ldr x0,[x0, #0x790]
02c68af8  bl 0x029f5a50
02c68afc  mov w8,#0x1
02c68b00  strb w8,[x21, #0x278]
02c68b04  tbnz w19,#0x1f,0x02c68c08
02c68b08  ldr x8,[x20, #0x38]!
02c68b0c  cbz x8,0x02c68b1c
02c68b10  ldr w8,[x8, #0x18]
02c68b14  cmp w8,#0xd
02c68b18  b.eq 0x02c68b9c
02c68b1c  adrp x8,0x5e5d000
02c68b20  mov w1,#0xd
02c68b24  ldr x8,[x8, #0x790]
02c68b28  ldr x0,[x8]
02c68b2c  bl 0x029f5b40
02c68b30  ldr x11,[x20]
02c68b34  mov x1,x0
02c68b38  cbz x11,0x02c68b90
02c68b3c  ldr x10,[x11, #0x18]
02c68b40  cmp w10,#0x1
02c68b44  b.lt 0x02c68b90
02c68b48  cmp w10,#0xd
02c68b4c  mov w12,#0xd
02c68b50  mov x8,xzr
02c68b54  and x9,x10,#0xffffffff
02c68b58  csel w10,w10,w12,lt
02c68b5c  add x11,x11,#0x20
02c68b60  add x12,x1,#0x20
02c68b64  cmp x9,x8
02c68b68  b.eq 0x02c68c14
02c68b6c  cbz x1,0x02c68c18
02c68b70  ldr w13,[x1, #0x18]
02c68b74  cmp x8,x13
02c68b78  b.cs 0x02c68c14
02c68b7c  ldr w13,[x11, x8, LSL #0x2]
02c68b80  str w13,[x12, x8, LSL #0x2]
02c68b84  add x8,x8,#0x1
02c68b88  cmp x10,x8
02c68b8c  b.ne 0x02c68b64
02c68b90  mov x0,x20
02c68b94  str x1,[x20]
02c68b98  bl 0x029f59f4
02c68b9c  cmp w19,#0x40
02c68ba0  b.gt 0x02c68c08
02c68ba4  ldr x8,[x20]
02c68ba8  cbz x8,0x02c68c18
02c68bac  mov w9,#0xcccd
02c68bb0  movk w9,#0xcccc, LSL #16
02c68bb4  umull x9,w19,w9
02c68bb8  lsr x20,x9,#0x22
02c68bbc  ldr w9,[x8, #0x18]
02c68bc0  cmp w20,w9
02c68bc4  b.cs 0x02c68c14
02c68bc8  add x8,x8,w20, UXTW  #0x2
02c68bcc  cmp w19,#0x5
02c68bd0  ldr w9,[x8, #0x20]
02c68bd4  add w21,w9,#0x1
02c68bd8  str w21,[x8, #0x20]
02c68bdc  b.lt 0x02c68c08
02c68be0  adrp x8,0x5e5d000
02c68be4  ldr x8,[x8, #0x540]
02c68be8  ldr x0,[x8]
02c68bec  ldr w8,[x0, #0xe4]
02c68bf0  cbnz w8,0x02c68bf8
02c68bf4  bl 0x029f5bd0
02c68bf8  mov w0,w20
02c68bfc  mov w1,w21
02c68c00  mov x2,xzr
02c68c04  bl 0x02b96c30
02c68c08  ldp x20,x19,[sp, #0x10]
02c68c0c  ldp x30,x21,[sp], #0x20
02c68c10  ret
02c68c14  bl 0x029f5d04
02c68c18  bl 0x029f5cfc
