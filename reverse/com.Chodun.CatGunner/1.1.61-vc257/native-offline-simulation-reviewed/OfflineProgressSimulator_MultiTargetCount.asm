02c08d18  cbz x0,0x02c08d68
02c08d1c  ldr w8,[x0, #0x18]
02c08d20  sub w9,w8,#0x4
02c08d24  cmp w9,#0x3
02c08d28  b.cc 0x02c08d40
02c08d2c  sub w9,w8,#0x1
02c08d30  cmp w9,#0x2
02c08d34  b.cs 0x02c08d48
02c08d38  mov w0,#0xa
02c08d3c  ret
02c08d40  mov w0,#0x5
02c08d44  ret
02c08d48  cmp w8,#0x3
02c08d4c  b.ne 0x02c08d60
02c08d50  ldr w8,[x0, #0x44]
02c08d54  cmp w8,#0x1
02c08d58  csinc w0,w8,wzr,gt
02c08d5c  ret
02c08d60  mov w0,#0x1
02c08d64  ret
02c08d68  str x30,[sp, #-0x10]!
02c08d6c  bl 0x029f5cfc
