02cad6ac  ldr w8,[x1]
02cad6b0  cmp w8,#0x4
02cad6b4  b.ge 0x02cad6c0
02cad6b8  mov x0,x1
02cad6bc  b 0x02cad6c8
02cad6c0  str wzr,[x1]
02cad6c4  ldr w8,[x0]
02cad6c8  add w8,w8,#0x1
02cad6cc  str w8,[x0]
02cad6d0  ret
