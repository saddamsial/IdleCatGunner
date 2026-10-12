02c30434  str x30,[sp, #-0x10]!
02c30438  ldr x8,[x0, #0x28]
02c3043c  cbz x8,0x02c30460
02c30440  ldr x9,[x0, #0x38]
02c30444  cbz x9,0x02c30460
02c30448  ldr w8,[x8, #0x18]
02c3044c  ldr w9,[x9, #0x18]
02c30450  cmp w8,w9
02c30454  csel w0,w8,w9,lt
02c30458  ldr x30,[sp], #0x10
02c3045c  ret
02c30460  bl 0x029f5cfc
