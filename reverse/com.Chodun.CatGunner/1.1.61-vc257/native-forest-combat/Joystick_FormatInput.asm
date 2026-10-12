02b87b30  ldr w8,[x0, #0x28]
02b87b34  cmp w8,#0x2
02b87b38  b.eq 0x02b87b4c
02b87b3c  cmp w8,#0x1
02b87b40  b.ne 0x02b87b50
02b87b44  str wzr,[x0, #0x5c]
02b87b48  ret
02b87b4c  str wzr,[x0, #0x58]
02b87b50  ret
