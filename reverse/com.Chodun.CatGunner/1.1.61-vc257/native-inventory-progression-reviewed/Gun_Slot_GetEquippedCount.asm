02c77b94  str x30,[sp, #-0x20]!
02c77b98  stp x20,x19,[sp, #0x10]
02c77b9c  adrp x19,0x625c000
02c77ba0  adrp x20,0x5e5d000
02c77ba4  ldrb w8,[x19, #0x30c]
02c77ba8  ldr x20,[x20, #0xd40]
02c77bac  tbnz w8,#0x0,0x02c77bc4
02c77bb0  adrp x0,0x5e5d000
02c77bb4  ldr x0,[x0, #0xd40]
02c77bb8  bl 0x029f5a50
02c77bbc  mov w8,#0x1
02c77bc0  strb w8,[x19, #0x30c]
02c77bc4  ldr x8,[x20]
02c77bc8  ldr x8,[x8, #0xb8]
02c77bcc  ldr x8,[x8]
02c77bd0  cbz x8,0x02c77c2c
02c77bd4  ldr x10,[x8, #0x28]
02c77bd8  cbz x10,0x02c77c2c
02c77bdc  ldr x9,[x10, #0x18]
02c77be0  cmp w9,#0x1
02c77be4  b.lt 0x02c77c18
02c77be8  bic w8,w9,w9, ASR #0x1f
02c77bec  mov w0,wzr
02c77bf0  and x9,x9,#0xffffffff
02c77bf4  add x10,x10,#0x20
02c77bf8  cbz x9,0x02c77c28
02c77bfc  ldr w11,[x10], #0x4
02c77c00  sub x8,x8,#0x1
02c77c04  sub x9,x9,#0x1
02c77c08  cmn w11,#0x1
02c77c0c  cinc w0,w0,ne
02c77c10  cbnz x8,0x02c77bf8
02c77c14  b 0x02c77c1c
02c77c18  mov w0,wzr
02c77c1c  ldp x20,x19,[sp, #0x10]
02c77c20  ldr x30,[sp], #0x20
02c77c24  ret
02c77c28  bl 0x029f5d04
02c77c2c  bl 0x029f5cfc
