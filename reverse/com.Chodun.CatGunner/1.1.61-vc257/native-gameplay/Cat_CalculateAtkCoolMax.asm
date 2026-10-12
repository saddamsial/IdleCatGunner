02c399cc  sub sp,sp,#0x80
02c399d0  stp d9,d8,[sp, #0x40]
02c399d4  stp x30,x23,[sp, #0x50]
02c399d8  stp x22,x21,[sp, #0x60]
02c399dc  stp x20,x19,[sp, #0x70]
02c399e0  fmov s8,s0
02c399e4  adrp x23,0x625c000
02c399e8  adrp x22,0x5e5d000
02c399ec  ldrb w8,[x23, #0x8b]
02c399f0  ldr x22,[x22, #0x4e0]
02c399f4  mov w21,w3
02c399f8  mov w19,w2
02c399fc  mov w20,w1
02c39a00  tbnz w8,#0x0,0x02c39a48
02c39a04  adrp x0,0x5e5d000
02c39a08  ldr x0,[x0, #0x4c0]
02c39a0c  bl 0x029f5a50
02c39a10  adrp x0,0x5e59000
02c39a14  ldr x0,[x0, #0x1c0]
02c39a18  bl 0x029f5a50
02c39a1c  adrp x0,0x5e5d000
02c39a20  ldr x0,[x0, #0x4e0]
02c39a24  bl 0x029f5a50
02c39a28  adrp x0,0x5e5d000
02c39a2c  ldr x0,[x0, #0xc20]
02c39a30  bl 0x029f5a50
02c39a34  adrp x0,0x5e5d000
02c39a38  ldr x0,[x0, #0x4e8]
02c39a3c  bl 0x029f5a50
02c39a40  mov w8,#0x1
02c39a44  strb w8,[x23, #0x8b]
02c39a48  movi v0.2D,#0x0
02c39a4c  ldr x8,[x22]
02c39a50  ldr x8,[x8, #0xb8]
02c39a54  stp q0,q0,[sp, #0x20]
02c39a58  ldr w22,[x8, #0x4]
02c39a5c  tbz w21,#0x0,0x02c39aa4
02c39a60  sub w21,w22,#0x64
02c39a64  tbz w20,#0x0,0x02c39ad0
02c39a68  tbz w19,#0x0,0x02c39af8
02c39a6c  adrp x19,0x5e5d000
02c39a70  ldr x19,[x19, #0xc20]
02c39a74  ldr x0,[x19]
02c39a78  ldr w8,[x0, #0xe4]
02c39a7c  cbnz w8,0x02c39a88
02c39a80  bl 0x029f5bd0
02c39a84  ldr x0,[x19]
02c39a88  ldr x8,[x0, #0xb8]
02c39a8c  ldr x8,[x8, #0x10]
02c39a90  cbz x8,0x02c39be4
02c39a94  ldr w8,[x8, #0x28]
02c39a98  lsl w9,w8,#0x1
02c39a9c  sub w8,w9,w8, LSL #0x5
02c39aa0  b 0x02c39afc
02c39aa4  mov x8,sp
02c39aa8  mov x0,xzr
02c39aac  bl 0x02c87498
02c39ab0  ldp q0,q1,[sp]
02c39ab4  add x0,sp,#0x20
02c39ab8  mov x1,xzr
02c39abc  stp q0,q1,[sp, #0x20]
02c39ac0  bl 0x04657108
02c39ac4  add w8,w22,w0
02c39ac8  sub w21,w8,#0xc8
02c39acc  tbnz w20,#0x0,0x02c39a68
02c39ad0  adrp x8,0x5e5d000
02c39ad4  ldr x8,[x8, #0x4e8]
02c39ad8  ldr x0,[x8]
02c39adc  ldr w8,[x0, #0xe4]
02c39ae0  cbnz w8,0x02c39ae8
02c39ae4  bl 0x029f5bd0
02c39ae8  mov x0,xzr
02c39aec  bl 0x02cb2ef8
02c39af0  add w21,w0,w21
02c39af4  tbnz w19,#0x0,0x02c39a6c
02c39af8  mov w8,wzr
02c39afc  add w8,w8,w21
02c39b00  mov w9,#0x2710
02c39b04  adrp x20,0x5e5d000
02c39b08  cmp w8,w9
02c39b0c  ldr x20,[x20, #0x4c0]
02c39b10  adrp x19,0x5e59000
02c39b14  csel w8,w8,w9,lt
02c39b18  mov w9,#0x64
02c39b1c  mov w21,#0x42c80000
02c39b20  cmp w8,#0x64
02c39b24  ldr x0,[x20]
02c39b28  csel w8,w8,w9,gt
02c39b2c  scvtf s9,w8
02c39b30  ldr w8,[x0, #0xe4]
02c39b34  ldr x19,[x19, #0x1c0]
02c39b38  cbnz w8,0x02c39b44
02c39b3c  bl 0x029f5bd0
02c39b40  ldr x0,[x20]
02c39b44  fdiv s8,s8,s9
02c39b48  ldr x8,[x19]
02c39b4c  ldr x9,[x0, #0xb8]
02c39b50  fmov s9,w21
02c39b54  ldr w10,[x8, #0xe4]
02c39b58  ldr x19,[x9]
02c39b5c  cbnz w10,0x02c39b68
02c39b60  mov x0,x8
02c39b64  bl 0x029f5bd0
02c39b68  mov x0,x19
02c39b6c  mov x1,xzr
02c39b70  mov x2,xzr
02c39b74  fmul s8,s8,s9
02c39b78  bl 0x057dfa70
02c39b7c  tbz w0,#0x0,0x02c39bb0
02c39b80  ldr x0,[x20]
02c39b84  ldr w8,[x0, #0xe4]
02c39b88  cbnz w8,0x02c39b94
02c39b8c  bl 0x029f5bd0
02c39b90  ldr x0,[x20]
02c39b94  ldr x8,[x0, #0xb8]
02c39b98  ldr x0,[x8]
02c39b9c  cbz x0,0x02c39be4
02c39ba0  mov w1,#0x2
02c39ba4  bl 0x02c376a8
02c39ba8  scvtf s0,w0
02c39bac  fdiv s8,s8,s0
02c39bb0  fmov s0,0x40000000
02c39bb4  adrp x8,0x116c000
02c39bb8  ldr s1,[x8, #0x94]
02c39bbc  ldp x20,x19,[sp, #0x70]
02c39bc0  ldp x22,x21,[sp, #0x60]
02c39bc4  fcmp s8,s0
02c39bc8  ldp x30,x23,[sp, #0x50]
02c39bcc  fcsel s0,s0,s8,gt
02c39bd0  fcmp s8,s1
02c39bd4  ldp d9,d8,[sp, #0x40]
02c39bd8  fcsel s0,s1,s0,mi
02c39bdc  add sp,sp,#0x80
02c39be0  ret
02c39be4  bl 0x029f5cfc
