02cb07fc  sub sp,sp,#0x80
02cb0800  stp x30,x25,[sp, #0x40]
02cb0804  stp x24,x23,[sp, #0x50]
02cb0808  stp x22,x21,[sp, #0x60]
02cb080c  stp x20,x19,[sp, #0x70]
02cb0810  adrp x20,0x625c000
02cb0814  mov x19,x0
02cb0818  ldrb w8,[x20, #0x545]
02cb081c  tbnz w8,#0x0,0x02cb0894
02cb0820  adrp x0,0x5e5b000
02cb0824  ldr x0,[x0, #0xe98]
02cb0828  bl 0x029f5a50
02cb082c  adrp x0,0x5e63000
02cb0830  ldr x0,[x0, #0xa90]
02cb0834  bl 0x029f5a50
02cb0838  adrp x0,0x5e63000
02cb083c  ldr x0,[x0, #0xa98]
02cb0840  bl 0x029f5a50
02cb0844  adrp x0,0x5e63000
02cb0848  ldr x0,[x0, #0xaa0]
02cb084c  bl 0x029f5a50
02cb0850  adrp x0,0x5e63000
02cb0854  ldr x0,[x0, #0xaa8]
02cb0858  bl 0x029f5a50
02cb085c  adrp x0,0x5e5d000
02cb0860  ldr x0,[x0, #0xd40]
02cb0864  bl 0x029f5a50
02cb0868  adrp x0,0x5e63000
02cb086c  ldr x0,[x0, #0xab0]
02cb0870  bl 0x029f5a50
02cb0874  adrp x0,0x5e59000
02cb0878  ldr x0,[x0, #0x1c0]
02cb087c  bl 0x029f5a50
02cb0880  adrp x0,0x5e5a000
02cb0884  ldr x0,[x0, #0x710]
02cb0888  bl 0x029f5a50
02cb088c  mov w8,#0x1
02cb0890  strb w8,[x20, #0x545]
02cb0894  ldr w8,[x19, #0x10]
02cb0898  ldr x23,[x19, #0x20]
02cb089c  stp xzr,xzr,[sp, #0x20]
02cb08a0  str xzr,[sp, #0x30]
02cb08a4  cmp w8,#0x2
02cb08a8  b.eq 0x02cb0af0
02cb08ac  cmp w8,#0x1
02cb08b0  b.eq 0x02cb08d8
02cb08b4  cbnz w8,0x02cb0b9c
02cb08b8  mov x0,x19
02cb08bc  mov w8,#0xffffffff
02cb08c0  mov x1,xzr
02cb08c4  str xzr,[x0, #0x18]!
02cb08c8  stur w8,[x0, #-0x8]
02cb08cc  bl 0x029f59f4
02cb08d0  mov w8,#0x1
02cb08d4  b 0x02cb0c08
02cb08d8  mov x20,x19
02cb08dc  mov w8,#0xffffffff
02cb08e0  mov x1,xzr
02cb08e4  str xzr,[x20, #0x28]!
02cb08e8  mov x0,x20
02cb08ec  stur w8,[x20, #-0x18]
02cb08f0  bl 0x029f59f4
02cb08f4  adrp x22,0x5e63000
02cb08f8  adrp x24,0x5e59000
02cb08fc  ldr x22,[x22, #0xaa8]
02cb0900  ldr x24,[x24, #0x1c0]
02cb0904  ldr x8,[x22]
02cb0908  ldr x0,[x24]
02cb090c  ldr x8,[x8, #0xb8]
02cb0910  ldr w9,[x0, #0xe4]
02cb0914  ldr x21,[x8]
02cb0918  cbnz w9,0x02cb0920
02cb091c  bl 0x029f5bd0
02cb0920  mov x0,x21
02cb0924  mov x1,xzr
02cb0928  mov x2,xzr
02cb092c  bl 0x057dfa70
02cb0930  tbz w0,#0x0,0x02cb0a10
02cb0934  ldr x8,[x22]
02cb0938  ldr x8,[x8, #0xb8]
02cb093c  ldr x8,[x8]
02cb0940  cbz x8,0x02cb0c84
02cb0944  ldr x0,[x8, #0x40]
02cb0948  cbz x0,0x02cb0c84
02cb094c  adrp x8,0x5e63000
02cb0950  ldr x8,[x8, #0xab0]
02cb0954  ldr x1,[x8]
02cb0958  add x8,sp,#0x8
02cb095c  bl 0x0452d690
02cb0960  ldur q0,[sp, #0x8]
02cb0964  ldr x8,[sp, #0x18]
02cb0968  adrp x22,0x5e63000
02cb096c  add x9,sp,#0x20
02cb0970  str q0,[sp, #0x20]
02cb0974  str x8,[sp, #0x30]
02cb0978  ldr x22,[x22, #0xa98]
02cb097c  stp xzr,x9,[sp, #0x8]
02cb0980  ldr x1,[x22]
02cb0984  add x0,sp,#0x20
02cb0988  bl 0x03fa4e10
02cb098c  tbz w0,#0x0,0x02cb09fc
02cb0990  ldr x0,[x24]
02cb0994  ldr x21,[sp, #0x30]
02cb0998  ldr w8,[x0, #0xe4]
02cb099c  cbnz w8,0x02cb09a4
02cb09a0  bl 0x029f5bd0
02cb09a4  mov x0,x21
02cb09a8  mov x1,xzr
02cb09ac  mov x2,xzr
02cb09b0  bl 0x057dfa70
02cb09b4  tbz w0,#0x0,0x02cb0980
02cb09b8  cbz x21,0x02cb0c88
02cb09bc  mov x0,x21
02cb09c0  mov x1,xzr
02cb09c4  bl 0x057dc1c8
02cb09c8  cbz x0,0x02cb0c8c
02cb09cc  mov x1,xzr
02cb09d0  bl 0x057e0000
02cb09d4  tbz w0,#0x0,0x02cb0980
02cb09d8  adrp x8,0x5e5b000
02cb09dc  ldr x8,[x8, #0xe98]
02cb09e0  ldr x1,[x8]
02cb09e4  mov x0,x21
02cb09e8  bl 0x02fe5f2c
02cb09ec  mov x1,x0
02cb09f0  str x1,[x20]
02cb09f4  mov x0,x20
02cb09f8  bl 0x029f59f4
02cb09fc  adrp x8,0x5e63000
02cb0a00  add x0,sp,#0x20
02cb0a04  ldr x8,[x8, #0xa90]
02cb0a08  ldr x1,[x8]
02cb0a0c  bl 0x03fa4e0c
02cb0a10  mov x21,x19
02cb0a14  mov x1,xzr
02cb0a18  str xzr,[x21, #0x30]!
02cb0a1c  mov x0,x21
02cb0a20  bl 0x029f59f4
02cb0a24  adrp x25,0x5e5d000
02cb0a28  ldr x25,[x25, #0xd40]
02cb0a2c  ldr x0,[x24]
02cb0a30  ldr x8,[x25]
02cb0a34  ldr w9,[x0, #0xe4]
02cb0a38  ldr x8,[x8, #0xb8]
02cb0a3c  ldr x22,[x8]
02cb0a40  cbnz w9,0x02cb0a48
02cb0a44  bl 0x029f5bd0
02cb0a48  mov x0,x22
02cb0a4c  mov x1,xzr
02cb0a50  mov x2,xzr
02cb0a54  bl 0x057dfa70
02cb0a58  mov x22,xzr
02cb0a5c  tbz w0,#0x0,0x02cb0a88
02cb0a60  ldr x8,[x25]
02cb0a64  ldr x8,[x8, #0xb8]
02cb0a68  ldr x8,[x8]
02cb0a6c  cbz x8,0x02cb0c84
02cb0a70  ldr x8,[x8, #0x98]
02cb0a74  cbz x8,0x02cb0a84
02cb0a78  ldr w9,[x8, #0x18]
02cb0a7c  cmp w9,#0x2
02cb0a80  b.ge 0x02cb0c28
02cb0a84  mov x22,xzr
02cb0a88  ldr x0,[x24]
02cb0a8c  ldr x21,[x20]
02cb0a90  ldr w8,[x0, #0xe4]
02cb0a94  cbnz w8,0x02cb0a9c
02cb0a98  bl 0x029f5bd0
02cb0a9c  mov x0,x21
02cb0aa0  mov x1,xzr
02cb0aa4  mov x2,xzr
02cb0aa8  bl 0x057dfa70
02cb0aac  tbz w0,#0x0,0x02cb0af8
02cb0ab0  ldr x0,[x24]
02cb0ab4  ldr w8,[x0, #0xe4]
02cb0ab8  cbnz w8,0x02cb0ac0
02cb0abc  bl 0x029f5bd0
02cb0ac0  mov x0,x22
02cb0ac4  mov x1,xzr
02cb0ac8  mov x2,xzr
02cb0acc  bl 0x057dfa70
02cb0ad0  tbz w0,#0x0,0x02cb0af8
02cb0ad4  cbz x23,0x02cb0c84
02cb0ad8  ldr x0,[x23, #0x40]
02cb0adc  cbz x0,0x02cb0c84
02cb0ae0  ldr x1,[x20]
02cb0ae4  mov x2,x22
02cb0ae8  bl 0x02cae70c
02cb0aec  b 0x02cb0afc
02cb0af0  mov w8,#0xffffffff
02cb0af4  str w8,[x19, #0x10]
02cb0af8  cbz x23,0x02cb0c84
02cb0afc  ldr w8,[x23, #0x60]
02cb0b00  cmp w8,#0x4
02cb0b04  b.ne 0x02cb0b9c
02cb0b08  adrp x22,0x5e59000
02cb0b0c  ldr x22,[x22, #0x1c0]
02cb0b10  ldr x20,[x19, #0x30]
02cb0b14  ldr x0,[x22]
02cb0b18  ldr w8,[x0, #0xe4]
02cb0b1c  cbnz w8,0x02cb0b24
02cb0b20  bl 0x029f5bd0
02cb0b24  mov x0,x20
02cb0b28  mov x1,xzr
02cb0b2c  mov x2,xzr
02cb0b30  bl 0x057dfa70
02cb0b34  tbz w0,#0x0,0x02cb0ba4
02cb0b38  ldr x0,[x19, #0x30]
02cb0b3c  cbz x0,0x02cb0c84
02cb0b40  mov x1,xzr
02cb0b44  bl 0x057dc1c8
02cb0b48  cbz x0,0x02cb0c84
02cb0b4c  mov x1,xzr
02cb0b50  bl 0x057e00b4
02cb0b54  ldr x8,[x23, #0x40]
02cb0b58  cbz x8,0x02cb0c84
02cb0b5c  mov w21,w0
02cb0b60  mov x0,x8
02cb0b64  mov x1,xzr
02cb0b68  bl 0x057dc1c8
02cb0b6c  mov x20,x0
02cb0b70  tbz w21,#0x0,0x02cb0bb8
02cb0b74  ldr x0,[x22]
02cb0b78  ldr x21,[x19, #0x28]
02cb0b7c  ldr w8,[x0, #0xe4]
02cb0b80  cbnz w8,0x02cb0b88
02cb0b84  bl 0x029f5bd0
02cb0b88  mov x0,x21
02cb0b8c  mov x1,xzr
02cb0b90  mov x2,xzr
02cb0b94  bl 0x057dfa70
02cb0b98  b 0x02cb0bbc
02cb0b9c  mov w0,wzr
02cb0ba0  b 0x02cb0c10
02cb0ba4  ldr x0,[x23, #0x40]
02cb0ba8  cbz x0,0x02cb0c84
02cb0bac  mov x1,xzr
02cb0bb0  bl 0x057dc1c8
02cb0bb4  mov x20,x0
02cb0bb8  mov w0,wzr
02cb0bbc  cbz x20,0x02cb0c84
02cb0bc0  and w1,w0,#0x1
02cb0bc4  mov x0,x20
02cb0bc8  mov x2,xzr
02cb0bcc  bl 0x057dff3c
02cb0bd0  adrp x8,0x5e5a000
02cb0bd4  ldr x8,[x8, #0x710]
02cb0bd8  ldr x0,[x8]
02cb0bdc  bl 0x029f5cec
02cb0be0  adrp x8,0x116c000
02cb0be4  mov x1,xzr
02cb0be8  mov x20,x0
02cb0bec  ldr s0,[x8, #0x60]
02cb0bf0  bl 0x057e84e0
02cb0bf4  mov x0,x19
02cb0bf8  mov x1,x20
02cb0bfc  str x20,[x0, #0x18]!
02cb0c00  bl 0x029f59f4
02cb0c04  mov w8,#0x2
02cb0c08  mov w0,#0x1
02cb0c0c  str w8,[x19, #0x10]
02cb0c10  ldp x20,x19,[sp, #0x70]
02cb0c14  ldp x22,x21,[sp, #0x60]
02cb0c18  ldp x24,x23,[sp, #0x50]
02cb0c1c  ldp x30,x25,[sp, #0x40]
02cb0c20  add sp,sp,#0x80
02cb0c24  ret
02cb0c28  ldr x1,[x8, #0x28]
02cb0c2c  mov x0,x21
02cb0c30  str x1,[x21]
02cb0c34  bl 0x029f59f4
02cb0c38  ldr x0,[x24]
02cb0c3c  ldr x22,[x21]
02cb0c40  ldr w8,[x0, #0xe4]
02cb0c44  cbnz w8,0x02cb0c4c
02cb0c48  bl 0x029f5bd0
02cb0c4c  mov x0,x22
02cb0c50  mov x1,xzr
02cb0c54  mov x2,xzr
02cb0c58  bl 0x057dfa70
02cb0c5c  mov x22,xzr
02cb0c60  tbz w0,#0x0,0x02cb0a88
02cb0c64  ldr x0,[x21]
02cb0c68  cbz x0,0x02cb0c84
02cb0c6c  adrp x8,0x5e5b000
02cb0c70  ldr x8,[x8, #0xe98]
02cb0c74  ldr x1,[x8]
02cb0c78  bl 0x02fe5f2c
02cb0c7c  mov x22,x0
02cb0c80  b 0x02cb0a88
02cb0c84  bl 0x029f5cfc
02cb0c88  bl 0x029f5cfc
02cb0c8c  bl 0x029f5cfc
