02b9ae54  ldrb w8,[x0, #0x50]
02b9ae58  cbz w8,0x02b9ae60
02b9ae5c  ret
02b9ae60  sub sp,sp,#0x30
02b9ae64  str x30,[sp, #0x10]
02b9ae68  stp x20,x19,[sp, #0x20]
02b9ae6c  adrp x20,0x625b000
02b9ae70  ldr s3,[x0, #0x24]
02b9ae74  mov x19,x0
02b9ae78  ldrb w8,[x20, #0x279]
02b9ae7c  cbnz w8,0x02b9ae9c
02b9ae80  adrp x0,0x5e58000
02b9ae84  ldr x0,[x0, #0xbf8]
02b9ae88  str q3,[sp]
02b9ae8c  bl 0x029f5a50
02b9ae90  ldr q3,[sp]
02b9ae94  mov w8,#0x1
02b9ae98  strb w8,[x20, #0x279]
02b9ae9c  adrp x8,0x5e58000
02b9aea0  fmov s0,0x3f000000
02b9aea4  ldr x8,[x8, #0xbf8]
02b9aea8  ldr s1,[x19, #0x2c]
02b9aeac  ldr x30,[sp, #0x10]
02b9aeb0  ldr x8,[x8]
02b9aeb4  fmul s0,s1,s0
02b9aeb8  ldr x8,[x8, #0xb8]
02b9aebc  ldur d2,[x8, #0xc]
02b9aec0  ldr s1,[x8, #0x14]
02b9aec4  mov w8,#0x1
02b9aec8  str s0,[x19, #0x30]
02b9aecc  fmul v2.2S,v2.2S,v3.S[0x0]
02b9aed0  fmul s1,s3,s1
02b9aed4  strb w8,[x19, #0x50]
02b9aed8  stur d2,[x19, #0x44]
02b9aedc  str s1,[x19, #0x4c]
02b9aee0  ldp x20,x19,[sp, #0x20]
02b9aee4  add sp,sp,#0x30
02b9aee8  ret
