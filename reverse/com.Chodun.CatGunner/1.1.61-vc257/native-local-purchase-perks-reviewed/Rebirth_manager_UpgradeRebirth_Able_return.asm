02c883f0  stp x30,x19,[sp, #-0x10]!
02c883f4  mov x19,x0
02c883f8  bl 0x02c883a0
02c883fc  ldr w8,[x19, #0x4c]
02c88400  cmp w8,#0x1
02c88404  cset w0,lt
02c88408  ldp x30,x19,[sp], #0x10
02c8840c  ret
