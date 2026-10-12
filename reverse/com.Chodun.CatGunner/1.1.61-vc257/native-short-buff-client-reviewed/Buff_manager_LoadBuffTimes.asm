02c379f4  str d10,[sp, #-0x40]!
02c379f8  stp d9,d8,[sp, #0x10]
02c379fc  stp x30,x21,[sp, #0x20]
02c37a00  stp x20,x19,[sp, #0x30]
02c37a04  fmov s8,s2
02c37a08  fmov s9,s1
02c37a0c  adrp x20,0x625c000
02c37a10  fmov s10,s0
02c37a14  ldrb w8,[x20, #0x76]
02c37a18  mov x19,x0
02c37a1c  tbnz w8,#0x0,0x02c37a4c
02c37a20  adrp x0,0x5e5d000
02c37a24  ldr x0,[x0, #0x338]
02c37a28  bl 0x029f5a50
02c37a2c  adrp x0,0x5e59000
02c37a30  ldr x0,[x0, #0x1c0]
02c37a34  bl 0x029f5a50
02c37a38  adrp x0,0x5e5d000
02c37a3c  ldr x0,[x0, #0x4e8]
02c37a40  bl 0x029f5a50
02c37a44  mov w8,#0x1
02c37a48  strb w8,[x20, #0x76]
02c37a4c  mov w8,#0x44610000
02c37a50  movi d1,#0x0
02c37a54  fmov s0,w8
02c37a58  ldr x8,[x19, #0x38]
02c37a5c  fcmp s10,s0
02c37a60  fcsel s0,s0,s10,gt
02c37a64  fcmp s10,#0.0
02c37a68  fcsel s0,s1,s0,mi
02c37a6c  cbz x8,0x02c37ba8
02c37a70  ldr w9,[x8, #0x18]
02c37a74  cbz w9,0x02c37ba4
02c37a78  cmp w9,#0x1
02c37a7c  str s0,[x8, #0x20]
02c37a80  b.eq 0x02c37ba4
02c37a84  mov w10,#0x44610000
02c37a88  fmov s0,w10
02c37a8c  fcmp s9,s0
02c37a90  fcsel s1,s0,s9,gt
02c37a94  movi d0,#0x0
02c37a98  fcmp s9,#0.0
02c37a9c  fcsel s1,s0,s1,mi
02c37aa0  cmp w9,#0x2
02c37aa4  str s1,[x8, #0x24]
02c37aa8  b.ls 0x02c37ba4
02c37aac  mov w9,#0x44610000
02c37ab0  fmov s1,w9
02c37ab4  adrp x9,0x5e5d000
02c37ab8  ldr x9,[x9, #0x338]
02c37abc  fcmp s8,s1
02c37ac0  ldr x0,[x9]
02c37ac4  ldr w9,[x0, #0xe4]
02c37ac8  fcsel s1,s1,s8,gt
02c37acc  fcmp s8,#0.0
02c37ad0  fcsel s0,s0,s1,mi
02c37ad4  str s0,[x8, #0x28]
02c37ad8  cbnz w9,0x02c37ae0
02c37adc  bl 0x029f5bd0
02c37ae0  adrp x20,0x5e5d000
02c37ae4  mov x0,xzr
02c37ae8  ldr x20,[x20, #0x4e8]
02c37aec  bl 0x02b7dcfc
02c37af0  mov x0,x19
02c37af4  bl 0x02c37bac
02c37af8  tbz w0,#0x0,0x02c37b04
02c37afc  mov x0,x19
02c37b00  bl 0x02c3788c
02c37b04  adrp x21,0x5e59000
02c37b08  mov x0,x19
02c37b0c  ldr x21,[x21, #0x1c0]
02c37b10  bl 0x02c378dc
02c37b14  ldr x0,[x20]
02c37b18  ldr w8,[x0, #0xe4]
02c37b1c  cbnz w8,0x02c37b28
02c37b20  bl 0x029f5bd0
02c37b24  ldr x0,[x20]
02c37b28  ldr x8,[x21]
02c37b2c  ldr x9,[x0, #0xb8]
02c37b30  ldr w10,[x8, #0xe4]
02c37b34  ldr x19,[x9]
02c37b38  cbnz w10,0x02c37b44
02c37b3c  mov x0,x8
02c37b40  bl 0x029f5bd0
02c37b44  mov x0,x19
02c37b48  mov x1,xzr
02c37b4c  mov x2,xzr
02c37b50  bl 0x057dfa70
02c37b54  tbz w0,#0x0,0x02c37b90
02c37b58  ldr x0,[x20]
02c37b5c  ldr w8,[x0, #0xe4]
02c37b60  cbnz w8,0x02c37b6c
02c37b64  bl 0x029f5bd0
02c37b68  ldr x0,[x20]
02c37b6c  ldr x8,[x0, #0xb8]
02c37b70  ldr x0,[x8]
02c37b74  cbz x0,0x02c37ba8
02c37b78  ldp x20,x19,[sp, #0x30]
02c37b7c  mov x1,xzr
02c37b80  ldp x30,x21,[sp, #0x20]
02c37b84  ldp d9,d8,[sp, #0x10]
02c37b88  ldr d10,[sp], #0x40
02c37b8c  b 0x02cb2acc
02c37b90  ldp x20,x19,[sp, #0x30]
02c37b94  ldp x30,x21,[sp, #0x20]
02c37b98  ldp d9,d8,[sp, #0x10]
02c37b9c  ldr d10,[sp], #0x40
02c37ba0  ret
02c37ba4  bl 0x029f5d04
02c37ba8  bl 0x029f5cfc
