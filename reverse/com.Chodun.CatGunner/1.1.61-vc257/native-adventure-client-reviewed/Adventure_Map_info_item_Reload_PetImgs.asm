02c34984  stp x30,x27,[sp, #-0x50]!
02c34988  stp x26,x25,[sp, #0x10]
02c3498c  stp x24,x23,[sp, #0x20]
02c34990  stp x22,x21,[sp, #0x30]
02c34994  stp x20,x19,[sp, #0x40]
02c34998  adrp x21,0x625c000
02c3499c  mov x19,x1
02c349a0  mov x20,x0
02c349a4  ldrb w8,[x21, #0x5a]
02c349a8  tbnz w8,#0x0,0x02c349d8
02c349ac  adrp x0,0x5e62000
02c349b0  ldr x0,[x0, #0xfe8]
02c349b4  bl 0x029f5a50
02c349b8  adrp x0,0x5e63000
02c349bc  ldr x0,[x0, #0x128]
02c349c0  bl 0x029f5a50
02c349c4  adrp x0,0x5e5d000
02c349c8  ldr x0,[x0, #0x4d0]
02c349cc  bl 0x029f5a50
02c349d0  mov w8,#0x1
02c349d4  strb w8,[x21, #0x5a]
02c349d8  cbz x19,0x02c349e4
02c349dc  ldrsw x23,[x19, #0x18]
02c349e0  b 0x02c349e8
02c349e4  mov x23,xzr
02c349e8  ldr x8,[x20, #0x48]
02c349ec  cbz x8,0x02c34b30
02c349f0  adrp x24,0x5e63000
02c349f4  adrp x25,0x5e5d000
02c349f8  mov w26,#0x4
02c349fc  ldr x24,[x24, #0x128]
02c34a00  ldr x25,[x25, #0x4d0]
02c34a04  ldr w9,[x8, #0x18]
02c34a08  sub x27,x26,#0x4
02c34a0c  cmp x27,w9, SXTW 
02c34a10  b.ge 0x02c34b34
02c34a14  cmp x27,x23
02c34a18  b.ge 0x02c34afc
02c34a1c  cbz x19,0x02c34b30
02c34a20  ldr x2,[x24]
02c34a24  sub w1,w26,#0x4
02c34a28  mov x0,x19
02c34a2c  bl 0x044f7718
02c34a30  ldr x8,[x20, #0x48]
02c34a34  cbz x8,0x02c34b30
02c34a38  ldr w9,[x8, #0x18]
02c34a3c  cmp x27,x9
02c34a40  b.cs 0x02c34b4c
02c34a44  mov w21,w0
02c34a48  ldr x0,[x8, x26, LSL #0x3]
02c34a4c  cbz x0,0x02c34b30
02c34a50  mov x1,xzr
02c34a54  bl 0x057dc1c8
02c34a58  cbz x0,0x02c34b30
02c34a5c  mov w1,#0x1
02c34a60  mov x2,xzr
02c34a64  bl 0x057dff3c
02c34a68  ldr x8,[x20, #0x48]
02c34a6c  cbz x8,0x02c34b30
02c34a70  ldr w9,[x8, #0x18]
02c34a74  cmp x27,x9
02c34a78  b.cs 0x02c34b4c
02c34a7c  ldr x0,[x25]
02c34a80  ldr x22,[x8, x26, LSL #0x3]
02c34a84  ldr w9,[x0, #0xe4]
02c34a88  cbnz w9,0x02c34a94
02c34a8c  bl 0x029f5bd0
02c34a90  ldr x0,[x25]
02c34a94  ldr x8,[x0, #0xb8]
02c34a98  ldr x8,[x8, #0x28]
02c34a9c  cbz x8,0x02c34b30
02c34aa0  ldr x8,[x8, #0x58]
02c34aa4  cbz x8,0x02c34b30
02c34aa8  ldr w9,[x8, #0x18]
02c34aac  cmp w21,w9
02c34ab0  b.cs 0x02c34b4c
02c34ab4  cbz x22,0x02c34b30
02c34ab8  add x8,x8,w21, SXTW  #0x3
02c34abc  mov x0,x22
02c34ac0  mov x2,xzr
02c34ac4  ldr x1,[x8, #0x20]
02c34ac8  bl 0x058d34cc
02c34acc  ldr x8,[x20, #0x48]
02c34ad0  cbz x8,0x02c34b30
02c34ad4  ldr w9,[x8, #0x18]
02c34ad8  cmp x27,x9
02c34adc  b.cs 0x02c34b4c
02c34ae0  ldr x0,[x8, x26, LSL #0x3]
02c34ae4  cbz x0,0x02c34b30
02c34ae8  ldr x8,[x0]
02c34aec  ldr x9,[x8, #0x408]
02c34af0  ldr x1,[x8, #0x410]
02c34af4  blr x9
02c34af8  b 0x02c34b24
02c34afc  cmp x27,x9
02c34b00  b.cs 0x02c34b4c
02c34b04  ldr x0,[x8, x26, LSL #0x3]
02c34b08  cbz x0,0x02c34b30
02c34b0c  mov x1,xzr
02c34b10  bl 0x057dc1c8
02c34b14  cbz x0,0x02c34b30
02c34b18  mov w1,wzr
02c34b1c  mov x2,xzr
02c34b20  bl 0x057dff3c
02c34b24  ldr x8,[x20, #0x48]
02c34b28  add x26,x26,#0x1
02c34b2c  cbnz x8,0x02c34a04
02c34b30  bl 0x029f5cfc
02c34b34  ldp x20,x19,[sp, #0x40]
02c34b38  ldp x22,x21,[sp, #0x30]
02c34b3c  ldp x24,x23,[sp, #0x20]
02c34b40  ldp x26,x25,[sp, #0x10]
02c34b44  ldp x30,x27,[sp], #0x50
02c34b48  ret
02c34b4c  bl 0x029f5d04
