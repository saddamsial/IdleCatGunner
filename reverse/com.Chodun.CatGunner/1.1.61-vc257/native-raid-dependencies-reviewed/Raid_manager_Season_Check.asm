02c548dc  stp x30,x21,[sp, #-0x20]!
02c548e0  stp x20,x19,[sp, #0x10]
02c548e4  adrp x20,0x625c000
02c548e8  adrp x21,0x5e5e000
02c548ec  mov x19,x0
02c548f0  ldrb w8,[x20, #0x1a7]
02c548f4  ldr x21,[x21, #0x70]
02c548f8  tbnz w8,#0x0,0x02c54910
02c548fc  adrp x0,0x5e5e000
02c54900  ldr x0,[x0, #0x70]
02c54904  bl 0x029f5a50
02c54908  mov w8,#0x1
02c5490c  strb w8,[x20, #0x1a7]
02c54910  ldr x0,[x21]
02c54914  ldr w8,[x0, #0xe4]
02c54918  cbnz w8,0x02c54920
02c5491c  bl 0x029f5bd0
02c54920  bl 0x02c549a0
02c54924  ldr w8,[x19, #0x78]
02c54928  cmp w8,w0
02c5492c  b.eq 0x02c54938
02c54930  stp wzr,wzr,[x19, #0x7c]
02c54934  str w0,[x19, #0x78]
02c54938  ldp x20,x19,[sp, #0x10]
02c5493c  ldp x30,x21,[sp], #0x20
02c54940  ret
