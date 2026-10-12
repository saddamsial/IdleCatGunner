02c6d8fc  mov x8,x0
02c6d900  mov w0,wzr
02c6d904  tbnz w1,#0x1f,0x02c6d928
02c6d908  ldr x8,[x8, #0x30]
02c6d90c  cbz x8,0x02c6d928
02c6d910  ldr w9,[x8, #0x18]
02c6d914  cmp w9,w1
02c6d918  b.le 0x02c6d92c
02c6d91c  b.ls 0x02c6d934
02c6d920  add x8,x8,w1, UXTW  #0x2
02c6d924  ldr w0,[x8, #0x20]
02c6d928  ret
02c6d92c  mov w0,wzr
02c6d930  ret
02c6d934  str x30,[sp, #-0x10]!
02c6d938  bl 0x029f5d04
