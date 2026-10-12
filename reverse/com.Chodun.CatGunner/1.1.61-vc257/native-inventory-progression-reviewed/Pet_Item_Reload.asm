02c7e86c  stp x30,x25,[sp, #-0x40]!
02c7e870  stp x24,x23,[sp, #0x10]
02c7e874  stp x22,x21,[sp, #0x20]
02c7e878  stp x20,x19,[sp, #0x30]
02c7e87c  adrp x22,0x625c000
02c7e880  adrp x25,0x5e5d000
02c7e884  mov w20,w2
02c7e888  ldrb w8,[x22, #0x340]
02c7e88c  ldr x25,[x25, #0x4d0]
02c7e890  mov w21,w1
02c7e894  mov x19,x0
02c7e898  tbnz w8,#0x0,0x02c7e8bc
02c7e89c  adrp x0,0x5e59000
02c7e8a0  ldr x0,[x0, #0x1c0]
02c7e8a4  bl 0x029f5a50
02c7e8a8  adrp x0,0x5e5d000
02c7e8ac  ldr x0,[x0, #0x4d0]
02c7e8b0  bl 0x029f5a50
02c7e8b4  mov w8,#0x1
02c7e8b8  strb w8,[x22, #0x340]
02c7e8bc  ldr x0,[x25]
02c7e8c0  ldp x23,x22,[x19, #0x20]
02c7e8c4  stp w21,w20,[x19, #0x64]
02c7e8c8  ldr w8,[x0, #0xe4]
02c7e8cc  cbnz w8,0x02c7e8d8
02c7e8d0  bl 0x029f5bd0
02c7e8d4  ldr x0,[x25]
02c7e8d8  ldr x8,[x0, #0xb8]
02c7e8dc  ldr x8,[x8, #0x28]
02c7e8e0  cbz x8,0x02c7e9e4
02c7e8e4  ldr x8,[x8, #0x58]
02c7e8e8  cbz x8,0x02c7e9e4
02c7e8ec  ldr w9,[x8, #0x18]
02c7e8f0  cmp w9,w21
02c7e8f4  b.ls 0x02c7eb2c
02c7e8f8  cbz x23,0x02c7e9e4
02c7e8fc  add x8,x8,w21, SXTW  #0x3
02c7e900  mov x0,x23
02c7e904  mov x2,xzr
02c7e908  ldr x24,[x8, #0x20]
02c7e90c  mov x1,x24
02c7e910  bl 0x058d34cc
02c7e914  cbz x22,0x02c7e9e4
02c7e918  mov x0,x22
02c7e91c  mov x1,x24
02c7e920  mov x2,xzr
02c7e924  bl 0x058d34cc
02c7e928  ldr x0,[x19, #0x28]
02c7e92c  cbz x0,0x02c7e9e4
02c7e930  ldr x8,[x0]
02c7e934  ldr x9,[x8, #0x408]
02c7e938  ldr x1,[x8, #0x410]
02c7e93c  blr x9
02c7e940  ldr x0,[x19, #0x20]
02c7e944  cbz x0,0x02c7e9e4
02c7e948  ldr x8,[x0]
02c7e94c  ldr x9,[x8, #0x408]
02c7e950  ldr x1,[x8, #0x410]
02c7e954  blr x9
02c7e958  ldr x0,[x19, #0x38]
02c7e95c  cbz x0,0x02c7e9e4
02c7e960  mov w1,wzr
02c7e964  mov x2,xzr
02c7e968  bl 0x057dff3c
02c7e96c  ldr x22,[x19, #0x30]
02c7e970  mov w0,w21
02c7e974  bl 0x02c7e324
02c7e978  cbz x22,0x02c7e9e4
02c7e97c  ldr x8,[x22]
02c7e980  mov x0,x22
02c7e984  ldr x9,[x8, #0x2a8]
02c7e988  ldr x1,[x8, #0x2b0]
02c7e98c  blr x9
02c7e990  ldr x8,[x19, #0x40]
02c7e994  cbz x8,0x02c7e9e4
02c7e998  adrp x22,0x5e59000
02c7e99c  mov x23,xzr
02c7e9a0  mov w21,w21
02c7e9a4  ldr x22,[x22, #0x1c0]
02c7e9a8  ldr w9,[x8, #0x18]
02c7e9ac  cmp w23,w9
02c7e9b0  b.ge 0x02c7e9e8
02c7e9b4  cmp w23,w9
02c7e9b8  b.cs 0x02c7eb2c
02c7e9bc  add x8,x8,x23, LSL #0x3
02c7e9c0  ldr x0,[x8, #0x20]
02c7e9c4  cbz x0,0x02c7e9e4
02c7e9c8  cmp w21,w23
02c7e9cc  mov x2,xzr
02c7e9d0  cset w1,eq
02c7e9d4  bl 0x057dff3c
02c7e9d8  ldr x8,[x19, #0x40]
02c7e9dc  add x23,x23,#0x1
02c7e9e0  cbnz x8,0x02c7e9a8
02c7e9e4  bl 0x029f5cfc
02c7e9e8  mov x0,x19
02c7e9ec  bl 0x02c7eb30
02c7e9f0  mov x0,x19
02c7e9f4  bl 0x02c7ebc0
02c7e9f8  mov x0,x19
02c7e9fc  mov x1,xzr
02c7ea00  strh wzr,[x19, #0x90]
02c7ea04  str xzr,[x0, #0x98]!
02c7ea08  bl 0x029f59f4
02c7ea0c  mov x0,x19
02c7ea10  mov x1,xzr
02c7ea14  str xzr,[x0, #0xa0]!
02c7ea18  bl 0x029f59f4
02c7ea1c  mov x21,x19
02c7ea20  mov w8,#0xffffffff
02c7ea24  mov x1,xzr
02c7ea28  str xzr,[x21, #0xb0]!
02c7ea2c  mov x0,x21
02c7ea30  stur w8,[x21, #-0x8]
02c7ea34  bl 0x029f59f4
02c7ea38  ldr x0,[x22]
02c7ea3c  ldur x21,[x21, #-0x30]
02c7ea40  ldr w8,[x0, #0xe4]
02c7ea44  cbnz w8,0x02c7ea4c
02c7ea48  bl 0x029f5bd0
02c7ea4c  mov x0,x21
02c7ea50  mov x1,xzr
02c7ea54  mov x2,xzr
02c7ea58  bl 0x057dfa70
02c7ea5c  tbz w0,#0x0,0x02c7ea74
02c7ea60  ldr x0,[x19, #0x80]
02c7ea64  cbz x0,0x02c7e9e4
02c7ea68  mov w1,#0x1
02c7ea6c  mov x2,xzr
02c7ea70  bl 0x05a9f1dc
02c7ea74  ldr x0,[x25]
02c7ea78  ldr w8,[x0, #0xe4]
02c7ea7c  cbnz w8,0x02c7ea88
02c7ea80  bl 0x029f5bd0
02c7ea84  ldr x0,[x25]
02c7ea88  ldr x8,[x0, #0xb8]
02c7ea8c  ldr x9,[x8, #0x28]
02c7ea90  cbz x9,0x02c7e9e4
02c7ea94  mov w8,wzr
02c7ea98  tbnz w20,#0x1f,0x02c7eac8
02c7ea9c  ldr x9,[x9, #0x40]
02c7eaa0  cbz x9,0x02c7eac8
02c7eaa4  ldr w8,[x9, #0x18]
02c7eaa8  cmp w8,w20
02c7eaac  b.le 0x02c7eac4
02c7eab0  add x8,x9,w20, UXTW  #0x2
02c7eab4  ldr w8,[x8, #0x20]
02c7eab8  cmn w8,#0x1
02c7eabc  cset w8,ne
02c7eac0  b 0x02c7eac8
02c7eac4  mov w8,wzr
02c7eac8  ldr x0,[x22]
02c7eacc  ldr x20,[x19, #0x48]
02c7ead0  strb w8,[x19, #0x6c]
02c7ead4  ldr w9,[x0, #0xe4]
02c7ead8  cbnz w9,0x02c7eae0
02c7eadc  bl 0x029f5bd0
02c7eae0  mov x0,x20
02c7eae4  mov x1,xzr
02c7eae8  mov x2,xzr
02c7eaec  bl 0x057dfa70
02c7eaf0  tbz w0,#0x0,0x02c7eb18
02c7eaf4  ldr x0,[x19, #0x48]
02c7eaf8  cbz x0,0x02c7e9e4
02c7eafc  ldrb w1,[x19, #0x6c]
02c7eb00  ldp x20,x19,[sp, #0x30]
02c7eb04  ldp x22,x21,[sp, #0x20]
02c7eb08  mov x2,xzr
02c7eb0c  ldp x24,x23,[sp, #0x10]
02c7eb10  ldp x30,x25,[sp], #0x40
02c7eb14  b 0x057dff3c
02c7eb18  ldp x20,x19,[sp, #0x30]
02c7eb1c  ldp x22,x21,[sp, #0x20]
02c7eb20  ldp x24,x23,[sp, #0x10]
02c7eb24  ldp x30,x25,[sp], #0x40
02c7eb28  ret
02c7eb2c  bl 0x029f5d04
