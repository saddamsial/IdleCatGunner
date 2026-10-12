02c41b8c  str d10,[sp, #-0x30]!
02c41b90  stp d9,d8,[sp, #0x8]
02c41b94  str x30,[sp, #0x18]
02c41b98  stp x20,x19,[sp, #0x20]
02c41b9c  adrp x20,0x625c000
02c41ba0  mov x19,x0
02c41ba4  ldrb w8,[x20, #0xb8]
02c41ba8  tbnz w8,#0x0,0x02c41bc0
02c41bac  adrp x0,0x5e63000
02c41bb0  ldr x0,[x0, #0x1d8]
02c41bb4  bl 0x029f5a50
02c41bb8  mov w8,#0x1
02c41bbc  strb w8,[x20, #0xb8]
02c41bc0  ldr x8,[x19, #0xf0]
02c41bc4  cbz x8,0x02c41c58
02c41bc8  ldr x1,[x8, #0x18]
02c41bcc  cbz x1,0x02c41c58
02c41bd0  mov w0,wzr
02c41bd4  mov x2,xzr
02c41bd8  bl 0x057d5614
02c41bdc  ldr x8,[x19, #0xf0]
02c41be0  cbz x8,0x02c41c74
02c41be4  ldr w9,[x8, #0x18]
02c41be8  cmp w0,w9
02c41bec  b.cs 0x02c41c78
02c41bf0  add x8,x8,w0, SXTW  #0x3
02c41bf4  ldr x0,[x8, #0x20]
02c41bf8  cbz x0,0x02c41c74
02c41bfc  mov x1,xzr
02c41c00  bl 0x057eed98
02c41c04  adrp x19,0x5e63000
02c41c08  fmov s8,s0
02c41c0c  fmov s10,s1
02c41c10  ldr x19,[x19, #0x1d8]
02c41c14  fmov s9,s2
02c41c18  ldr x0,[x19]
02c41c1c  ldr w8,[x0, #0xe4]
02c41c20  cbnz w8,0x02c41c2c
02c41c24  bl 0x029f5bd0
02c41c28  ldr x0,[x19]
02c41c2c  fmov s1,0x40000000
02c41c30  ldr x8,[x0, #0xb8]
02c41c34  ldp s3,s2,[x8, #0x38]
02c41c38  fsub s0,s1,s10
02c41c3c  fdiv s0,s0,s2
02c41c40  ldr s2,[x8, #0x40]
02c41c44  fmul s3,s0,s3
02c41c48  fmul s2,s0,s2
02c41c4c  fadd s0,s8,s3
02c41c50  fadd s2,s9,s2
02c41c54  b 0x02c41c60
02c41c58  mov x0,x19
02c41c5c  bl 0x02c424cc
02c41c60  ldp x20,x19,[sp, #0x20]
02c41c64  ldr x30,[sp, #0x18]
02c41c68  ldp d9,d8,[sp, #0x8]
02c41c6c  ldr d10,[sp], #0x30
02c41c70  ret
02c41c74  bl 0x029f5cfc
02c41c78  bl 0x029f5d04
