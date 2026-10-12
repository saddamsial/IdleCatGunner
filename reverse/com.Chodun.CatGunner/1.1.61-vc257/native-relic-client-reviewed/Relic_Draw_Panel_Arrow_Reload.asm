02c30850  stp x30,x19,[sp, #-0x10]!
02c30854  ldrb w8,[x0, #0x78]
02c30858  mov x19,x0
02c3085c  cbz w8,0x02c30868
02c30860  ldr x0,[x19, #0x48]
02c30864  b 0x02c30878
02c30868  ldr w8,[x19, #0x74]
02c3086c  ldr x0,[x19, #0x48]
02c30870  cmp w8,#0x1
02c30874  b.gt 0x02c308a0
02c30878  cbz x0,0x02c308cc
02c3087c  mov w1,wzr
02c30880  mov x2,xzr
02c30884  bl 0x057dff3c
02c30888  mov w1,wzr
02c3088c  ldr x0,[x19, #0x50]
02c30890  cbz x0,0x02c308cc
02c30894  mov x2,xzr
02c30898  ldp x30,x19,[sp], #0x10
02c3089c  b 0x057dff3c
02c308a0  cbz x0,0x02c308cc
02c308a4  ldr w8,[x19, #0x70]
02c308a8  mov x2,xzr
02c308ac  cmp w8,#0x0
02c308b0  cset w1,gt
02c308b4  bl 0x057dff3c
02c308b8  ldp w9,w8,[x19, #0x70]
02c308bc  sub w8,w8,#0x1
02c308c0  cmp w9,w8
02c308c4  cset w1,lt
02c308c8  b 0x02c3088c
02c308cc  bl 0x029f5cfc
