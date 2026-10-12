02ba4ba8  stp x30,x21,[sp, #-0x20]!
02ba4bac  stp x20,x19,[sp, #0x10]
02ba4bb0  adrp x20,0x625b000
02ba4bb4  adrp x21,0x5e5d000
02ba4bb8  mov x19,x0
02ba4bbc  ldrb w8,[x20, #0xa42]
02ba4bc0  ldr x21,[x21, #0x3c0]
02ba4bc4  tbnz w8,#0x0,0x02ba4bdc
02ba4bc8  adrp x0,0x5e5d000
02ba4bcc  ldr x0,[x0, #0x3c0]
02ba4bd0  bl 0x029f5a50
02ba4bd4  mov w8,#0x1
02ba4bd8  strb w8,[x20, #0xa42]
02ba4bdc  ldr x0,[x21]
02ba4be0  ldr w8,[x0, #0xe4]
02ba4be4  cbnz w8,0x02ba4bec
02ba4be8  bl 0x029f5bd0
02ba4bec  mov x0,xzr
02ba4bf0  bl 0x02c25b48
02ba4bf4  ldr x8,[x19, #0x20]
02ba4bf8  str x0,[x19, #0x70]
02ba4bfc  stp xzr,xzr,[x19, #0x50]
02ba4c00  cbz x8,0x02ba4c54
02ba4c04  ldr w9,[x8, #0x18]
02ba4c08  cmp w9,#0x1
02ba4c0c  b.lt 0x02ba4c3c
02ba4c10  bic w10,w9,w9, ASR #0x1f
02ba4c14  mov w11,wzr
02ba4c18  cmp w9,w11
02ba4c1c  b.eq 0x02ba4c58
02ba4c20  add x12,x8,w11, SXTW  #0x3
02ba4c24  ldr x12,[x12, #0x20]
02ba4c28  cbz x12,0x02ba4c54
02ba4c2c  add w11,w11,#0x1
02ba4c30  strh wzr,[x12, #0x24]
02ba4c34  cmp w10,w11
02ba4c38  b.ne 0x02ba4c18
02ba4c3c  mov x0,x19
02ba4c40  bl 0x02ba4028
02ba4c44  mov x0,x19
02ba4c48  ldp x20,x19,[sp, #0x10]
02ba4c4c  ldp x30,x21,[sp], #0x20
02ba4c50  b 0x02ba3bb0
02ba4c54  bl 0x029f5cfc
02ba4c58  bl 0x029f5d04
