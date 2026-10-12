02b9f5f0  ldr w8,[x0, #0x30]
02b9f5f4  cmp w8,w1
02b9f5f8  b.le 0x02b9f604
02b9f5fc  mov w0,#0x2
02b9f600  ret
02b9f604  b.ne 0x02b9f61c
02b9f608  str x30,[sp, #-0x10]!
02b9f60c  bl 0x02b9f50c
02b9f610  and w0,w0,#0x1
02b9f614  ldr x30,[sp], #0x10
02b9f618  ret
02b9f61c  mov w0,wzr
02b9f620  ret
