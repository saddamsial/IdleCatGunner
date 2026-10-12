02c66980  sub sp,sp,#0x90
02c66984  str d10,[sp, #0x40]
02c66988  stp d9,d8,[sp, #0x50]
02c6698c  stp x30,x23,[sp, #0x60]
02c66990  stp x22,x21,[sp, #0x70]
02c66994  stp x20,x19,[sp, #0x80]
02c66998  fmov s8,s2
02c6699c  fmov s9,s1
02c669a0  adrp x23,0x625c000
02c669a4  fmov s10,s0
02c669a8  ldrb w8,[x23, #0x250]
02c669ac  mov w21,w3
02c669b0  mov w22,w2
02c669b4  mov x20,x1
02c669b8  mov x19,x0
02c669bc  tbnz w8,#0x0,0x02c66a04
02c669c0  adrp x0,0x5e5d000
02c669c4  ldr x0,[x0, #0x560]
02c669c8  bl 0x029f5a50
02c669cc  adrp x0,0x5e5d000
02c669d0  ldr x0,[x0, #0x338]
02c669d4  bl 0x029f5a50
02c669d8  adrp x0,0x5e63000
02c669dc  ldr x0,[x0, #0x9e0]
02c669e0  bl 0x029f5a50
02c669e4  adrp x0,0x5e59000
02c669e8  ldr x0,[x0, #0x1c0]
02c669ec  bl 0x029f5a50
02c669f0  adrp x0,0x5e5d000
02c669f4  ldr x0,[x0, #0x368]
02c669f8  bl 0x029f5a50
02c669fc  mov w8,#0x1
02c66a00  strb w8,[x23, #0x250]
02c66a04  tbz w22,#0x0,0x02c66ac4
02c66a08  cbz x20,0x02c66c18
02c66a0c  adrp x8,0x5e5d000
02c66a10  mov x0,x20
02c66a14  ldr x8,[x8, #0x560]
02c66a18  ldr x1,[x8]
02c66a1c  bl 0x02fe5f2c
02c66a20  adrp x23,0x5e59000
02c66a24  mov x22,x0
02c66a28  ldr x23,[x23, #0x1c0]
02c66a2c  ldr x8,[x23]
02c66a30  ldr w9,[x8, #0xe4]
02c66a34  cbnz w9,0x02c66a40
02c66a38  mov x0,x8
02c66a3c  bl 0x029f5bd0
02c66a40  mov x0,x22
02c66a44  mov x1,xzr
02c66a48  mov x2,xzr
02c66a4c  bl 0x057dfa70
02c66a50  tbz w0,#0x0,0x02c66a90
02c66a54  cbz x22,0x02c66c18
02c66a58  ldr x0,[x23]
02c66a5c  ldr x23,[x22, #0x20]
02c66a60  ldr w8,[x0, #0xe4]
02c66a64  cbnz w8,0x02c66a6c
02c66a68  bl 0x029f5bd0
02c66a6c  mov x0,x23
02c66a70  mov x1,xzr
02c66a74  mov x2,xzr
02c66a78  bl 0x057dfa70
02c66a7c  tbz w0,#0x0,0x02c66a90
02c66a80  ldr x8,[x22, #0x20]
02c66a84  cbz x8,0x02c66c18
02c66a88  ldrb w8,[x8, #0x24]
02c66a8c  cbz w8,0x02c66af8
02c66a90  ldr x0,[x19, #0xd0]
02c66a94  cbz x0,0x02c66c18
02c66a98  adrp x8,0x5e63000
02c66a9c  mov w1,w21
02c66aa0  ldr x8,[x8, #0x9e0]
02c66aa4  ldp x20,x19,[sp, #0x80]
02c66aa8  ldp x22,x21,[sp, #0x70]
02c66aac  ldr d10,[sp, #0x40]
02c66ab0  ldp x30,x23,[sp, #0x60]
02c66ab4  ldr x2,[x8]
02c66ab8  ldp d9,d8,[sp, #0x50]
02c66abc  add sp,sp,#0x90
02c66ac0  b 0x04282ae4
02c66ac4  fmov s0,s10
02c66ac8  fmov s1,s9
02c66acc  mov x0,x19
02c66ad0  fmov s2,s8
02c66ad4  bl 0x02c66180
02c66ad8  mov x0,x19
02c66adc  ldp x20,x19,[sp, #0x80]
02c66ae0  ldp x22,x21,[sp, #0x70]
02c66ae4  ldr d10,[sp, #0x40]
02c66ae8  ldp x30,x23,[sp, #0x60]
02c66aec  ldp d9,d8,[sp, #0x50]
02c66af0  add sp,sp,#0x90
02c66af4  b 0x02c66330
02c66af8  ldr x0,[x19, #0xd0]
02c66afc  cbz x0,0x02c66c18
02c66b00  adrp x8,0x5e63000
02c66b04  mov w1,w21
02c66b08  ldr x8,[x8, #0x9e0]
02c66b0c  ldr x2,[x8]
02c66b10  bl 0x04282ae4
02c66b14  ldr w9,[x19, #0xd8]
02c66b18  ldr x8,[x22, #0x20]
02c66b1c  add w9,w9,#0x1
02c66b20  str w9,[x19, #0xd8]
02c66b24  cbz x8,0x02c66c18
02c66b28  add x0,x19,#0x28
02c66b2c  add x1,x8,#0x28
02c66b30  mov x2,xzr
02c66b34  bl 0x04654530
02c66b38  adrp x8,0x5e5d000
02c66b3c  mov w21,w0
02c66b40  ldr x8,[x8, #0x338]
02c66b44  ldur q0,[x19, #0x28]
02c66b48  ldur q1,[x19, #0x38]
02c66b4c  ldr x22,[x19, #0x48]
02c66b50  ldrb w23,[x19, #0x24]
02c66b54  ldr x0,[x8]
02c66b58  stp q0,q1,[sp, #0x20]
02c66b5c  ldr w8,[x0, #0xe4]
02c66b60  cbnz w8,0x02c66b68
02c66b64  bl 0x029f5bd0
02c66b68  ldp q0,q1,[sp, #0x20]
02c66b6c  fmov s2,s8
02c66b70  cmp w23,#0x0
02c66b74  mov x1,sp
02c66b78  mov x0,x20
02c66b7c  cset w3,ne
02c66b80  mov x2,x22
02c66b84  mov x4,xzr
02c66b88  stp q0,q1,[sp]
02c66b8c  fmov s0,s10
02c66b90  fmov s1,s9
02c66b94  bl 0x02b7fba8
02c66b98  ldrb w8,[x19, #0xdc]
02c66b9c  cbnz w8,0x02c66bbc
02c66ba0  fmov s0,s10
02c66ba4  fmov s1,s9
02c66ba8  mov w8,#0x1
02c66bac  fmov s2,s8
02c66bb0  mov x0,x19
02c66bb4  strb w8,[x19, #0xdc]
02c66bb8  bl 0x02c66180
02c66bbc  adrp x8,0x5e5d000
02c66bc0  ldr x8,[x8, #0x368]
02c66bc4  ldr x8,[x8]
02c66bc8  ldr x8,[x8, #0xb8]
02c66bcc  ldr x8,[x8]
02c66bd0  cbz x8,0x02c66c18
02c66bd4  ldr w8,[x8, #0x20]
02c66bd8  cmp w8,#0x5
02c66bdc  b.eq 0x02c66bf4
02c66be0  ldr w8,[x19, #0xd8]
02c66be4  cmp w8,#0x2
02c66be8  cset w8,lt
02c66bec  orr w8,w8,w21
02c66bf0  tbnz w8,#0x0,0x02c66bfc
02c66bf4  mov x0,x19
02c66bf8  bl 0x02c66330
02c66bfc  ldp x20,x19,[sp, #0x80]
02c66c00  ldr d10,[sp, #0x40]
02c66c04  ldp x22,x21,[sp, #0x70]
02c66c08  ldp x30,x23,[sp, #0x60]
02c66c0c  ldp d9,d8,[sp, #0x50]
02c66c10  add sp,sp,#0x90
02c66c14  ret
02c66c18  bl 0x029f5cfc
