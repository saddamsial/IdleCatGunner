02c31464  str x30,[sp, #-0x20]!
02c31468  stp x20,x19,[sp, #0x10]
02c3146c  adrp x20,0x625c000
02c31470  mov x19,x0
02c31474  ldrb w8,[x20, #0x46]
02c31478  tbnz w8,#0x0,0x02c31490
02c3147c  adrp x0,0x5e59000
02c31480  ldr x0,[x0, #0x50]
02c31484  bl 0x029f5a50
02c31488  mov w8,#0x1
02c3148c  strb w8,[x20, #0x46]
02c31490  cbz x19,0x02c31568
02c31494  ldr w8,[x19, #0x10]
02c31498  cmp w8,#0x5
02c3149c  b.le 0x02c314d0
02c314a0  cmp w8,#0x9
02c314a4  b.lt 0x02c314f0
02c314a8  cmp w8,#0xa
02c314ac  b.gt 0x02c31510
02c314b0  cmp w8,#0x9
02c314b4  b.eq 0x02c31530
02c314b8  cmp w8,#0xa
02c314bc  b.ne 0x02c31550
02c314c0  ldp x20,x19,[sp, #0x10]
02c314c4  mov x0,xzr
02c314c8  ldr x30,[sp], #0x20
02c314cc  b 0x02be13a8
02c314d0  subs w8,w8,#0x3
02c314d4  b.cc 0x02c31500
02c314d8  cmp w8,#0x3
02c314dc  b.cs 0x02c31550
02c314e0  ldp x20,x19,[sp, #0x10]
02c314e4  mov x0,xzr
02c314e8  ldr x30,[sp], #0x20
02c314ec  b 0x02be11f8
02c314f0  ldp x20,x19,[sp, #0x10]
02c314f4  mov x0,xzr
02c314f8  ldr x30,[sp], #0x20
02c314fc  b 0x02be1168
02c31500  ldp x20,x19,[sp, #0x10]
02c31504  mov x0,xzr
02c31508  ldr x30,[sp], #0x20
02c3150c  b 0x02be1288
02c31510  cmp w8,#0xb
02c31514  b.eq 0x02c31540
02c31518  cmp w8,#0xc
02c3151c  b.ne 0x02c31550
02c31520  ldp x20,x19,[sp, #0x10]
02c31524  mov x0,xzr
02c31528  ldr x30,[sp], #0x20
02c3152c  b 0x02be14c8
02c31530  ldp x20,x19,[sp, #0x10]
02c31534  mov x0,xzr
02c31538  ldr x30,[sp], #0x20
02c3153c  b 0x02be1318
02c31540  ldp x20,x19,[sp, #0x10]
02c31544  mov x0,xzr
02c31548  ldr x30,[sp], #0x20
02c3154c  b 0x02be1438
02c31550  adrp x8,0x5e59000
02c31554  ldr x8,[x8, #0x50]
02c31558  ldp x20,x19,[sp, #0x10]
02c3155c  ldr x0,[x8]
02c31560  ldr x30,[sp], #0x20
02c31564  ret
02c31568  bl 0x029f5cfc
