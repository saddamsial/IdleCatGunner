02c54944  str x30,[sp, #-0x20]!
02c54948  stp x20,x19,[sp, #0x10]
02c5494c  cmp w1,#0x7
02c54950  b.hi 0x02c54988
02c54954  mov w19,w1
02c54958  mov x20,x0
02c5495c  bl 0x02c53c8c
02c54960  ldr x8,[x20, #0x30]
02c54964  cbz x8,0x02c54998
02c54968  ldr w9,[x8, #0x18]
02c5496c  cmp w9,w19
02c54970  b.ls 0x02c5499c
02c54974  add x8,x8,w19, UXTW 
02c54978  ldrb w8,[x8, #0x20]
02c5497c  cmp w8,#0x0
02c54980  cset w0,ne
02c54984  b 0x02c5498c
02c54988  mov w0,wzr
02c5498c  ldp x20,x19,[sp, #0x10]
02c54990  ldr x30,[sp], #0x20
02c54994  ret
02c54998  bl 0x029f5cfc
02c5499c  bl 0x029f5d04
