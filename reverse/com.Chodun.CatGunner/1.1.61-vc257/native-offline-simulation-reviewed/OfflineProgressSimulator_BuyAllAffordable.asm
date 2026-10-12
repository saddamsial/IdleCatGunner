02c09bd0  str x30,[sp, #-0x60]!
02c09bd4  stp x28,x27,[sp, #0x10]
02c09bd8  stp x26,x25,[sp, #0x20]
02c09bdc  stp x24,x23,[sp, #0x30]
02c09be0  stp x22,x21,[sp, #0x40]
02c09be4  stp x20,x19,[sp, #0x50]
02c09be8  adrp x23,0x625b000
02c09bec  mov x19,x3
02c09bf0  mov x20,x2
02c09bf4  ldrb w8,[x23, #0xe83]
02c09bf8  mov x21,x1
02c09bfc  mov x22,x0
02c09c00  tbnz w8,#0x0,0x02c09c18
02c09c04  adrp x0,0x5e62000
02c09c08  ldr x0,[x0, #0x40]
02c09c0c  bl 0x029f5a50
02c09c10  mov w8,#0x1
02c09c14  strb w8,[x23, #0xe83]
02c09c18  adrp x23,0x5e62000
02c09c1c  mov w8,wzr
02c09c20  mov w24,#0x270f
02c09c24  ldr x23,[x23, #0x40]
02c09c28  mov w25,#0x7fffffff
02c09c2c  mov w26,#0x2710
02c09c30  mov w27,#0x2
02c09c34  ldr w9,[x22]
02c09c38  ldr w10,[x21]
02c09c3c  mov w28,w8
02c09c40  cmp w9,w24
02c09c44  csetm w11,gt
02c09c48  csel w9,w25,w9,gt
02c09c4c  cmp w10,w26
02c09c50  cset w12,lt
02c09c54  cmp w10,w9
02c09c58  cset w13,lt
02c09c5c  tst w12,w13
02c09c60  ldr w12,[x20]
02c09c64  csel w9,w10,w9,ne
02c09c68  csinc w10,w11,wzr,eq
02c09c6c  cmp w12,w9
02c09c70  csel w9,w27,w10,lt
02c09c74  cmp w12,w24
02c09c78  csel w9,w10,w9,gt
02c09c7c  cmp w9,#0x2
02c09c80  b.eq 0x02c09cc0
02c09c84  cmp w9,#0x1
02c09c88  b.eq 0x02c09ca8
02c09c8c  cbnz w9,0x02c09ce4
02c09c90  ldr x0,[x23]
02c09c94  ldr w8,[x0, #0xe4]
02c09c98  cbnz w8,0x02c09ca0
02c09c9c  bl 0x029f5bd0
02c09ca0  mov x0,x22
02c09ca4  b 0x02c09cd4
02c09ca8  ldr x0,[x23]
02c09cac  ldr w8,[x0, #0xe4]
02c09cb0  cbnz w8,0x02c09cb8
02c09cb4  bl 0x029f5bd0
02c09cb8  mov x0,x21
02c09cbc  b 0x02c09cd4
02c09cc0  ldr x0,[x23]
02c09cc4  ldr w8,[x0, #0xe4]
02c09cc8  cbnz w8,0x02c09cd0
02c09ccc  bl 0x029f5bd0
02c09cd0  mov x0,x20
02c09cd4  mov x1,x19
02c09cd8  bl 0x02c09d04
02c09cdc  mov w8,#0x1
02c09ce0  tbnz w0,#0x0,0x02c09c34
02c09ce4  and w0,w28,#0x1
02c09ce8  ldp x20,x19,[sp, #0x50]
02c09cec  ldp x22,x21,[sp, #0x40]
02c09cf0  ldp x24,x23,[sp, #0x30]
02c09cf4  ldp x26,x25,[sp, #0x20]
02c09cf8  ldp x28,x27,[sp, #0x10]
02c09cfc  ldr x30,[sp], #0x60
02c09d00  ret
